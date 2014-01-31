<?php

/**
 * @package     Vironit.touchstone.template
 * @subpackage  Module
 * @copyright   (C) 2013 http://vk.com/id13245451
 * @license     NO LICENSE
 */

// No direct access to this file
defined('_JEXEC') or die;

$db = JFactory::getDBO();
$query = 'SELECT `id`,`menu_page_title_rus`, `vironit_menu_id`, `active` FROM #__vironit_menu_pages WHERE `active`=1 ';
$db->setQuery( $query );
$db->query();
$menuPages = $db->loadAssocList();
//		h($menuPages, '$menuPages');

$db = JFactory::getDBO();
$query = 'SELECT `id`,`menu_title`,`menu_title_rus`, `active` FROM #__vironit_menus  WHERE `active`=1 ';
$db->setQuery( $query );
$db->query();
$vironitMenus = $db->loadAssocList();










// ===========================  Формирование Левого Меню по новым правилам ==============================
$menuItem = JRequest::getVar('address', '');
$menuItemPage = JRequest::getVar('page', '');
$entityId = '0';
$type = 'main_page';
if($menuItemPage !== '') {
    $entityId = (string)(int)$menuItemPage;
    $type = 'page';
} else {
    if($menuItem !== '') {
        $entityId = (string)(int)$menuItem;
        $type = 'category';
    }
}

$db = JFactory::getDBO();
$query = 'SELECT `id`,`type`,`id_entity`,`id_left_menu_block` FROM #__vironit_entity_leftmenublock  WHERE `type`="' . $type . '" AND `id_entity`=' . $entityId;
//e($query, '$query');
$db->setQuery( $query );
$db->query();
$items = $db->loadAssocList();
//e($items, '$items');
$ids = array();
foreach( $items as $item ) {
    if(isset($item['id_left_menu_block'])) {
        $ids[] = $item['id_left_menu_block'];
    }
}
foreach ($ids as $k => $id ) {
    $ids [ $k ] = (int) $ids [ $k ];
}
$itemsIdsStr = getGluedStr($ids);

//e($itemsIdsStr, '$itemsIdsStr');
$_leftMenuBlocks = array();
if ( $itemsIdsStr !== NULL ) {
    $query = 'SELECT `id`,`left_menu_block_name_rus`,`textarea`,`textarea_name` FROM #__vironit_left_menu_blocks WHERE `id` IN ( ' . $itemsIdsStr . ')';
    $db->setQuery( $query );
    $db->query();
    $leftMenuBlocks = $db->loadAssocList();
    foreach ( $leftMenuBlocks as $k => $leftMenuBlock ) {
        if(isset($leftMenuBlock['id'])) {
            $_leftMenuBlocks[$leftMenuBlock['id']] = $leftMenuBlock;
            $_leftMenuBlocks[$leftMenuBlock['id']]['items'] = array();
        }
    }
//    h($_leftMenuBlocks, '$_leftMenuBlocks');

    $query = 'SELECT `id`,`left_menu_block_id`,`left_menu_block_item_name_rus`,`left_menu_block_item_link`,`order`
                FROM #__vironit_left_menu_block_items WHERE `left_menu_block_id` IN ( ' . $itemsIdsStr . ') ORDER BY `order` ASC';
    $db->setQuery( $query );
    $db->query();
    $leftMenuBlockItems = $db->loadAssocList();

    foreach ( $leftMenuBlockItems as $key => $leftMenuBlockItem ) {
        if(isset($leftMenuBlockItem['left_menu_block_id'])) {
            if(isset($_leftMenuBlocks[$leftMenuBlockItem['left_menu_block_id']])) {
                $_leftMenuBlocks[$leftMenuBlockItem['left_menu_block_id']]['items'][] = $leftMenuBlockItem;
            }
        }
    }

}





// *************************************  Блоки Текстовые **************************************
$query = 'SELECT `id`,`type`,`id_entity`,`id_textentity` FROM #__vironit_entity_lefttextentity  WHERE `type`="' . $type . '" AND `id_entity`=' . $entityId;
$db->setQuery( $query );
$db->query();
$itemsEntities = $db->loadAssocList();

$idsEntities = array();
foreach( $itemsEntities as $itemEntity ) {
    if(isset($itemEntity['id_textentity'])) {
        $idsEntities[] = $itemEntity['id_textentity'];
    }
}
foreach ($idsEntities as $k => $id ) {
    $idsEntities [ $k ] = (int) $idsEntities [ $k ];
}
$itemsEntitiesIdsStr = getGluedStr($idsEntities);

$query = 'SELECT `id`,`textentity_name`,`textentity_content` FROM #__vironit_left_menu_textentities WHERE `id` IN ( ' . $itemsEntitiesIdsStr . ' ) ';
$db->setQuery( $query );
$db->query();
$leftMenuEntities = $db->loadAssocList();
// *************************************  [END] Блоки Текстовые **************************************

// ===========================  [END] Формирование Левого Меню по новым правилам ==============================
?>
<?php if (  ( is_array($_leftMenuBlocks) && key($_leftMenuBlocks) !== NULL ) ||
            ( is_array($leftMenuEntities) && key($leftMenuEntities) !== NULL )
        ) { ?>
<div class="sidebarleft">
    <?php if (is_array($_leftMenuBlocks) && key($_leftMenuBlocks) !== NULL ) { ?>
        <?php foreach (($_leftMenuBlocks) as $_leftMenuBlock) { ?>
            <?php if (
                    isset($_leftMenuBlock['id']) && is_string($_leftMenuBlock['id'])
                    &&
                    isset($_leftMenuBlock['left_menu_block_name_rus']) && is_string(($_leftMenuBlock['left_menu_block_name_rus']))
                    &&
                    isset($_leftMenuBlock['items']) && is_array(($_leftMenuBlock['items']))
                ) { ?>
                    <h4>
                        <!--
                        <a href="?address=<?php echo $_leftMenuBlock['id'] ?>">
                        </a>
                        -->
                        <?php echo _t($_leftMenuBlock['left_menu_block_name_rus']); ?>
                    </h4>
                    <ul class="submenu">
                        <?php foreach (($_leftMenuBlock['items']) as $leftMenuBlockItem ) { ?>
                            <?php
                                if (    isset($leftMenuBlockItem['id']) && is_string($leftMenuBlockItem['id']) &&
                                        isset($leftMenuBlockItem['left_menu_block_id']) && is_string($leftMenuBlockItem['left_menu_block_id']) &&
                                        isset($leftMenuBlockItem['left_menu_block_item_name_rus']) && is_string($leftMenuBlockItem['left_menu_block_item_name_rus']) &&
                                        isset($leftMenuBlockItem['left_menu_block_item_link']) && is_string($leftMenuBlockItem['left_menu_block_item_link']) &&
                                        isset($leftMenuBlockItem['order']) && is_string($leftMenuBlockItem['order'])
                                ) { ?>
                              <li>
                                <a href="<?php echo $leftMenuBlockItem['left_menu_block_item_link'] ?>"
                                ><?php echo _t($leftMenuBlockItem['left_menu_block_item_name_rus']); ?></a>
                            </li>
                            <?php } ?>
                        <?php } ?>
                    </ul>
                    <div class="sidebardivider"></div>

                    <?php if(false) { ?>
                        <h4><?php echo $_leftMenuBlock['textarea_name']; ?></h4>
                        <?php echo $_leftMenuBlock['textarea']; ?>
                        <div class="sidebardivider"></div>
                    <?php } ?>

            <?php } ?>
        <?php } ?>
    <?php } ?>

    <?php if ( is_array($leftMenuEntities) && key($leftMenuEntities) !== NULL ) { ?>
        <?php foreach (($leftMenuEntities) as $leftMenuEntity) { ?>
            <?php if(isset($leftMenuEntity['textentity_name']) && isset($leftMenuEntity['textentity_content'])) { ?>
                <?php if(($leftMenuEntity['textentity_name'] !== '') && ($leftMenuEntity['textentity_content'] !== '')) { ?>
                    <h4><?php echo $leftMenuEntity['textentity_name']; ?></h4>
                    <?php echo $leftMenuEntity['textentity_content']; ?>
                    <div class="sidebardivider"></div>
                <?php } ?>
            <?php } ?>
        <?php } ?>
    <?php } ?>
</div>
<?php } ?>
<?php
// =========================== [END]  Формирование Левого Меню по новым правилам =========================
?>




<!-- Формирование менюшки по старым правилам -->
<?php if(false) { ?>
    <div class="sidebarleft">
            <?php if (is_array($vironitMenus)) { ?>
                <?php foreach (($vironitMenus) as $vironitMenu) { ?>
                    <?php
                    if (isset($vironitMenu['id']) &&
                            isset($vironitMenu['menu_title']) &&
                            isset($vironitMenu['menu_title_rus']) &&
                            isset($vironitMenu['active'])
                    ) {
                        ?>
                        <h4>
                            <!--
                            <a href="?address=<?php echo $vironitMenu['id'] ?>">
                            </a>
                            -->
                            <?php echo $vironitMenu['menu_title_rus']; ?>
                        </h4>
                        <ul class="submenu">
                            <?php if (is_array($menuPages)) { ?>
                                <?php foreach (($menuPages) as $menuPage) { ?>
                                    <?php
                                    if (isset($menuPage['id']) &&
                                            isset($menuPage['menu_page_title_rus']) &&
                                            isset($menuPage['vironit_menu_id']) &&
                                            isset($menuPage['active'])
                                    ) {
                                        ?>
                                        <?php if ($menuPage['vironit_menu_id'] === $vironitMenu['id']) { ?>
                                            <li>
                                                <a href="?address=<?php echo $vironitMenu['id'] ?>&page=<?php echo $menuPage['id']; ?>"><?php echo $menuPage['menu_page_title_rus']; ?></a>
                                            </li>
                                <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                        </ul>
                        <div class="sidebardivider"></div>
                <?php } ?>
                <?php } ?>
            <?php } ?>
        </div>
<?php } ?>

<?php
defined('_JEXEC') or die('Restricted access');

// import Joomla modelitem library
jimport('joomla.application.component.modelitem');

class VironittouchstonecomponentModelNewleftmenublock extends JModelItem {

    public function __construct($config) {
        parent::__construct($config);
    }

    public function getLeftMenuBlockContentThis($leftMenuBlockId) {
        $result = NULL;
        $_leftMenuBlocks = $this->getLeftMenuBlockContent((int)$leftMenuBlockId);
        if(is_array($_leftMenuBlocks)) {
            $current = current($_leftMenuBlocks);
            if($current !== false) {
                $result = $current;
            }
        }
        return $result;
    }
    
    
    public function getLeftMenuBlockContent($itemsIdsStr) {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`left_menu_block_name_rus`,`textarea`,`textarea_name` FROM #__vironit_left_menu_blocks WHERE `id` IN ( ' . $itemsIdsStr . ' ) ';
        $db->setQuery( $query );
        $db->query();
        $leftMenuBlocks = $db->loadAssocList();
        
        $_leftMenuBlocks = array();
        if ( is_array($leftMenuBlocks) ) {
        foreach ( $leftMenuBlocks as $k => $leftMenuBlock ) {
            if(isset($leftMenuBlock['id'])) {
                $_leftMenuBlocks[$leftMenuBlock['id']] = $leftMenuBlock;
                $_leftMenuBlocks[$leftMenuBlock['id']]['items'] = array();
            }
        }
        }

        $query = 'SELECT `id`,`left_menu_block_id`,`left_menu_block_item_name_rus`,`left_menu_block_item_link`,`order`
                    FROM #__vironit_left_menu_block_items WHERE `left_menu_block_id` IN ( ' . $itemsIdsStr . ') ORDER BY `order` ASC';
        $db->setQuery( $query );
        $db->query();
        $leftMenuBlockItems = $db->loadAssocList();

//        e($query, '$query');
//        h($leftMenuBlockItems, '$leftMenuBlockItems');
        

        if(is_array($leftMenuBlockItems)) {
        foreach ( $leftMenuBlockItems as $key => $leftMenuBlockItem ) {
            if(isset($leftMenuBlockItem['left_menu_block_id'])) {
                if(isset($_leftMenuBlocks[$leftMenuBlockItem['left_menu_block_id']])) {
                    $_leftMenuBlocks[$leftMenuBlockItem['left_menu_block_id']]['items'][] = $leftMenuBlockItem;
                }
            }
        }
        }
        return $_leftMenuBlocks;
    }

}

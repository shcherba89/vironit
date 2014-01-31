<?php

/**
 * @package     Joomla.Tutorials
 * @subpackage  Module
 * @copyright   (C) 2012 http://jomla-code.ru
 * @license     License GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die;

//$document = JFactory::getDocument();
//$document->addScript('/modules/mod_topmenu/mod_topmenu.js');

$address = JRequest::getVar('address', NULL);

$db = JFactory::getDBO();
$query = 'SELECT `id`,`menu_page_title_rus`, `vironit_menu_id`, `active` FROM #__vironit_menu_pages WHERE `active`=1 AND `show_on_topmenu`=1 ';
$db->setQuery( $query );
$db->query();
$menuPages = $db->loadAssocList();
//e($menuPages, '$menuPages');
//h($menuPages, '$menuPages');

$db = JFactory::getDBO();
$query = 'SELECT `id`,`menu_title`,`menu_title_rus`, `active` FROM #__vironit_menus  WHERE `active`=1 ';
$db->setQuery( $query );
$db->query();
$vironitMenus = $db->loadAssocList();
//e($vironitMenus, '$vironitMenus');
//h($vironitMenus, '$vironitMenus');
?>

<script type="text/javascript">
    $(document).ready(function(){ 
        $("ul.sf-menu").supersubs({ 
            minWidth:    10,   // minimum width of sub-menus in em units 
            maxWidth:    30,   // maximum width of sub-menus in em units 
            extraWidth:  1     // extra width can ensure lines don't sometimes turn over 
                               // due to slight rounding differences and font-family 
        }).superfish();  // call supersubs first, then superfish, so that subs are 
                         // not display:none when measuring. Call before initialising 
                         // containing tabs for same reason. 
    });
</script>

<div id="navigation-container">
<ul class="sf-menu">

    
    <li class="current">
        <a href="/"><?php echo _t('Домой'); ?></a>
        <ul style="float: none; width: 10em; display: none; visibility: hidden;"></ul>
    </li>

	<?php if(is_array($vironitMenus)) { ?>
	<?php foreach(($vironitMenus) as $vironitMenu) { ?>
		<?php 
		//e($vironitMenu, '$vironitMenu');
		if(isset($vironitMenu['id'])
				&&
				/*
				isset($vironitMenu['menu_title'])
				&&*/
				isset($vironitMenu['menu_title_rus'])
				&&
				isset($vironitMenu['active'])
				) { ?>
			<li <?php echo ($address === $vironitMenu['id']) ? 'class="current"': ''; ?> >
				<a href="?address=<?php echo $vironitMenu['id'] ?>"><?php echo _t($vironitMenu['menu_title_rus']); ?></a>
				<ul>
				<?php if(is_array($menuPages)) { ?>
					<?php foreach(($menuPages) as $menuPage) { ?>
						<?php if(isset($menuPage['id'])
								&&
								isset($menuPage['menu_page_title_rus'])
								&&
								isset($menuPage['vironit_menu_id'])
								&&
								isset($menuPage['active'])
								) { ?>
								<?php if( $menuPage['vironit_menu_id'] === $vironitMenu['id'] ) { ?>
										<li>
											<a href="?address=<?php echo $vironitMenu['id'] ?>&page=<?php echo $menuPage['id']; ?>"><?php echo _t($menuPage['menu_page_title_rus']); ?></a>
										</li>
								<?php } ?>
							<?php } ?>
						<?php } ?>
					<?php } ?>
				</ul>
			</li>
		<?php } ?>
	<?php } ?>
	<?php } ?>
</ul>

    
<!--
<div id="search-navigation">
    <input type="text" id="searchbox" value="Search..." name="s" onclick="if(this.value == 'Search...') this.value='';" onblur="if(this.value.length == 0) this.value= 'Search...';" />
    <input type="image" src="/templates/vironit-touchstone/css/images/search.gif" id="searchsubmit"  alt="Search" />
</div>
-->
</div><!-- close #navigation-container -->
<div class="navigation-base"></div>

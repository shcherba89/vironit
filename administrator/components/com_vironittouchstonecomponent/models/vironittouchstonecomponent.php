<?php

//JTable::addIncludePath( JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_awscontent' . DS );
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla modelitem library
jimport('joomla.application.component.modelitem');

class VironittouchstonecomponentModelVironittouchstonecomponent extends JModelItem {

    private $_path = './components/com_vironittouchstonecomponent/content';

    public function __construct($config) {
        parent::__construct($config);
    }

    public function getAllMenuItemPages() {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`vironit_menu_id`,`menu_page_title_rus`,`active` FROM #__vironit_menu_pages ';
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }

    public function getMenuItemPages($menuItemId) {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`vironit_menu_id`,`menu_page_title_rus`,`active`,`show_on_topmenu` FROM #__vironit_menu_pages WHERE `vironit_menu_id`=' . strval(intval($menuItemId));
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }

    private function getPathnamePostfix($contentLanguage) {
		$postfix = '';
		if(
			is_string($contentLanguage)
		) {
			switch($contentLanguage) {
				case 'rus':
					break;
				case 'eng':
					$postfix = '_eng';
					break;
				default:
					break;
			}
		}
		return $postfix;
	}

    public function readContentPage($menuItemPage, $contentLanguage) {
        $htmlContent = '';
		$postfix = $this->getPathnamePostfix($contentLanguage);
        $fileName = $this->_path . '/pages/' . $menuItemPage . $postfix . '.html';
        if (file_exists($fileName)) {
            $htmlContent = file_get_contents($fileName);
        }
        return $htmlContent;
    }

	
    public function saveContentPage($menuItemPage, $htmlContent, $contentLanguage) {
	
        if (is_int($menuItemPage) && !( is_array($htmlContent) || is_array($htmlContent) )
	) {
			$postfix = $this->getPathnamePostfix($contentLanguage);
            $fileName = $this->_path . '/pages/' . $menuItemPage . $postfix . '.html';
            if (file_exists($fileName)) {
                unlink($fileName);
            }
            toLog($htmlContent, $fileName);
        }
    }

    public function readContentDefaultCategory($menuItem, $contentLanguage) {
        $htmlContent = '';
		$postfix = $this->getPathnamePostfix($contentLanguage);
        $fileName = $this->_path . '/address/' . $menuItem . $postfix . '.html';
        if (file_exists($fileName)) {
            $htmlContent = file_get_contents($fileName);
        }
        return $htmlContent;
    }

    public function saveContentDefaultCategory($menuItem, $htmlContent, $contentLanguage) {
        if (is_int($menuItem) && !( is_array($htmlContent) || is_array($htmlContent) )) {
			$postfix = $this->getPathnamePostfix($contentLanguage);
            $fileName = $this->_path . '/address/' . $menuItem . $postfix . '.html';
            if (file_exists($fileName)) {
                unlink($fileName);
            }
            toLog($htmlContent, $fileName);
        }
    }

    public function saveContentMainPage($htmlContent, $contentLanguage) {
        if (!( is_array($htmlContent) || is_array($htmlContent) )) {
			$postfix = $this->getPathnamePostfix($contentLanguage);
            $fileName = $this->_path . '/index' . $postfix . '.html';
            if (file_exists($fileName)) {
                unlink($fileName);
            }
            toLog($htmlContent, $fileName);
        }
    }

    public function readContentMainPage($contentLanguage) {
        $htmlContent = '';
		$postfix = $this->getPathnamePostfix($contentLanguage);
        $fileName = $this->_path . '/index' . $postfix . '.html';
        if (file_exists($fileName)) {
            $htmlContent = file_get_contents($fileName);
        }
        return $htmlContent;
    }

    public function addCategory($categoryName) {
        $db = JFactory::getDBO();
        $query = 'INSERT INTO #__vironit_menus (`menu_title_rus`, `active`) VALUES ( ' . $db->quote($categoryName) . ', "0")';
        $db->setQuery($query);
        $result = $db->query();
        return $result;
    }

    public function removePages( array $removePagesIds = array()) {
        $db = JFactory::getDBO();
        $resultRemove = false;
        $ids = array();
        $idsStr = '';
        $tableName = '#__vironit_menu_pages';
        $valuesStr = '';
        foreach ( $removePagesIds as $k => $removePageId ) {
            if((int)$removePagesIds [ $k ] > 0 ) {
                $ids[] = (int)$removePagesIds [ $k ];
            }
        }
        if ( key($ids) !== NULL ) {
            $idsStr = getGluedStr($ids);
            if ( $idsStr !== NULL ) {
                $queryDelete = 'DELETE FROM ' . $tableName . ' WHERE `id` IN (' . $idsStr . ' ) ';
                $db->setQuery($queryDelete);
                $resultRemove = $db->query();
            }
        }
        return $resultRemove;
    }

    public function removeLeftMenuEntities( array $removeLeftMenuEntitiesIds = array()) {
        $db = JFactory::getDBO();
        $resultRemove = false;
        $ids = array();
        $idsStr = '';
        $tableName = '#__vironit_left_menu_textentities';
        $valuesStr = '';
        foreach ( $removeLeftMenuEntitiesIds as $k => $removeLeftMenuEntityId ) {
            if((int)$removeLeftMenuEntitiesIds [ $k ] > 0 ) {
                $ids[] = (int)$removeLeftMenuEntitiesIds [ $k ];
            }
        }
        if ( key($ids) !== NULL ) {
            $idsStr = getGluedStr($ids);
            if ( $idsStr !== NULL ) {
                $queryDelete = 'DELETE FROM ' . $tableName . ' WHERE `id` IN (' . $idsStr . ' ) ';
                $db->setQuery($queryDelete);
                $resultRemove = $db->query();
            }
        }
        return $resultRemove;
    }

    
    
    
    public function removeLeftMenuBlocks( array $removeLeftMenuBlocksIds = array()) {
        $db = JFactory::getDBO();
        $resultRemove = false;
        $ids = array();
        $idsStr = '';
        $tableName = '#__vironit_left_menu_blocks';

        $valuesStr = '';
        foreach ( $removeLeftMenuBlocksIds as $k => $removeLeftMenuBlocksId ) {
            if((int)$removeLeftMenuBlocksIds [ $k ] > 0 ) {
                $ids[] = (int)$removeLeftMenuBlocksIds [ $k ];
            }
        }
        if ( key($ids) !== NULL ) {
            $idsStr = getGluedStr($ids);
            if ( $idsStr !== NULL ) {
                $queryDelete = 'DELETE FROM ' . $tableName . ' WHERE `id` IN (' . $idsStr . ' ) ';
                $db->setQuery($queryDelete);
                $resultRemove = $db->query();
            }
        }
        return $resultRemove;
    }

    public function assignLeftMenuEntities($menuItem, $menuItemPage, $assignEntities) {

        if(is_array($assignEntities) && is_string($menuItem) && is_string($menuItemPage)) {

            $tableName = '#__vironit_entity_lefttextentity';
            $resultAdd = false;
            $db = JFactory::getDBO();
            $query = 'INSERT INTO ' . $tableName . ' ( `type`,`id_entity`,`id_textentity` ) VALUES ';
            $queryDelete = 'DELETE FROM ' . $tableName . ' WHERE ';

            $values = '';

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
            
            
            $queryDelete .= ' `type`="' . $type . '"  AND `id_entity` IN ( ' . $entityId . ' ) ';
            e($queryDelete, '$queryDelete');
            $db->setQuery($queryDelete);
            $resultDelete = $db->query();
            

            if ( key($assignEntities) !== NULL ) {
                $values = '';
                foreach ( $assignEntities as $el ) {
                    if( (int)($el) > 0 ) {
                        $values .= '("' . $type . '",' . $entityId . ',' . (string)(int)($el) . '),';                    
                    }
                }

                if ( $values !== '' ) {
                    $values = cutLast($values);
                    $query .= $values;
                e($query, '$query');
//                h($query, '$query');
                    $db->setQuery($query);
                    $resultAdd = $db->query();
//                e($resultA, '$resultA');
                }
            }
        }
//        hh();
        return $resultAdd && $resultDelete;
    }

    public function assignLeftMenuBlocks($menuItem, $menuItemPage, $assignBlocks) {

        $resultA = false;
        $resultB = false;
        
        
        if(is_string($menuItemPage) && is_string($menuItem) && is_array($assignBlocks)) {
            $db = JFactory::getDBO();

            // Вставить новые привязки 
            $query = 'INSERT INTO #__vironit_entity_leftmenublock (`type`,`id_entity`,`id_left_menu_block`) VALUES ';

            // Нужно удалить старые привязки чтобы заменить их новыми
            $queryDelete = 'DELETE FROM #__vironit_entity_leftmenublock WHERE ';
            $values = '';


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
            

            $queryDelete .= ' `type`="' . $type . '"  AND `id_entity` IN ( ' . $entityId . ' ) ';
//            e($queryDelete, '$queryDelete');
            $db->setQuery($queryDelete);
            $resultB = $db->query();

            if (key($assignBlocks) !== NULL ) {
                $values = '';
                foreach ( $assignBlocks as $el ) {
                    if( (int)($el) > 0 ) {
                        $values .= '("' . $type . '",' . $entityId . ',' . (string)(int)($el) . '),';                    
                    }
                }
    //            e($resultB, '$resultB');
                if ( $values !== '' ) {
                    $values = cutLast($values);
                    $query .= $values;
    //                e($query, '$query');
    //                h($query, '$query');
                    $db->setQuery($query);
                    $resultA = $db->query();
    //                e($resultA, '$resultA');
                }
            }
        }
//        hh();
        return $resultA && $resultB;
    }
    
    
    
    private function removeLeftMenuBlock($leftMenuBlockId) {
        $db = JFactory::getDBO();
        $query = 'DELETE FROM #__vironit_left_menu_blocks WHERE id="' . (int) $leftMenuBlockId . '"';
        $db->setQuery($query);
        $resultA = $db->query();
}

    private function removeLeftMenuBlockItems($leftMenuBlockId) {
        $db = JFactory::getDBO();
        $query = 'DELETE FROM #__vironit_left_menu_block_items WHERE `left_menu_block_id`="' . (int) $leftMenuBlockId . '"';
        $db->setQuery($query);
        $resultA = $db->query();
        return $resultA;
    }
    
    
    public function updateLeftMenuEntity( $leftMenuEntityId, $leftMenuTextEntityTextareaName, $leftMenuTextEntityTextarea ) {
        $db = JFactory::getDBO();
        $resultUpdate = false;
        
//        e($leftMenuEntityId, '$leftMenuEntityId');
        
        if(
            is_int($leftMenuEntityId)
            &&
            is_string($leftMenuTextEntityTextareaName)
            &&
            is_string($leftMenuTextEntityTextarea)
         ) {
//            hh();
            $query = 'UPDATE #__vironit_left_menu_textentities 
                        SET 
                          `textentity_content`=' . $db->quote($leftMenuTextEntityTextarea) . ' 
                        , `textentity_name`=' . $db->quote($leftMenuTextEntityTextareaName) . '
                        WHERE id = ' . (string)(int)$leftMenuEntityId . ' ';
            $db->setQuery($query);
            $resultUpdate = $db->query();
        }
//        h('updateLeftMenuEntity');
        return $resultUpdate;
    }

    public function updateLeftMenuBlock($leftMenuBlockId, $leftMenuBlockName, $menuNames, $menuLinks, $textarea, $textareaName ) {

        $db = JFactory::getDBO();
        $resultA = false;
        if(!is_array($textarea) && !is_object($textarea)
            &&
            !is_array($leftMenuBlockName) && !is_object($leftMenuBlockName)
            &&
            !is_array($textareaName) && !is_object($textareaName)
        ) {
            $query = 'UPDATE #__vironit_left_menu_blocks 
                        SET 
                        `left_menu_block_name_rus`=' . $db->quote($leftMenuBlockName) . ' 
                        , `textarea`=' . $db->quote($textarea) . ' 
                        , `textarea_name`=' . $db->quote($textareaName) . '
                        WHERE id IN (' . (int)$leftMenuBlockId . ')';
                            
            $db->setQuery($query);
            $resultA = $db->query();
        }

//        e($query, '$query');
//        h($resultA, '$resultA');

        //Удалим старую информацию чтобы заменить ее новой пришедшей 
        $resultDelete = $this->removeLeftMenuBlockItems($leftMenuBlockId);
        $resultB = $this->addLeftMenuBlockItems($leftMenuBlockId, $menuNames, $menuLinks);

        return $resultA && $resultB && $resultDelete;
    }
    
    
    private function addLeftMenuBlockItems($leftMenuBlockId, $menuNames, $menuLinks) {
        $db = JFactory::getDBO();
       $query = 'INSERT INTO #__vironit_left_menu_block_items (`left_menu_block_id`,`left_menu_block_item_name_rus`,`left_menu_block_item_link`, `order`) VALUES ';
        $values = '';
        if(
            is_array($menuNames)
            &&
            is_array($menuLinks)
            &&
            key($menuNames) !== NULL
            &&
            key($menuLinks) !== NULL
         ) {
            foreach ( $menuNames as $k => $menuName ) {

                if(is_string($menuNames [ $k ])) {
                if(isset($menuLinks [ $k ])) {
                if(is_string($menuLinks [ $k ])) {
                        $values .= '(' . $db->quote($leftMenuBlockId) . ', ' . $db->quote($menuNames [ $k ]) . ', ' . $db->quote($menuLinks [ $k ]) . ', ' . $db->quote( $k ) . '),';
                }
                }
                }
            }
            if ( $values !== '' ) {
                $values = cutLast($values);

                $query .= $values;
                $db->setQuery($query);
                $resultB = $db->query();
                
                
//                e($query, '$query');
//                h($resultB, '$resultB');
//                hh();
                
            }
        }
        return true;
    }

    public function addLeftMenuEntity($leftMenuTextEntityTextareaName, $leftMenuTextEntityTextarea) {
        $resultAdd = false;
        if( is_string($leftMenuTextEntityTextareaName) && is_string($leftMenuTextEntityTextarea) ) {
            $db = JFactory::getDBO();
            $query = 'INSERT INTO #__vironit_left_menu_textentities (`textentity_name`,`textentity_content` ) VALUES ( ' . $db->quote($leftMenuTextEntityTextareaName) . ', ' . $db->quote($leftMenuTextEntityTextarea) . ')';
            $db->setQuery($query);
            $resultAdd = $db->query();
            $lastRowId = $db->insertid();
        }
        return $resultAdd;
    }

    public function addLeftMenuBlock($leftMenuBlockName, $menuNames, $menuLinks, $textarea, $textareaName) {
        $resultA = false;
        if(is_string($leftMenuBlockName) ) {
            $db = JFactory::getDBO();
            $query = 'INSERT INTO #__vironit_left_menu_blocks (`left_menu_block_name_rus`, `textarea`, `textarea_name` ) VALUES ( ' . $db->quote($leftMenuBlockName) . ', ' . $db->quote($textarea) . ', ' . $db->quote($textareaName) . ')';
            $db->setQuery($query);
            $resultA = $db->query();
            
            $lastRowId = $db->insertid();
        }

        $leftMenuBlockId = $lastRowId;
        $resultB = $this->addLeftMenuBlockItems($leftMenuBlockId, $menuNames, $menuLinks);

        return $resultA && $resultB;
    }
    
    
    public function addPage($vironitMenuId, $pageName) {
        $_i = (int) $vironitMenuId;
        $result = false;
        if ($_i !== 0) {
//			e($_i, 'WOW $_i');
            $db = JFactory::getDBO();
            $query = 'INSERT INTO #__vironit_menu_pages (`vironit_menu_id`,`menu_page_title_rus`, `active`) VALUES ( ' . $_i . ', ' . $db->quote($pageName) . ', "0")';
//			e($query, 'WOW $query');
            $db->setQuery($query);
            $result = $db->query();
        }
//		e($result, '$result');
        return $result;
    }

    public function removePage($removePageId) {
        $db = JFactory::getDBO();
        $query = 'DELETE FROM #__vironit_menu_pages WHERE id="' . (int) $removePageId . '"';
        $db->setQuery($query);
        $result = $db->query();
        return $result;
    }

    public function removeCategory($removeCategoryId) {
        $db = JFactory::getDBO();
        $query = 'DELETE FROM #__vironit_menus WHERE id="' . (int) $removeCategoryId . '"';
        $db->setQuery($query);
        $result = $db->query();
        return $result;
    }

    public function getAllAssignedLeftMenuEntitiesIds( $menuItem, $menuItemPage )
    {
        $items = $this->getAllAssignedLeftMenuEntities($menuItem, $menuItemPage);
        $ids = array();

        foreach( $items as $item ) {
            if(isset($item['id_textentity'])) {
                $ids[] = $item['id_textentity'];
            }
        }
        return $ids;
    }

    public function getAllAssignedLeftMenuBlocksIds($menuItem, $menuItemPage)
    {
        $items = $this->getAllAssignedLeftMenuBlocks($menuItem, $menuItemPage);
        $ids = array();

        foreach( $items as $item ) {
            if(isset($item['id_left_menu_block'])) {
                $ids[] = $item['id_left_menu_block'];
            }
        }
        return $ids;
    }

    public function getAllAssignedLeftMenuEntities($menuItem, $menuItemPage)
    {
        $idEntity = 0;
        $type = 'main_page';
        if($menuItemPage !== '') {
            $idEntity = (int)$menuItemPage;
            $type = 'page';
        } else {
            if($menuItem !== '') {
                $idEntity = (int)$menuItem;
                $type = 'category';
            }
        }
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`type`,`id_entity`,`id_textentity` FROM #__vironit_entity_lefttextentity WHERE `type`="' . $type . '" AND `id_entity`=' . $idEntity;
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }

    public function getAllAssignedLeftMenuBlocks($menuItem, $menuItemPage)
    {
        $idEntity = 0;
        $type = 'main_page';
        if($menuItemPage !== '') {
            $idEntity = (int)$menuItemPage;
            $type = 'page';
        } else {
            if($menuItem !== '') {
                $idEntity = (int)$menuItem;
                $type = 'category';
            }
        }
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`type`,`id_entity`,`id_left_menu_block` FROM #__vironit_entity_leftmenublock WHERE `type`="' . $type . '" AND `id_entity`=' . $idEntity;
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }
    

    public function getAllLeftMenuEntities() {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`textentity_name`,`textentity_content` FROM #__vironit_left_menu_textentities ';
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }
    

    public function getAllLeftMenuBlocks() {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`left_menu_block_name_rus`,`textarea`,`textarea_name` FROM #__vironit_left_menu_blocks ';
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }

    public function getAllMenuItems() {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`menu_title`,`menu_title_rus`, `active` FROM #__vironit_menus ';
        $db->setQuery($query);
        $db->query();
        $items = $db->loadAssocList();
        return $items;
    }

    public function activateMenuItems(array $ids = array()) {
        $resultA = false;
        $resultB = false;
        $db = JFactory::getDBO();
        $idsStr = getGluedStr($ids);
        if ($idsStr !== NULL) {
            $query = 'UPDATE #__vironit_menus SET `active`=1 WHERE id IN (' . $idsStr . ')';
            $db->setQuery($query);
            $resultA = $db->query();
            $query = 'UPDATE #__vironit_menus SET `active`=0 WHERE id NOT IN (' . $idsStr . ')';
            $db->setQuery($query);
            $resultB = $db->query();
        }
        return $resultA && $resultB;
    }

    public function activateMenuItemPages($savePagesActivity_CategoryId, array $ids = array()) {
        $resultA = false;
        $resultB = false;
        $db = JFactory::getDBO();
        $idsStr = getGluedStr($ids);
        if ($idsStr !== NULL) {
            $query = 'UPDATE #__vironit_menu_pages SET `active`=1 WHERE `vironit_menu_id`=' . (int)$savePagesActivity_CategoryId . ' AND id IN (' . $idsStr . ')';
            $db->setQuery($query);
            $resultA = $db->query();
        }
        $where = '';
        if ( $idsStr !== NULL ) {
            $where = ' AND  id NOT IN (' . $idsStr . ')';
        }
        $query = 'UPDATE #__vironit_menu_pages SET `active`=0 WHERE `vironit_menu_id`=' . (int)$savePagesActivity_CategoryId . $where;
        $db->setQuery($query);
        $resultB = $db->query();
        return $resultA && $resultB;
    }

    public function activateMenuItemPagesOnTopmenu($savePagesActivity_CategoryId, array $idsTopMenu = array()) {
        $resultA = false;
        $resultB = false;
        $db = JFactory::getDBO();
        $idsStr = getGluedStr($idsTopMenu);
        if ($idsStr !== NULL) {
            $query = 'UPDATE #__vironit_menu_pages SET `show_on_topmenu`=1 WHERE `vironit_menu_id`=' . (int)$savePagesActivity_CategoryId . ' AND id IN (' . $idsStr . ')';
            $db->setQuery($query);
            $resultA = $db->query();
        }
        $where = '';
        if ( $idsStr !== NULL ) {
            $where = ' AND  id NOT IN (' . $idsStr . ')';
        }
        $query = 'UPDATE #__vironit_menu_pages SET `show_on_topmenu`=0 WHERE `vironit_menu_id`=' . (int)$savePagesActivity_CategoryId . $where;
        $db->setQuery($query);
        $resultB = $db->query();
        return $resultA && $resultB;
    }

}

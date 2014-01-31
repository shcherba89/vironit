<?php

defined('_JEXEC') or die('Restricted access');

// import Joomla modelitem library
jimport('joomla.application.component.modelitem');

class VironittouchstonecomponentModelNewleftmenutextentity extends JModelItem {

    public function __construct($config) {
        parent::__construct($config);
    }

    public function getLeftMenuEntityContentThis($leftMenuBlockId) {
        $result = NULL;
        $_leftMenuBlocks = $this->getLeftMenuEntityContent((int)$leftMenuBlockId);
        if(is_array($_leftMenuBlocks)) {
            $current = current($_leftMenuBlocks);
            if($current !== false) {
                $result = $current;
            }
        }
        return $result;
    }

    public function getLeftMenuEntityContent($itemsIdsStr) {
        $db = JFactory::getDBO();
        $query = 'SELECT `id`,`textentity_name`,`textentity_content` FROM #__vironit_left_menu_textentities WHERE `id` IN ( ' . $itemsIdsStr . ' ) ';
        $db->setQuery( $query );
        $db->query();
        $leftMenuEntities = $db->loadAssocList();

        $_leftMenuEntities = array();
        if ( is_array($leftMenuEntities) ) {
        foreach ( $leftMenuEntities as $k => $leftMenuEntity ) {
            if(isset($leftMenuEntity['id'])) {
                $_leftMenuEntities[$leftMenuEntity['id']] = $leftMenuEntity;
            }
        }
        }
        return $_leftMenuEntities;
    }

}

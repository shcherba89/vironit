<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla view library
jimport('joomla.application.component.view');

/**
 * HTML View class for the HelloWorld Component
 */
class VironittouchstonecomponentViewVironittouchstonecomponent extends JView {

    // Overwriting JView display method
    function display($tpl = null) {
        $model = $this->getModel('vironittouchstonecomponent');

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }
        $this->lang = JRequest::getVar('lang', 'rus');
	$this->_lang = '';
	switch ($this->lang) {
	    case 'eng':
		$this->_lang = 'rus';
		break;
	    case 'rus':
		$this->_lang = 'eng';
		break;
	    default:
		$this->lang = 'rus';
		$this->_lang = 'eng';
		break;
	}

        $this->menuItem = JRequest::getVar('menuItem', '');
        $this->menuItemPage = JRequest::getVar('menuItemPage', '');
        $this->addPage = JRequest::getVar('addPage', '');
        $this->addCategory = JRequest::getVar('addCategory', '');
        $this->removeCategory = JRequest::getVar('removeCategory', '');
        $this->removeCategoryId = JRequest::getVar('removeCategoryId', '');
        $this->removePage = JRequest::getVar('removePage', '');
        $this->removePageId = JRequest::getVar('removePageId', '');
        $this->savePagesActivity_CategoryId = JRequest::getVar('savePagesActivity_CategoryId', '');
       

        
        $this->leftMenuBlocks = $model->getAllLeftMenuBlocks();
        $this->leftMenuEntities = $model->getAllLeftMenuEntities();
        
        $this->assignedLeftMenuBlocksIds = $model->getAllAssignedLeftMenuBlocksIds($this->menuItem, $this->menuItemPage);
        $this->assignedLeftMenuEntitiesIds = $model->getAllAssignedLeftMenuEntitiesIds($this->menuItem, $this->menuItemPage);
        
        
        
//        h( $this->assignedLeftMenuEntitiesIds, ' $this->assignedLeftMenuEntitiesIds');
//        h( $this->assignedLeftMenuBlocksIds, ' $this->assignedLeftMenuBlocksIds');
        
        

        $this->menuItems = $model->getAllMenuItems();
        $this->menuItemPages = $model->getMenuItemPages($this->menuItem);

        if ($this->menuItemPage !== '') {
            $this->htmlContent = $model->readContentPage($this->menuItemPage, $this->lang);
        } elseif ($this->menuItem !== '') {
            $this->htmlContent = $model->readContentDefaultCategory($this->menuItem, $this->lang);
        } else {
            $this->htmlContent = $model->readContentMainPage($this->lang);
        }
        
        
        $this->menuItemTitleRus = NULL;
        $this->menuItemPageTitleRus = NULL;

        foreach(($this->menuItems) as $menuItem ) { 
            if(isset($menuItem['id']) && 
                isset($menuItem['menu_title_rus']) && 
                isset($menuItem['active'])
            ) { 
                if ( $menuItem['id'] === $this->menuItem ) {
                    $this->menuItemTitleRus = $menuItem['menu_title_rus'];
                }
            } 
        }

        foreach(($this->menuItemPages) as $menuItemPage) { 
            if(isset($menuItemPage['menu_page_title_rus']) 
                && isset($menuItemPage['vironit_menu_id'])
                && isset($menuItemPage['id'])
                && isset($menuItemPage['active'])
            ) {
                if( $menuItemPage['id'] === $this->menuItemPage ) {
                    $this->menuItemPageTitleRus = $menuItemPage['menu_page_title_rus'];
                }
            }
        }

        // Set the toolbar
        $this->addToolBar();
        JHtml::script(Juri::base() . 'components/com_vironittouchstonecomponent/jquery-1.10.2.js');
        JHtml::script(Juri::base() . 'components/com_vironittouchstonecomponent/com_vironittouchstonecomponent.js');
        
        
        
        // Display the view
        parent::display($tpl);
        $this->setDocument();
    }

    /**
     * Setting the toolbar
     */
    protected function addToolBar() {
        JToolBarHelper::title(JText::_('Vironit Touchstone Component'), 'vironit.png');
		JToolBarHelper::addNew('editheader', _t('Редактировать шапку'));
        JToolBarHelper::addNew('newleftmenutextentity', _t('Текстовая область'));
        JToolBarHelper::addNew('newleftmenublock', _t('Левое меню'));
        JToolBarHelper::divider();
    }

    /**
     * Method to set up the document properties
     *
     * @return void
     */
    protected function setDocument() {
        $document = JFactory::getDocument();
        $document->setTitle(JText::_('Vironit Touchstone Component'));
    }

}

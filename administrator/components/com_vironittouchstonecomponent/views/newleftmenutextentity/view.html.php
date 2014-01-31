<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla view library
jimport('joomla.application.component.view');

/**
 * HTML View class for the HelloWorld Component
 */
class VironittouchstonecomponentViewNewleftmenutextentity extends JView {

    // Overwriting JView display method
    function display($tpl = null) {

        $model = $this->getModel('newleftmenutextentity');
        $this->leftMenuEntityId = (int)JRequest::getVar('leftMenuEntityId', '');
        $this->leftMenuTextEntity = $model->getLeftMenuEntityContentThis($this->leftMenuEntityId);
        $this->_ = ( $this->leftMenuTextEntity !== NULL );

        // Set the toolbar
        $this->addToolBar();
//        JHtml::script(Juri::base() . 'components/com_vironittouchstonecomponent/jquery-1.10.2.js');
//        JHtml::script(Juri::base() . 'components/com_vironittouchstonecomponent/com_vironittouchstonecomponent.js');

        // Display the view
        parent::display($tpl);
        $this->setDocument();
    }

    /**
     * Setting the toolbar
     */
    protected function addToolBar() {
        JToolBarHelper::title(JText::_('Vironit Touchstone Component'), 'vironit.png');

//      JToolBarHelper::addNewX('add');
//        JToolBarHelper::addNew('vironittouchstonecomponent.edit', 'New Left Menu Block');
//        JToolBarHelper::addNew('vironittouchstonecomponent.edit');
//        JToolBarHelper::addNew('vironittouchstonecomponent.add');
//        JToolBarHelper::addNew('newleftmenutextentity', 'Добавить текстовую область для левой панели');
//        JToolBarHelper::addNew('newleftmenublock', 'Добавить блок левой панели');
//        JToolBarHelper::custom('vironittouchstonecomponent.edit');
        
        
        JToolBarHelper::publish('addNewleftmenutextentity', _t('Сохранить'), 'check');
        JToolBarHelper::unpublish('cancel', _t('Отмена'), 'check');
        JToolBarHelper::divider();
        
        
//      JToolBarHelper::addNew();
/*
        JToolBarHelper::editListX('vironittouchstonecomponent.edit');
        JToolBarHelper::deleteListX('', 'vironittouchstonecomponent.delete');
        JToolBarHelper::divider();
        JToolBarHelper::spacer();

        JToolBarHelper::archiveList('task', 'Archive');
        JToolBarHelper::checkin('task', 'Check In', 'check');
        JToolBarHelper::divider();
        JToolBarHelper::spacer();

        JToolBarHelper::publish('task', 'Apply', 'check');
        JToolBarHelper::unpublish('task', 'Cancel', 'check');
        JToolBarHelper::divider();
        JToolBarHelper::spacer('10px');
        
        JToolBarHelper::preferences('com_vironittouchstonecomponent');
 */
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

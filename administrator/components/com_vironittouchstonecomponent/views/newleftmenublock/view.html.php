<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla view library
jimport('joomla.application.component.view');

/**
 * HTML View class for the HelloWorld Component
 */
class VironittouchstonecomponentViewNewleftmenublock extends JView {

    // Overwriting JView display method
    function display($tpl = null) {

        $model = $this->getModel('newleftmenublock');
        $this->leftMenuBlockId = JRequest::getVar('leftMenuBlockId', '');
        $this->leftMenuBlock = $model->getLeftMenuBlockContentThis($this->leftMenuBlockId);
        $this->_ = ( $this->leftMenuBlock !== NULL );

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
        JToolBarHelper::title(JText::_('Vironit Touchstone Component: ' . _t('Добавление Блока Левой Панели')), 'vironit.png');

//      JToolBarHelper::addNewX('add');
//        JToolBarHelper::addNew('vironittouchstonecomponent.edit', 'New Left Menu Block');
//        JToolBarHelper::addNew('vironittouchstonecomponent.edit');
//        JToolBarHelper::addNew('vironittouchstonecomponent.add');
//        JToolBarHelper::addNew('add');
//        JToolBarHelper::custom('vironittouchstonecomponent.edit');
        JToolBarHelper::unpublish('cancel', _t('Отмена'));
        JToolBarHelper::publish('vironittouchstonecomponent', _t('Сохранить'));
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

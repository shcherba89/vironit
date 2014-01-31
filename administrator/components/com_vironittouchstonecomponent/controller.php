<?php

defined('_JEXEC') or die;
jimport('joomla.application.component.controller');

class VironittouchstonecomponentController extends JControllerLegacy {
    /*
    function add() {
        global $mainframe;
        $mainframe->redirect('index.php?option=com_ourcomponent&view=add');
//        echo 'add()';
//        exit;
    }*/

    function display($cachable = true, $urlParams = false) {
        $app = JFactory::getApplication();
        $task = JRequest::getVar('task', 'vironittouchstonecomponent');

        switch ($task) {
            case 'cancel':
                 $app->redirect(JRoute::_(JURI::root() . 'administrator/index.php?option=com_vironittouchstonecomponent'));
                break;
	/* редактирование хедера */
            case 'editheader':
				$this->default_view = $task;
                break;
	/* END редактирование хедера */
            case 'vironittouchstonecomponent':
            case 'newleftmenublock':
            case 'newleftmenutextentity':
                $this->default_view = $task;
                break;
            default:
                $this->default_view = 'vironittouchstonecomponent';
                break;
        }

        $sync = JRequest::getVar('sync', '0');
        $tableName = JRequest::getVar('tableName', '');
        $lastPrevKeyId = JRequest::getVar('lastPrevKeyId', NULL);

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//            h($_POST, '$_POST');

		/* редактирование хедера */
			if($_POST['saveHeader'] == 1)
			{
				$model = $this->getModel('editheader');
				$model->saveHeaderData($_POST,$_FILES);
		}
		/* END редактирование хедера */
			

            $model = $this->getModel('vironittouchstonecomponent');

            $menuItems = $model->getAllMenuItems();
            $ids = array();
            foreach ($menuItems as $menuItem) {
                if (isset($menuItem['id'])) {
                    $varName = 'i_' . $menuItem['id'];
                    $value = JRequest::getVar($varName, '0');
                    if ((((int) $menuItem['id']) !== 0) && ( $value === '1' )) {
                        $ids[] = ((int) $menuItem['id']);
                    }
                }
            }
            $response = $model->activateMenuItems($ids);

            $savePagesActivity_CategoryId = JRequest::getVar('savePagesActivity_CategoryId', '0');
            $savePagesActivity = JRequest::getVar('savePagesActivity', '0');

            if ($savePagesActivity_CategoryId !== '0' && $savePagesActivity === '1') {
//            e($savePagesActivity_CategoryId, '$savePagesActivity_CategoryId');
//            h($savePagesActivity, '$savePagesActivity');
                $menuItemPages = $model->getMenuItemPages($savePagesActivity_CategoryId);
//            h($menuItemPages, '$menuItemPages');
                $ids = array();
                $idsTopMenu = array();
                foreach ($menuItemPages as $menuItemPage) {
                    if (isset($menuItemPage['id'])) {

                        $varName = 'p_' . $menuItemPage['id'];
                        $value = JRequest::getVar($varName, '0');
                        if ((((int) $menuItemPage['id']) !== 0) && ( $value === '1' )) {
                            $ids[] = ((int) $menuItemPage['id']);
                        }

                        // Чекбоксы для сохранения состояние ( Будет ли строка меню отображена на странице в САМОМ ВЕРХУ )
                        $varName = 'ch_' . $menuItemPage['id'];
                        $value = JRequest::getVar($varName, '0');
                        if ((((int) $menuItemPage['id']) !== 0) && ( $value === 'on' )) {
                            $idsTopMenu[] = ((int) $menuItemPage['id']);
                        }

                    }
                }
//            h($ids, '$ids');
                $response = $model->activateMenuItemPages($savePagesActivity_CategoryId, $ids);
                $response = $model->activateMenuItemPagesOnTopmenu($savePagesActivity_CategoryId, $idsTopMenu);
            }
            
			$htmlContent = '';

            $this->lang = JRequest::getVar('lang', 'rus');
            $this->menuItem = JRequest::getVar('menuItem', '');
            $this->menuItemPage = JRequest::getVar('menuItemPage', '');
            $this->addPage = JRequest::getVar('addPage', '');
            $this->addCategory = JRequest::getVar('addCategory', '');
            $removeCategory = JRequest::getVar('removeCategory', '');
            $this->removeCategoryId = JRequest::getVar('removeCategoryId', '');
            $this->removePage = JRequest::getVar('removePage', '');
            $this->removePageId = JRequest::getVar('removePageId', '');
            $this->savePagesActivity_CategoryId = JRequest::getVar('savePagesActivity_CategoryId', '');
            $addLeftMenuBlock = JRequest::getVar('addLeftMenuBlock', '');
            $assignLeftMenuBlock = JRequest::getVar('assignLeftMenuBlock', '');
            $addLeftMenuEntity = JRequest::getVar('addLeftMenuEntity', '');
            $assignLeftMenuEntity = JRequest::getVar('assignLeftMenuEntity', '');
            $removeLeftMenuBlocks = JRequest::getVar('removeLeftMenuBlocks', '');
            $removeLeftMenuEntities = JRequest::getVar('removeLeftMenuEntities', '');
            $savePagesContent = JRequest::getVar('savePagesContent', '');
            $removePages = JRequest::getVar('removePages', '');

            
            
//            h($removeLeftMenuEntities, '$removeLeftMenuEntities');
                
            if (isset($_POST['htmlContent'])) {
				$contentLanguage = JRequest::getVar('contentLanguage', 'rus');
                $htmlContent = $_POST['htmlContent']; // TODO: NOT safe but ...
            }
//		h($_POST, '$_POST');
            if ($this->removePage === '1') {
                $model->removePage($this->removePageId);
//				e('removePage');
            } else if ($removeCategory === '1') {
                $model->removeCategory($this->removeCategoryId);
            } else if ($this->addCategory === '1') {
//				e('addCategory');
                $this->categoryName = JRequest::getVar('categoryName', '');
                $model->addCategory($this->categoryName);
            } else if ($this->addPage === '1') {
                $this->pageName = JRequest::getVar('pageName', '');
                $this->vironitMenuId = JRequest::getVar('vironitMenuId', '');

//				e($this->pageName, '$this->pageName');
//				e($this->vironitMenuId, '$this->vironitMenuId');
                $model->addPage($this->vironitMenuId, $this->pageName);
//				e('addPage');
            } else if ($addLeftMenuBlock === '1') {

                $leftMenuBlockName = JRequest::getVar('leftMenuBlockName', '');
                $textarea = JRequest::getVar('leftMenuBlockTextarea', '');
                $textareaName = JRequest::getVar('leftMenuBlockTextareaName', '');
                $menuNames = JRequest::getVar('menu_name', '');
                $menuLinks = JRequest::getVar('menu_link', '');

                $leftMenuBlockId = (int)JRequest::getVar('leftMenuBlockId', '');

                //  Новый блок левого меню
                if($leftMenuBlockId === -1) {
//                    h('addLeftMenuBlock');
                    $model->addLeftMenuBlock($leftMenuBlockName, $menuNames, $menuLinks, $textarea, $textareaName);
                } else {
//                    h('updateLeftMenuBlock');
                //  Обновим уже существующий блок левого меню
                    $model->updateLeftMenuBlock($leftMenuBlockId, $leftMenuBlockName, $menuNames, $menuLinks, $textarea, $textareaName);
                }

            } else if ($assignLeftMenuBlock === '1') {
//                h($_POST, '$POST');
//                h($assignLeftMenuBlock, 'assignLeftMenuBlock');
                $assign = JRequest::getVar('assign', '');
                if(!is_array($assign)) {
                    $assign = array();
                }
                
                $model->assignLeftMenuBlocks($this->menuItem, $this->menuItemPage, $assign);
            } else if ( $addLeftMenuEntity === '1' ) {
//                h($_POST);

                $leftMenuTextEntityTextareaName = JRequest::getVar('leftMenuTextEntityTextareaName', '');
                $leftMenuTextEntityTextarea = JRequest::getVar('leftMenuTextEntityTextarea', '');

                 $leftMenuEntityId = (int)JRequest::getVar('leftMenuEntityId', '');

//                 e($leftMenuEntityId, '$leftMenuEntityId');
                 
                 if ( $leftMenuEntityId === -1 ) {
//                    h('addLeftMenuEntity');
                    $model->addLeftMenuEntity($leftMenuTextEntityTextareaName, $leftMenuTextEntityTextarea);
                 } else {
//                    h('updateLeftMenuEntity');
                    $model->updateLeftMenuEntity( $leftMenuEntityId, $leftMenuTextEntityTextareaName, $leftMenuTextEntityTextarea );
                 }
            } else if ($assignLeftMenuEntity === '1') {

                $assignEntity = JRequest::getVar('assignEntity', '');
                if(!is_array($assignEntity)) {
                    $assignEntity = array();
                }
                $model->assignLeftMenuEntities($this->menuItem, $this->menuItemPage, $assignEntity);

            } else if ($removeLeftMenuBlocks === '1') {

//                h($_POST);
                
                $removeLeftMenuBlocksIds = JRequest::getVar('removeLeftMenuBlocksIds', '');
                if(!is_array($removeLeftMenuBlocksIds)) {
                    $removeLeftMenuBlocksIds = array();
                }
                $model->removeLeftMenuBlocks($removeLeftMenuBlocksIds);


            } else if ($removeLeftMenuEntities === '1') {
                
                
                $removeLeftMenuEntitiesIds = JRequest::getVar('removeLeftMenuEntitiesIds', '');
                if(!is_array($removeLeftMenuEntitiesIds)) {
                    $removeLeftMenuEntitiesIds = array();
                }
                $model->removeLeftMenuEntities($removeLeftMenuEntitiesIds);
            } else if ( $removePages === '1') {
                
                
                $removePagesIds = JRequest::getVar('removePagesIds', '');
                if(!is_array($removePagesIds)) {
                    $removePagesIds = array();
                }
                $model->removePages($removePagesIds);
                
                
                
                
            } else if ($this->savePagesActivity === '1') {

            } else if ($savePagesContent === '1') {
//				e('saveContent');
                if (($this->menuItem !== '')) {
                    if (($this->menuItemPage !== '')) {
                        $model->saveContentPage((int) $this->menuItemPage, $htmlContent, $contentLanguage);
                    } else {
                        $model->saveContentDefaultCategory((int) $this->menuItem, $htmlContent, $contentLanguage);
                    }
                } else {
                    if (( $this->menuItemPage === '')) {
                        $model->saveContentMainPage($htmlContent, $contentLanguage);
                    }
                }
            } else {
                
                
            }

            $redirectUrl = '';

			switch($this->lang) {
				case 'rus':
				case 'eng':
					break;
				default:
					$this->lang = 'rus';
					break;
			}
			$redirectUrl .= '&lang=' . $this->lang;


            if ($this->menuItem !== '') {
                $redirectUrl .= '&menuItem=' . $this->menuItem;
                if ($this->menuItemPage !== '' ) {
                    $redirectUrl .= '&menuItemPage=' . $this->menuItemPage;
                }
            }
            // После удаления категории или страницы которая была открыта - происходил рекдирект на уже несуществующую категорию / страницу
            

            if(($removePages !== '1') && ($removeLeftMenuEntities !== '1') && ($removeLeftMenuBlocks !== '1') && ($removeCategory !== '1')) {
                $app->redirect(JRoute::_(JURI::root() . 'administrator/index.php?option=com_vironittouchstonecomponent' . $redirectUrl));
            } else {
                $app->redirect(JRoute::_(JURI::root() . 'administrator/index.php?option=com_vironittouchstonecomponent' ));
            }
        }
        parent::display($cachable);
    }

    public function customAction() {
        echo 'customAction()';
    }

}

<?php
// Запрет прямого доступа.
defined('_JEXEC') or die;

// Подключаем библиотеку контроллера Joomla.
jimport('joomla.application.component.controller');

/**
 * Контроллер компонента Topmenu.
 */
class VironittouchstonecomponentController extends JControllerLegacy
{
	/**
	 * метод для отображения вида по умолчанию
	 */
    function display( $cachable = true, $urlParams = false )
    {
		$updateResult = '0';
		
		/*
		$sync  = JRequest::getVar( 'sync', '0' );
		$model = $this->getModel( 'Topmenu' );

		if( $sync === '1' ) {

			$keyApp = 'AKIAIEFXSLHZTDYRMBMA';
			$secretKeyApp = '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';

			//Synchronize with S3
			$distributionId = 'E25QYGQSL1DO3E';
			$picturesUrl = $model->getStorageContent( $keyApp, $secretKeyApp, 'picture', $distributionId );

			$distributionId = 'E3DD059XRT4FJ0';
			$videosUrl = $model->getStorageContent( $keyApp, $secretKeyApp, 'video', $distributionId );

			$filesUrl = array_merge($picturesUrl, $videosUrl);

			$model->clearDB();
			$updateResult = $model->updateDB($filesUrl);
		}
		
		


		$contentType = 'picture';
		$model->getStorageContentFromLocalDB( $contentType );
		
		$contentType = 'video';
		$model->getStorageContentFromLocalDB( $contentType );
		*/
		
		
	
		

        $this->default_view = 'vironittouchstonecomponent';
        parent::display( $cachable );
    }

	public function customAction()
	{
		echo  'custom action';
	}
}

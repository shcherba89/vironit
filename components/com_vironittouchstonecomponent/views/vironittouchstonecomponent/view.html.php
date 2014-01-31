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

//		$model = $this->getModel( 'topmenu' );
//		$this->msg = $this->get('Msg');

//		$msg = $model->getMsg();
		// Assign data to the view
//		$this->msg = $msg;
		$this->msg = 'MESSAGE';

		/*
		$this->picturesUrls = $model->getPicturesUrls();
		$this->videosUrls = $model->getVideosUrls();
		$this->filesUrl = $model->getFilesUrls();
		*/

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
			return false;
		}
		// Display the view
		parent::display($tpl);
	}

}

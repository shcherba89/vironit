<?php
defined('_JEXEC') or die('Restricted access');

// import Joomla modelitem library
jimport('joomla.application.component.modelitem');

class VironittouchstonecomponentModelEditheader extends JModelItem {

    public function __construct($config) {
        parent::__construct($config);
    }

	public function getHeaderData()
	{
		
		
		return $data;
	}
	
	public function saveHeaderData($data,$file)
	{
		$db =& JFactory::getDBO();
		if(is_uploaded_file($file["LogoHeader"]["tmp_name"]))
		{
			$path_to_file = $_SERVER['DOCUMENT_ROOT']."/images/".$file['LogoHeader']['name'];
			move_uploaded_file($file['LogoHeader']['tmp_name'], $path_to_file);
			$query = 'UPDATE `#__vironit_header` SET `title` = "'. $file['LogoHeader']['name']. '" WHERE `name` = "LogoHeader"';
			$db->setQuery( $query );
			$db->query();
		}
		
		if($data['emailHeader'])
		{
			$query = 'UPDATE `#__vironit_header` SET `title` = "'. $data["emailHeader"]. '" WHERE `name` = "emailHeader"';
			$db->setQuery( $query );
			$db->query();
		}
		if($data['phoneHeader'])
		{
			$query = 'UPDATE `#__vironit_header` SET `title` = "'. $data["phoneHeader"]. '" WHERE `name` = "phoneHeader"';
			$db->setQuery( $query );
			$db->query();
		}
		if($data['textBtn'])
		{
			$query = 'UPDATE `#__vironit_header` SET `title` = "'. $data["textBtn"]. '" WHERE `name` = "textBtn"';
			$db->setQuery( $query );
			$db->query();
		}
		
		if($data['linkBtnHeader'])
		{
			$query = 'UPDATE `#__vironit_header` SET `title` = "'. $data["linkBtnHeader"]. '" WHERE `name` = "linkBtnHeader"';
			$db->setQuery( $query );
			$db->query();
		}

	}
}

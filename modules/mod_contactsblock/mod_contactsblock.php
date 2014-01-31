<?php

/**
 * @package     Vironit.touchstone.template
 * @subpackage  Module
 * @copyright   (C) 2013 http://vk.com/id13245451
 * @license     NO LICENSE
 */

// No direct access to this file
defined('_JEXEC') or die;

// берем ссылку на объект базы данных
$db =& JFactory::getDBO();
  
// подготовка имен
$tableName  = $db->nameQuote('#__vironit_header');
$columnName = $db->nameQuote('ordering');
  
// строим SQL
$sql = "SELECT * FROM $tableName";
  
// предварительно устанавливаем текст запроса
$db->setQuery($sql);
$db->query();

$Data = $db->loadAssocList();
$headerData = array();
foreach ($Data as $k=>$val)
{
	if($val['name'] == 'LogoHeader'){$headerData['LogoHeader'] = $val['title'];}
	if($val['name'] == 'textBtn'){$headerData['textBtn'] = $val['title'];}
	if($val['name'] == 'emailHeader'){$headerData['emailHeader'] = $val['title'];}
	if($val['name'] == 'phoneHeader'){$headerData['phoneHeader'] = $val['title'];}
	if($val['name'] == 'linkBtnHeader'){$headerData['linkBtnHeader'] = $val['title'];}
}
// выполняем запрос и в зависимости от ответа выполняем соответствующее действие
if ($db->query()) { ?>
   
<img style="margin-top: 31px;" src=<?php echo "images/".$headerData['LogoHeader']; ?> />
	   <div id="header-contact">
		<div>
			<a href="mailto:<?php echo $headerData['emailHeader']; ?>">
				<span class="e-mail">
					<img src="/templates/vironit-touchstone/css/images/email.png" />
					<?php echo $headerData['emailHeader']; ?>
				</span>
			</a>
			<span class="phone">
				<img src="/templates/vironit-touchstone/css/images/phone.png" />
				<?php echo $headerData['phoneHeader']; ?>
			</span>
		</div>
		<a href="<?php echo $headerData['linkBtnHeader']; ?>" class="button"><?php echo $headerData['textBtn']; ?></a>
	</div>
<?php
} else {
    // неудача (например, ошибка в синтаксисе SQL)
}


?>
<!--<div id="header-contact">
	<div>
		<a href="mailto:contact@progressionstudios.com">
			<span class="e-mail">
				<img src="/templates/vironit-touchstone/css/images/email.png" />
				E-mail
			</span>
		</a>
		<span class="phone">
			<img src="/templates/vironit-touchstone/css/images/phone.png" />
			(555) 555-2121
		</span>
	</div>
	<a href="contact.html" class="button">Make an Appointment</a>
</div>-->

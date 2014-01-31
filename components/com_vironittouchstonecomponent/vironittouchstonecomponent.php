<?php



// Запрет прямого доступа.
defined('_JEXEC') or die;

// Подключаем логирование.
JLog::addLogger(array('text_file' => 'com_topmenu.php'), JLog::ALL, array('com_topmenu'));

// Подключаем библиотеку контроллера Joomla.
jimport('joomla.application.component.controller');

// Получаем экземпляр контроллера с префиксом HelloWorld.
$controller = JControllerLegacy::getInstance('Vironittouchstonecomponent');

// Исполняем задачу task из Запроса.
$input = JFactory::getApplication()->input;
$task = $input->getCmd('task', 'display');
//echo '<pre>';
//var_dump($task);
//exit;
$controller->execute($task);

// Перенаправляем, если перенаправление установлено в контроллере.
$controller->redirect();

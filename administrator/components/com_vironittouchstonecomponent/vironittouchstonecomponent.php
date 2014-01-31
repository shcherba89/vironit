<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_topmenu
 *
 * @copyright   Copyright (C) 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */

defined('_JEXEC') or die;

$controller = JControllerLegacy::getInstance('Vironittouchstonecomponent');
$controller->execute(JFactory::getApplication()->input->get('task', '', 'cmd'));
$controller->redirect();


<?php

/**
 * @package     Vironit.touchstone.template
 * @subpackage  Module
 * @copyright   (C) 2013 http://vk.com/id13245451
 * @license     NO LICENSE
 */
// No direct access to this file
defined('_JEXEC') or die;

$address = JRequest::getVar('address', NULL);
$page = JRequest::getVar('page', NULL);

if ($page !== NULL) {
    $contentPath = realpath('./administrator/components/com_vironittouchstonecomponent/content/pages') . '/' . (string) (int) $page . '.html';
    if (file_exists($contentPath)) {
        require_once $contentPath;
    }
} elseif ($address !== NULL) {
    $contentPath = realpath('./administrator/components/com_vironittouchstonecomponent/content/address') . '/' . (string) (int) $address . '.html';
    if (file_exists($contentPath)) {
        require_once $contentPath;
    }
} else {
    $contentPath = realpath('./administrator/components/com_vironittouchstonecomponent/content/') . '/index.html';
    if (file_exists($contentPath)) {
        require_once $contentPath;
    }
}

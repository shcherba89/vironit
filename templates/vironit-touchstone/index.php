<?php
/**
 * @package										Joomla.Site
 * @subpackage							Templates.vironit-touchstone
 * @copyright        Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license                GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.filesystem.file');

// check modules
$showRightColumn	= ($this->countModules('position-3') or $this->countModules('position-6') or $this->countModules('position-8'));
$showbottom			= ($this->countModules('position-9') or $this->countModules('position-10') or $this->countModules('position-11'));
$showleft			= ($this->countModules('position-4') or $this->countModules('position-7') or $this->countModules('position-5'));

$address = JRequest::getVar('address', '');
$page = JRequest::getVar('page', '');

if ($showRightColumn==0 and $showleft==0) {
	$showno = 0;
}

JHtml::_('behavior.framework', true);

// get params: Устанавливаются в админской части Tamplate'а
$color				= $this->params->get('templatecolor');
$logo				= $this->params->get('logo');
$navposition		= $this->params->get('navposition');

$app				= JFactory::getApplication();
$doc				= JFactory::getDocument();
$templateparams		= $app->getTemplate(true)->params;

//$doc->addStyleSheet($this->baseurl.'/templates/system/css/system.css');
//$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/position.css', $type = 'text/css', $media = 'screen,projection');
//$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/layout.css', $type = 'text/css', $media = 'screen,projection');
//$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/print.css', $type = 'text/css', $media = 'print');

$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/style.css', $type = 'text/css');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/unstyled-content.css', $type = 'text/css');

//$files = JHtml::_('stylesheet', 'templates/'.$this->template.'/css/general.css', null, false, true);
//if ($files):
//	if (!is_array($files)):
//		$files = array($files);
//	endif;
//	foreach($files as $file):
//		$doc->addStyleSheet($file);
//	endforeach;
//endif;
//
//$doc->addStyleSheet('templates/'.$this->template.'/css/'.htmlspecialchars($color).'.css');
//if ($this->direction == 'rtl') {
//	$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/template_rtl.css');
//	if (file_exists(JPATH_SITE . '/templates/' . $this->template . '/css/' . $color . '_rtl.css')) {
//		$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/'.htmlspecialchars($color).'_rtl.css');
//	}
//}

$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/jquery.min-1.4.4.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/jquery.fancybox.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/custom.js', 'text/javascript');

//----------------<!-- Drop down Menu  JavaScripts -->
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/hoverIntent.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/superfish.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/supersubs.js', 'text/javascript');
//-------------------------------------------

$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/jquery.orbit.min.js', 'text/javascript');

$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/jquery.nivo.slider.pack.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/jquery.validate.min.js', 'text/javascript');
$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/page.js', 'text/javascript');








$menuItem = JRequest::getVar('address', '');
$menuItemPage = JRequest::getVar('page', '');
$menuPageTitleRus = '';
$menuTitleRus = '';

if((int)$menuItem > 0) {
    $db = JFactory::getDBO();
    $query = 'SELECT `id`,`menu_title`,`menu_title_rus`,`active` FROM #__vironit_menus WHERE `id`=' . (string)(int)$menuItem;
    $db->setQuery($query);
    $db->query();
    $vironitMenus = $db->loadAssocList();
    if(isset($vironitMenus[0])) {
        if(isset($vironitMenus[0]['menu_title_rus'])) {
            $menuTitleRus = $vironitMenus[0]['menu_title_rus'];
        }
    }
}

if((int)$menuItemPage > 0) {
    $db = JFactory::getDBO();
    $query = 'SELECT `id`,`menu_page_title_rus` FROM #__vironit_menu_pages WHERE `id`=' . (string)(int)$menuItemPage;
    $db->setQuery($query);
    $db->query();
    $vironitMenuItems = $db->loadAssocList();
    if(isset($vironitMenus[0])) {
        if(isset($vironitMenus[0]['menu_page_title_rus'])) {
            $menuPageTitleRus = $vironitMenus[0]['menu_page_title_rus'];
        }
    }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
<jdoc:include type="head" />

<!--[if lte IE 6]>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/ieonly.css" rel="stylesheet" type="text/css" />
<?php if ($color=="personal") : ?>
<style type="text/css">
#line {
	width:98% ;
}
.logoheader {
	height:200px;
}
#header ul.menu {
	display:block !important;
	width:98.2% ;
}
</style>
<?php endif; ?>
<![endif]-->

<!--[if IE 7]>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/ie7only.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script type="text/javascript">
	var big ='<?php echo (int)$this->params->get('wrapperLarge');?>%';
	var small='<?php echo (int)$this->params->get('wrapperSmall'); ?>%';
	var altopen='<?php echo JText::_('TPL_BEEZ2_ALTOPEN', true); ?>';
	var altclose='<?php echo JText::_('TPL_BEEZ2_ALTCLOSE', true); ?>';
	var bildauf='<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/plus.png';
	var bildzu='<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/minus.png';
	var rightopen='<?php echo JText::_('TPL_BEEZ2_TEXTRIGHTOPEN', true); ?>';
	var rightclose='<?php echo JText::_('TPL_BEEZ2_TEXTRIGHTCLOSE', true); ?>';
	var fontSizeTitle='<?php echo JText::_('TPL_BEEZ2_FONTSIZE', true); ?>';
	var bigger='<?php echo JText::_('TPL_BEEZ2_BIGGER', true); ?>';
	var reset='<?php echo JText::_('TPL_BEEZ2_RESET', true); ?>';
	var smaller='<?php echo JText::_('TPL_BEEZ2_SMALLER', true); ?>';
	var biggerTitle='<?php echo JText::_('TPL_BEEZ2_INCREASE_SIZE', true); ?>';
	var resetTitle='<?php echo JText::_('TPL_BEEZ2_REVERT_STYLES_TO_DEFAULT', true); ?>';
	var smallerTitle='<?php echo JText::_('TPL_BEEZ2_DECREASE_SIZE', true); ?>';
</script>
</head>
	<body>
		<!--			/templates/vironit-touchstone/css/		-->
		<div id="header-container">
		<div id="header-sub-container">
			<div id="header">
				<div class="lang" >
					<a href="http://new.vironit.ru<?php echo $_SERVER['REQUEST_URI']; ?>">
						<img src="images/rus1.png" />RU</a> | 
						<a href="http://new.vironit.com<?php echo $_SERVER['REQUEST_URI']; ?>">
							<img src="images/eng1.png" />EN
						</a>
				</div>
				<div class="float-container">
					<!--<a href="/"><img src="images/logo.png" ></img></a>-->
					<!--<h1><a href="/"><img src="images/logo.png" ></img></a></h1>-->
					
					<?php 
					if ($this->countModules('header')): ?>
						<div id="top">
							<jdoc:include type="modules" name="header"   />
							<!-- mod_contactsblock -->
						</div>
					<?php endif; ?>
					<?php 
					if ($this->countModules('atomic-topmenu')): ?>
						<div id="top">
							<jdoc:include type="modules" name="atomic-topmenu"   />
							<!-- mod_contactsblock -->
						</div>
					<?php endif; ?>
				</div>
				<?php 
				if ($this->countModules('position-12')): ?>
					<div id="top">
						<jdoc:include type="modules" name="position-12"   />
						<!-- topmenu -->
						<!-- orbitslider module -->
					</div>
				<?php endif; ?>
			</div> <!-- close #header -->
		</div> <!-- close #header-sub-container -->
		</div> <!-- close #header-container -->
		<div id="content-container">
		<div id="content">

		
		
		
		
		<?php if(($address !== '') /*&& ($page !== '')*/) { ?>
			<jdoc:include type="modules" name="position-10" /><!-- HERE IS LEFT BAR -->
		<?php } ?>
                        
                        
                        

                <!-- HERE IS BREADCRUMBS AREA -->
                    <?php if($menuTitleRus !== '') { ?>
                        <div class="bread-crumbs"><a href="/"><?php echo _t('Домой'); ?></a>
                            » <a href="/?address=<?php echo $menuItem; ?>"><?php echo $menuTitleRus; ?></a>

                            <?php if($menuPageTitleRus !== '') { ?>
                                » <?php echo _t($menuPageTitleRus); ?>
                            <?php } ?>
                        </div>
                    <?php } ?>
                
                
                
                
                
                
		<jdoc:include type="modules" name="position-11" /><!-- HERE IS MAIN CONTENT AREA -->
		
		

<?php if(false) { ?>
		<!--<jdoc:include type="component" />-->
			<jdoc:include type="modules" name="position-2" />
			<!-- featuretext -->
				<div class="float-container">
					<jdoc:include type="modules" name="position-10" />
					<!-- projectrule -->
					<!-- technologies -->
					<!-- cooperation module -->
				</div>
				<div class="divider-large"></div>
				<div class="float-container">
					<jdoc:include type="modules" name="position-11" />
					<!-- aboutcompany  -->
					<!-- jobsprinciple  -->
				</div>
				<jdoc:include type="modules" name="position-13" />
				<!-- featurebox  -->
<?php } ?>










		</div><!-- close #content -->
		</div><!-- close #content-container -->
		<div id="footer-container">
		<div id="footer-sub-container">
			<div id="footer">
				<div class="grid4column">
					<h4><?php echo _t('Портфолио'); ?></h4>
					<jdoc:include type="modules" name="footer-1" />
				</div>
				<div class="grid4column">
					<h4><?php echo _t('Руководство'); ?></h4>
					<jdoc:include type="modules" name="footer-2" />
				</div>
				<div class="grid4column">
					<h4><?php echo _t('Контакты'); ?></h4>
					<jdoc:include type="modules" name="footer-3" />
				</div>
				<div class="grid4column  lastcolumn">
					<h4><?php echo _t('Получить подписку'); ?></h4>
					<jdoc:include type="modules" name="footer-4" />
				</div>
				<!--<jdoc:include type="modules" name="position-14" />-->
				<!-- footerportfolio  -->
				<!-- footerdirectorship  -->
				<!-- footercontacts  -->
				<!-- footergetsubscription  -->
			</div><!-- #footer -->
			<jdoc:include type="modules" name="atomic-bottommiddle" />
				<!-- footerbottomblock  -->
		</div><!-- close #footer-sub-container -->
		</div><!-- close #footer-container -->

	</body>
</html>

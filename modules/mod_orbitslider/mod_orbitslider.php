<?php

/**
 * @package     Vironit.touchstone.template
 * @subpackage  Module
 * @copyright   (C) 2013 http://vk.com/id13245451
 * @license     NO LICENSE
 */

// No direct access to this file
defined('_JEXEC') or die;

$address = JRequest::getVar('address', '');;
$page = JRequest::getVar('page', '');;

if($address === '' && $page === ''){ ?>
<div id="featured">
	<img src="/templates/vironit-touchstone/css/images/orbit/img1.png" alt="Features" data-caption="#htmlCaption" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img2.png" alt="Features" data-caption="#htmlCaption2" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img3.png" alt="Features" data-caption="#htmlCaption3" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img4.png" alt="Features" data-caption="#htmlCaption4" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img5.png" alt="Features" data-caption="#htmlCaption5" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img6.png" alt="Features" data-caption="#htmlCaption6" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img7.png" alt="Features" data-caption="#htmlCaption7" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/img8.png" alt="Features" data-caption="#htmlCaption8" /><!-- Example of slider image with caption  -->
	<!--<img src="/templates/vironit-touchstone/css/images/orbit/sofa.jpg"  alt="Sofa" data-caption="#htmlCaption2" />  Example of slider image with caption -->
	<img src="/templates/vironit-touchstone/css/images/orbit/sofa1.png" alt="Features" data-caption="#htmlCaption7" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/sofa2.png" alt="Features" data-caption="#htmlCaption7" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/sofa3.png" alt="Features" data-caption="#htmlCaption7" /><!-- Example of slider image with caption  -->
	<img src="/templates/vironit-touchstone/css/images/orbit/sofa4.png" alt="Features" data-caption="#htmlCaption7" /><!-- Example of slider image with caption  -->
<!--	<div>  Including VIMEO Video 
		<object width="960" height="350">
			<param name="wmode" value="transparent" />
			<param name="allowscriptaccess" value="always" />
			<param name="allowfullscreen" value="true" />
			<param
				name="movie"
				value="http://vimeo.com/moogaloop.swf?clip_id=40580249&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1&amp;autoplay=0&amp;loop=0"
				/>
			<embed
				src="http://vimeo.com/moogaloop.swf?clip_id=41273680&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1&amp;autoplay=0&amp;loop=0"
				type="application/x-shockwave-flash"
				allowfullscreen="true"
				allowscriptaccess="always"
				width="960"
				height="350"
				wmode="transparent"></embed>
		</object>
	</div>
	<div>  Including a Youtube Video 
		<object type="application/x-shockwave-flash"
				data="http://www.youtube.com/v/-G3Ws9MD450?fs=1&amp;hl=en_US&amp;rel=0&amp;hd=1"
				style="width:960px; height:350px"> 
			<param name="wmode" value="transparent" /> 
			<param name="movie" value="http://www.youtube.com/v/-G3Ws9MD450?fs=1&amp;hl=en_US&amp;rel=0&amp;hd=1" /> 
		</object>
	</div>-->
<!--	<div style="background:url(/templates/vironit-touchstone/css/images/orbit/captions.jpg);">  Example of custom styled content 
		<span class="orbit-caption-right">
			<span class="title">Get started today!</span>
			<span class="paragraph">With your purchase, you will receive a detailed help file along with many additional options.</span>
			<a class="big-button" href="#">Purchase today &rsaquo;</a>
		</span>
	</div>
	<img src="/templates/vironit-touchstone/css/images/orbit/overflow.jpg" alt="Features" />  Example of slider image with No Caption -->
</div>
 <!--Captions for Orbit--> 
<div class="orbit-caption" id="htmlCaption">
	<h2>Разработка мобильных приложений</h2>
	<p>Download this full featured template today to get started on your next online venture!</p>
	<a class="big-button" href="#">Больше &rsaquo;</a>
</div>
<div class="orbit-caption" id="htmlCaption2">
	<h2>Check out all the features</h2>
	<p>The Touchstone Template comes with 18 unique color schemes and three featured sliders!</p>
	<a class="big-button" href="about.html">Learn more &rsaquo;</a>
</div>
<div class="slider-base"></div>
<?php }?>
<!-- SLIDER CODE END -->
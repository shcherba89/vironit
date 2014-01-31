<?php

/**
 * @package     Vironit.touchstone.template
 * @subpackage  Module
 * @copyright   (C) 2013 http://vk.com/id13245451
 * @license     NO LICENSE
 */

// No direct access to this file
defined('_JEXEC') or die;

?>
    <div class="grid4column lastcolumn">
	    <h4><?php echo _t('Отправить запрос'); ?></h4>
	    <div id="contact-wrapper-footer">
	    <?php if(isset($hasError)) { //If errors are found ?>
		    <p class="error"><?php echo _t('Проверьте правильно ли вы заполнили поля. Спасибо.'); ?></p>
	    <?php } ?>
	    <?php if(isset($emailSent) && $emailSent == true) { //If email is sent ?>
		    <p class="success"><strong><?php echo _t('Письмо успешно отправлено'); ?></strong></p>
	    <?php } ?>
	    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" id="contactformfooter">
		    <div>
			    <label><?php echo _t('Имя'); ?>*</label>
			    <input type="text" size="23" name="contactname"  value="" class="required" />
		    </div>
		    <div>
			    <label><?php echo _t('email'); ?>*</label>
			    <input type="text" size="23" name="email"  value="" class="required email" />
		    </div>
			<div>
			    <label><?php echo _t('Тел.'); ?>*</label>
			    <input type="text" size="23" name="phone"  value="" class="required phone" />
		    </div>
		    <div>
			    <textarea class="mail_message" rows="6" cols="25" name="message" ></textarea>
		    </div>
		<input type="submit" class="submit-form" value="<?php echo _t('Отправить'); ?> &rsaquo;" name="submit" />
	    </form>
	    </div><!-- Close #contact-wrapper-footer -->
    </div>

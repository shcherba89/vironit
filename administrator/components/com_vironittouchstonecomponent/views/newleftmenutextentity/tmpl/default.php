
<link rel="stylesheet" href="/administrator/components/com_vironittouchstonecomponent/vironittouchstonecomponent.css" type="text/css" />

<form id="adminForm" name="adminForm" method="POST" >
    <input type="hidden" name="option" value="com_vironittouchstonecomponent" />
    <input type="hidden" name="boxchecked" value="1" />
    <input type="hidden" name="task" value="1" />

    
    
    
    
    
    <?php //h($this->leftMenuTextEntity, '$this->leftMenuTextEntity'); ?>
    
    
    

    <input type="hidden" name="addLeftMenuEntity" value="1" />
    <input type="hidden" name="leftMenuEntityId" value="<?php echo ( $this->_ ) ? $this->leftMenuTextEntity['id'] : '-1'; ?>" />

    <div class="margin-vert" >
        <div class="sym row" ><?php echo _t('Название текстовой области') ?>: </div>
        <div class="sym row" ><input 
                id="leftMenuTextEntityTextareaName"
                name="leftMenuTextEntityTextareaName"
                value="<?php echo ($this->_) ? $this->leftMenuTextEntity['textentity_name'] : ''; ?>" 
        /></div>
        <div class="sym row" ><?php echo _t('Текстовая область') ?>: </div>
        <div class="sym row" ><textarea 
                id="leftMenuTextEntityTextarea"
                name="leftMenuTextEntityTextarea"
                value="<?php echo ($this->_) ? $this->leftMenuTextEntity['textentity_content'] : ''; ?>" 
        ><?php echo ($this->_) ? $this->leftMenuTextEntity['textentity_content'] : ''; ?></textarea></div>
    </div>
    <div class="cl" ></div>
    <input type="submit" value="<?php echo _t('Сохранить') ?>" />
    
    
</form>

<?php 

//h($this->leftMenuBlock, '$this->leftMenuBlock');

$defaultleftMenuItemZero = '
<div class="leftMenuItem" id="leftMenuItem0" >
    <div class="sym row" > ' . _t( 'Название пункта меню') . ': </div>
    <div class="sym row" ><input id="menu_name0" name="menu_name[]" class="menu_name_input" /></div>
    <div class="sym row" > ' . _t( 'Ссылка') . ': </div>
    <div class="sym row width-250" ><input id="menu_link0" name="menu_link[]"  class="menu_link_input"   /></div>
    <div class="sym row inactive-order-arrow-up arrow-up paw button-vironit" > up </div>
    <div class="sym row inactive-order-arrow-down arrow-down paw button-vironit" > down </div>
    <div class="sym row inactive-button-remove button-remove paw button-vironit" > (-) </div>
    <div class="cl" ></div>
</div>';
?>

<link rel="stylesheet" href="/administrator/components/com_vironittouchstonecomponent/vironittouchstonecomponent.css" type="text/css" />

<form id="adminForm" name="adminForm" method="POST" >
    <input type="hidden" name="option" value="com_vironittouchstonecomponent" />
    <input type="hidden" name="boxchecked" value="1" />
    <input type="hidden" name="task" value="1" />

    
    
    
    
    

    <input type="hidden" name="addLeftMenuBlock" value="1" />
    <input type="hidden" name="leftMenuBlockId" value="<?php echo ( $this->_ ) ? $this->leftMenuBlock['id'] : '-1'; ?>" />

    <div class="margin-vert" >
        <div class="sym row" ><?php echo _t('Группа'); ?>: </div>
        <div class="sym row" ><input 
                id="leftMenuBlockName"
                name="leftMenuBlockName"
                value="<?php echo ($this->_) ? $this->leftMenuBlock['left_menu_block_name_rus'] : ''; ?>" 
        /></div>
        
        
        
        
        
        
        
        <?php if(false) { ?>
            <div class="sym row" ><?php echo _t('Название текстовой области'); ?>: </div>
            <div class="sym row" ><input 
                    id="leftMenuBlockTextareaName"
                    name="leftMenuBlockTextareaName"
                    value="<?php echo ($this->_) ? $this->leftMenuBlock['textarea_name'] : ''; ?>" 
            /></div>
            <div class="sym row" ><?php echo _t('Текстовая область'); ?>: </div>
            <div class="sym row" ><textarea 
                    id="leftMenuBlockTextarea"
                    name="leftMenuBlockTextarea"
                    value="<?php echo ($this->_) ? $this->leftMenuBlock['textarea'] : ''; ?>" 
            ><?php echo ($this->_) ? $this->leftMenuBlock['textarea'] : ''; ?></textarea></div>
        <?php } ?>
        
        
        
        
        
        
        
    </div>
    
        <div class="sym row active-button-add button-add paw button-vironit" > (+) </div>
    <div class="cl" ></div>
    
    <div class="cl" ></div>
    
    <div id="leftMenuBlock" name="leftMenuBlock" >
        <?php if($this->_) { ?>
            <?php foreach ( $this->leftMenuBlock['items'] as $k => $leftMenuBlockItem ) { ?>
                <?php if (  isset( $leftMenuBlockItem['id'] ) && is_string($leftMenuBlockItem['id']) 
                            &&
                            isset( $leftMenuBlockItem['left_menu_block_item_name_rus'] ) && is_string($leftMenuBlockItem['left_menu_block_item_name_rus']) 
                            &&
                            isset( $leftMenuBlockItem['left_menu_block_item_link'] ) && is_string($leftMenuBlockItem['left_menu_block_item_link']) 
                        ) { ?>
                    <div class="leftMenuItem" id="leftMenuItem<?php echo $leftMenuBlockItem['id']; ?>" >
                        <div class="sym row" ><?php echo _t('Название пункта меню'); ?>: </div>
                        <div class="sym row" ><input 
                                                id="menu_name<?php echo $leftMenuBlockItem['id']; ?>"
                                                 name="menu_name[]"
                                                 class="menu_name_input" 
                                                 value="<?php echo $leftMenuBlockItem['left_menu_block_item_name_rus']; ?>" 
                                                 /></div>
                        <div class="sym row" ><?php echo _t('Ссылка'); ?> : </div>
                        <div class="sym row width-250" ><input id="menu_link<?php echo $leftMenuBlockItem['id']; ?>" 
                                                     name="menu_link[]" 
                                                     class="menu_link_input" 
                                                     value="<?php echo $leftMenuBlockItem['left_menu_block_item_link']; ?>"
                                             /></div>
                        <div class="sym row inactive-order-arrow-up arrow-up paw button-vironit" > up </div>
                        <div class="sym row inactive-order-arrow-down arrow-down paw button-vironit" > down </div>
                        <div class="sym row inactive-button-remove button-remove paw button-vironit" > (-) </div>
                        <div class="cl" ></div>
                    </div>
                <?php } else { ?>
                    <?php echo $defaultleftMenuItemZero; ?>
                <?php } ?>
            <?php } ?>
        <?php } else { ?>
            <?php echo $defaultleftMenuItemZero; ?>
        <?php } ?>
    </div>


    <div class="sym row " >
        <input class="paw" type="submit" value="<?php echo _t('Сохранить'); ?>" />
    </div>
    <div class="cl" ></div>
</form>
<script type="text/javascript" >
    var NAME_ITEM_MENU = '<?php echo _t('Название пункта меню'); ?>';
    var LINK = '<?php echo _t('Ссылка'); ?>';
</script>

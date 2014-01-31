
<link rel="stylesheet" href="/administrator/components/com_vironittouchstonecomponent/vironittouchstonecomponent.css" type="text/css" />
<script type="text/javascript" src="/ckeditor/ckeditor.js" ></script>
<script type="text/javascript" >
	window.onload = function () {
		CKEDITOR.replace( 'htmlContent' );
	}
</script>

<?php defined('_JEXEC') or die; ?>
<form id="adminForm" name="adminForm" >
    <input type="hidden" name="option" value="com_vironittouchstonecomponent" />
    <input type="hidden" name="task" value="1" />
</form>
<h1><?php echo _t('Настройки'); ?>:
<?php echo ($this->menuItemTitleRus !== NULL ) ? '  ' . _t($this->menuItemTitleRus) : ''; ?>
<?php echo ($this->menuItemPageTitleRus !== NULL) ? ' > ' . $this->menuItemPageTitleRus: ''; ?>
<?php echo ($this->menuItemPageTitleRus === NULL && $this->menuItemTitleRus === NULL ) ? ' ' . _t('Стартовой страницы') . ' ' : ''; ?>
</h1>

<?php
if(is_array($this->menuItems)) { ?> 
<div class="left block200">
    <div id="delete-category" class="left left-margin zero-block">
            <div class="row margin-vert" ><?php echo _t('Удаление категорий'); ?></div>
            <?php foreach(($this->menuItems) as $menuItem ) { ?>
                    <?php if(isset($menuItem['id']) && isset($menuItem['menu_title_rus']) && isset($menuItem['active'])) { ?>
                            <div class="left delete-form row" >
                                    <form method="POST" id="removeCategoryForm" name="removeCategoryForm" >
                                            <input type="hidden" name="removeCategory" value="1" />
                                            <input type="hidden" name="removeCategoryId" value="<?php echo $menuItem['id']; ?>" />
                                            <input 
                                                type="submit" 
                                                value="<?php echo _t('Удалить'); ?>" 
                                                class="remove-category"
                                                />
                                    </form>
                            </div>
                            <div class="left row" >
                                    <?php echo _t($menuItem['menu_title_rus']); ?>
                            </div>
                            <div class="cl" ></div>
                    <?php } ?>
            <?php } ?>
    </div>

    <div class="addCategoryForm fourth-block left" >
            <form method="POST" id="addCategoryForm" name="addCategoryForm" >
                    <div class="padding" >
                            <?php echo _t('Добавить новую категорию'); ?>
                    </div>
                    <input type="hidden" name="addCategory" value="1" />
                    <div class="padding" >
                            <input type="text" name="categoryName" />
                    </div>
                    <div class="padding" >
                            <input type="submit" value="<?php echo _t('Добавить'); ?>" />
                    </div>
            </form>
    </div>
</div>



<form method="POST" id="activateCategoryForm" name="activateCategoryForm">
    <div class="left left-margin first-block">
        <div class="margin-vert row" ><?php echo _t('Категории'); ?></div>
        <div class="pad row" ><?php echo _t('Активация'); ?></div>
        <div class="cl" ></div>
        <div class="sym row" >+</div><div class="sym row" >/</div><div class="sym row" >-</div>
        <div class="cl" ></div>
        <div class="row" >
            <input type="radio" name="i_0" value="1" checked disabled >
            <input type="radio" name="i_0" value="0" disabled >
            <a href="/administrator/index.php?option=com_vironittouchstonecomponent&lang=<?php echo $this->lang ?>" >
                <span>
		    <?php echo _t('Стартовая страница'); ?>
                </span>
            </a>
        </div>
        <?php foreach(($this->menuItems) as $menuItem ) { ?>
        <?php if(isset($menuItem['id']) && isset($menuItem['menu_title_rus']) && isset($menuItem['active'])) { ?>
        <div class="row" >
                <input 
                        type="radio" 
                        name="i_<?php echo $menuItem['id']; ?>" 
                        value="1"
                        <?php if($menuItem['active'] === '1') { ?>checked<?php } ?> />
                <input 
                        type="radio" 
                        name="i_<?php echo $menuItem['id']; ?>"
                        value="0" 
                        <?php if($menuItem['active'] !== '1') { ?>checked<?php } ?> />
                <a href="/administrator/index.php?option=com_vironittouchstonecomponent&menuItem=<?php echo $menuItem['id']; ?>&lang=<?php echo $this->lang ?>" >
                        <span>
                                <?php echo _t($menuItem['menu_title_rus']); ?>
                        </span>
                </a>
        </div>
        <div class="row generated-link" >
            ?address=<?php echo $menuItem['id']; ?>
        </div>
        <?php } ?>
        <?php } ?>
        <div class="div-button">
                <input  class="row" type="submit" value="<?php echo _t('Сохранить'); ?>" />
        </div>
    </div>
</form>

<?php if(is_array($this->menuItemPages) && ( key($this->menuItemPages) !== NULL ) ) { ?> 
	<div class="left left-margin zero-block">
		<div class="row margin-vert" ><?php echo _t('Удаление страниц'); ?></div>
		<?php foreach(($this->menuItemPages) as $menuItemPage ) { ?>
			<?php if(isset($menuItemPage['id']) 
                                && isset($menuItemPage['vironit_menu_id']) 
                                && isset($menuItemPage['menu_page_title_rus']) 
                                && isset($menuItemPage['active'])) { ?>
				<div class="left delete-form row" >
					<form method="POST" id="removePageForm" name="removePageForm">
						<input type="hidden" name="removePage" value="1" />
						<input type="hidden" name="removePageId" value="<?php echo $menuItemPage['id']; ?>" />
						<input type="submit" value="<?php echo _t('Удалить'); ?>" />
					</form>
				</div>
				<div class="left row" >
					<?php echo $menuItemPage['menu_page_title_rus']; ?>
				</div>
				<div class="cl" >
				</div>
			<?php } ?>
		<?php } ?>
	</div>
<?php } ?>

<div class="left left-margin block300">
    <?php if ( $this->menuItem !== '') { ?>
    <div class="left left-margin second-block">
        

        <div class="margin-vert" ><?php echo _t('Страницы категории'); ?><span class="boldText"><?php echo _t($this->menuItemTitleRus); ?></span> </div>
        <div class="pad row" ><?php echo _t('Активация'); ?></div>
        <div class="cl" ></div>
        <div class="sym row margin-left" >|</div><div class="sym row" >+</div><div class="sym row" >/</div><div class="sym row" >-</div>
        <div class="cl" ></div>
    
    
    
    
    
    
    
        
        
        
        
        
    
        <form method="POST" id="savePagesActivityForm" name="savePagesActivityForm">
            <input type="hidden" name="savePagesActivity" value="1" />
            <input type="hidden" name="savePagesActivity_CategoryId" value="<?php echo $this->menuItem; ?>" />
                        <?php if(isset($this->menuItemPages)) { ?>
                        <?php if(key($this->menuItemPages) !== '' ) { ?>
                                        <?php foreach(($this->menuItemPages) as $menuItemPage) { ?>
                                                <?php if(isset($menuItemPage['menu_page_title_rus']) 
                                                                && isset($menuItemPage['vironit_menu_id'])
                                                                && isset($menuItemPage['id'])
                                                                && isset($menuItemPage['active'])
                                                ) { ?>
                                                <div class="row">
                                                        <input 
                                                                type="checkbox" 
                                                                
                                                                
                                                                
                                                                
                                                                class="checkbox-activation-page"
                                                                id="checkbox-activation-page<?php echo $menuItemPage['id']; ?>"

                                                                
                                                                
                                                                name="ch_<?php echo $menuItemPage['id']; ?>" 
                                                                <?php if($menuItemPage['show_on_topmenu'] === '1') { ?>checked<?php } ?>
                                                        />
                                                        <input 
                                                                type="radio" 
                                                                name="p_<?php echo $menuItemPage['id']; ?>" 
                                                                value="1"
                                                                <?php if($menuItemPage['active'] === '1') { ?>checked<?php } ?> />
                                                        <input 
                                                                type="radio" 
                                                                name="p_<?php echo $menuItemPage['id']; ?>"
                                                                value="0" 
                                                                <?php if($menuItemPage['active'] !== '1') { ?>checked<?php } ?> />

                                                        <a href="/administrator/index.php?option=com_vironittouchstonecomponent&menuItem=<?php echo (int)$this->menuItem; ?>&menuItemPage=<?php echo (int)$menuItemPage['id']; ?>&lang=<?php echo $this->lang ?>" >
                                                                <span>
                                                                        <?php echo _t($menuItemPage['menu_page_title_rus']) ; ?>
                                                                </span>
                                                        </a>

                                                </div>
                                                <div class="row generated-link2">
                                                    ?address=<?php echo $this->menuItem ?>&page=<?php echo $menuItemPage['id']; ?>
                                                </div>
                                                <?php } ?>
                                        <?php } ?>
                                <?php } else { ?>
                                                <div>
						    <?php echo _t('Не добавлено ни одной страницы для этой группы') ; ?>
                                                </div>
                                <?php } ?>
                        <?php } ?>
                 <div class="cl" ></div>
                <div class="div-button">
                    <input  class="row" type="submit" value="<?php echo _t('Сохранить') ; ?>" />
                </div>
               
        </form>
        
        


    <div class="delete-checked-div" >
        <form method="POST" >
            <input  type="hidden" name="removePages" value="1" />
            <?php foreach($this->menuItemPages as $menuItemPage) { ?>
            <?php if( isset($menuItemPage['id']) ) { ?>
                <div class="row display-none">
                    <input 
                        type="checkbox"

                        class="checkbox-remove-page"
                        id="checkbox-remove-page<?php echo $menuItemPage['id']; ?>"
                        <?php if($menuItemPage['show_on_topmenu'] === '1') { ?>checked<?php } ?>

                        name="removePagesIds[]" 
                        value="<?php echo $menuItemPage['id']; ?>"
                    />
                </div>
                <div class="row display-none">
                </div>
            <?php } ?>
            <?php } ?>
            <input 
                class="remove-checked-categories"
                type="submit" 
                   value="<?php echo _t("Удалить \n выбранные"); ?>" />
        </form>
    </div>
        
        
                <div class="sym row margin-vert" ><?php echo _t('Проставьте галочки напротив тех меню, которые вы хотите видеть в верхнем меню') ; ?></div>
                <div class="sym row margin-vert" ><?php echo _t('Для того чтобы активировать страницы в левом меню проставьте под символом "+" напротив страниц*') ; ?></div>
                <!--<div class="sym row margin-vert" >*Будет заменено новым функционалом (после 20 Января 2014г.)</div>-->
                 <div class="cl" ></div>
        
        
        
        
        
        
    </div>
    <?php } ?>
    <?php if($this->menuItem !== '' ) { ?>
        <div class="addPageForm fourth-block left" >
                <form method="POST" id="addPageForm" name="addPageForm" >
                        <div class="padding" >
			    <?php echo _t('Добавить новую страницу для категории') ; ?>
			     <?php echo _t($this->menuItemTitleRus); ?>
                        </div>
                        <input type="hidden" name="addPage" value="1" />
                        <input type="hidden" name="vironitMenuId" value="<?php echo $this->menuItem; ?>" />
                        <div class="padding" >
                                <input type="text" name="pageName" />
                        </div>
                        <div class="padding" >
                                <input type="submit" value=" <?php echo _t('Добавить') ; ?>" />
                        </div>
                </form>
        </div>
    <?php } ?>
</div>







<?php 
$titleLeftMenuBlockAssign = ' ' . _t('Главной страницы') . ' ';
if($this->menuItem !== '') {
    $categoryTitle = ' категории ' . $this->menuItemTitleRus;
    if ( $this->menuItemPage !== '' ) {
        $titleLeftMenuBlockAssign = ' страницы ' . $this->menuItemPageTitleRus . ' | ' . $categoryTitle;
    } else {
        $titleLeftMenuBlockAssign = $categoryTitle;
    }
} ?>
<div class="left left-margin first-block">
    <div class="margin-vert row" ><?php echo _t('Назначение блоков левого меню для'); ?></div>
    <div class="cl"></div>
    <div class="margin-vert row boldText"><?php echo _t($titleLeftMenuBlockAssign); ?></div>
    <div class="cl"></div>

    <form method="POST" >
        <input  type="hidden" name="assignLeftMenuBlock" value="1" />
        <?php foreach($this->leftMenuBlocks as $leftMenuBlock) { ?>
        <?php if( isset($leftMenuBlock['id']) && isset($leftMenuBlock['left_menu_block_name_rus']) ) { ?>
            <div class="row">
                <input 
                    type="checkbox"
                    id="checkbox-assign-leftmenublock<?php echo $leftMenuBlock['id']; ?>"
                    class="checkbox-assign-leftmenublock"
                    name="assign[]" 
                    value="<?php echo $leftMenuBlock['id']; ?>"

                    <?php if(in_array($leftMenuBlock['id'], $this->assignedLeftMenuBlocksIds)) { ?>checked<?php } ?>
                />
                <span>
                    <a href="?option=com_vironittouchstonecomponent&task=newleftmenublock&leftMenuBlockId=<?php echo $leftMenuBlock['id']; ?>" >
                        <?php echo ($leftMenuBlock['left_menu_block_name_rus'] !== '' ) ? _t($leftMenuBlock['left_menu_block_name_rus']) : '<span class="red">' . _t('БЕЗ ИМЕНИ') . '</span>'; ?>
                    </a>
                </span>
            </div>
        <?php } ?>
        <?php } ?>
        <div class="div-button">
            <input  class="row save-checked-categories" type="submit" value="<?php echo _t('Сохранить') ?>" />
        </div>
    </form>
    <div class="cl"></div>
    <div class="delete-checked-div" >
        <form method="POST" >
            <input  type="hidden" name="removeLeftMenuBlocks" value="1" />
            <?php foreach($this->leftMenuBlocks as $leftMenuBlock) { ?>
            <?php if( isset($leftMenuBlock['id']) ) { ?>
                <div class="row display-none">
                    <input 
                        type="checkbox"
                        
                        
                        id="checkbox-remove-leftmenublock<?php echo $leftMenuBlock['id']; ?>"
                        class="checkbox-remove-leftmenublock"
                        
                        <?php if(in_array($leftMenuBlock['id'], $this->assignedLeftMenuBlocksIds)) { ?>checked<?php } ?>
                        
                        name="removeLeftMenuBlocksIds[]" 
                        value="<?php echo $leftMenuBlock['id']; ?>"
                    />
                </div>
            <?php } ?>
            <?php } ?>

            <input 
                class="remove-checked-categories"
                type="submit" 
                   value="<?php echo _t("Удалить \n выбранные"); ?>" />
        </form>
    </div>
</div>









    <div class="left left-margin first-block">
        <div class="margin-vert row" ><?php echo _t("Назначение текстовых областей левого меню для"); ?></div>
        <div class="cl"></div>
        <div class="margin-vert row boldText"><?php echo _t($titleLeftMenuBlockAssign); ?></div>
        <div class="cl"></div>

        

        
        
        
        
        
        
        
            
    <div class="left" >
        <form method="POST" >
            <input  type="hidden" name="assignLeftMenuEntity" value="1" />
            <?php foreach($this->leftMenuEntities as $leftMenuEntity) { ?>
            <?php if( 
                    isset($leftMenuEntity['id'])
                    &&
                    isset($leftMenuEntity['textentity_name'])
                    ) { ?>
                <div class="row">
                    <input

                        class="checkbox-assign-entity"
                        id="checkbox-assign-entity<?php echo $leftMenuEntity['id']; ?>"

                        type="checkbox"
                        name="assignEntity[]" 
                        value="<?php echo $leftMenuEntity['id']; ?>"

                        <?php if(in_array($leftMenuEntity['id'], $this->assignedLeftMenuEntitiesIds)) {  ?>checked<?php } ?>
                    />
                    <span>
                        <a href="?option=com_vironittouchstonecomponent&task=newleftmenutextentity&leftMenuEntityId=<?php echo $leftMenuEntity['id']; ?>" >
                            <?php echo ($leftMenuEntity['textentity_name'] !== '') ? _t($leftMenuEntity['textentity_name']) : '<span class="red">' . _t('БЕЗ ИМЕНИ') . '</span>'; ?>
                        </a>
                    </span>
                </div>
            <?php } ?>
            <?php } ?>
            <div class="div-button">
                <input  class="row save-checked-categories" type="submit" value="<?php echo _t('Сохранить'); ?>" />
            </div>
        </form>
    </div>
<div class="cl"></div>
    <div class="delete-checked-div" >
        <form method="POST" >
            <input  type="hidden" name="removeLeftMenuEntities" value="1" />
            <?php foreach($this->leftMenuEntities as $leftMenuEntity) { ?>
            <?php if( isset($leftMenuEntity['id']) ) { ?>
                <div class="row display-none">
                    <input 
                        
                        class="checkbox-remove-entity"
                        id="checkbox-remove-entity<?php echo $leftMenuEntity['id']; ?>"

                        <?php if(in_array($leftMenuEntity['id'], $this->assignedLeftMenuEntitiesIds)) {  ?>checked<?php } ?>

                        type="checkbox"
                        name="removeLeftMenuEntitiesIds[]" 
                        value="<?php echo $leftMenuEntity['id']; ?>"
                    />
                </div>
            <?php } ?>
            <?php } ?>

            <input 
                class="remove-checked-categories"
                type="submit" 
                   value="<?php echo _t("Удалить \n выбранные"); ?>" />
        </form>
    </div>
</div>
<div class="cl"></div>

<div class="margin">
	<a href="/administrator/index.php?option=com_vironittouchstonecomponent<?php if($this->menuItem !== ''){  ?>&menuItem=<?php echo $this->menuItem;} ?><?php if($this->menuItemPage !== ''){  ?>&menuItemPage=<?php echo $this->menuItemPage;} ?>&lang=<?php echo $this->_lang ?>" >
	    <img src="/images/<?php echo ($this->lang === 'rus') ? 'rus' : 'eng'; ?>_flag_act.jpg" >
    </a>
	<span><?php echo _t('Наполнение страницы для '); ?><span class="boldText"><?php echo ($this->lang === 'rus') ? _t('русского') : _t('английского'); ?></span><?php echo _t(' сайта '); ?></span>
</div>

<div class="cl"></div>
<?php if( true /*|| ( $this->menuItem !== '' )*/ ) { ?>
	<?php if( true /* || ( $this->menuItemPage !== NULL ) */ ) { ?>
<div class="left left-margin first-block">
		<form method="POST" id="saveContentForm" name="saveContentForm" >
			<input type="hidden" name="savePagesContent" value="1" />
			
			<input type="hidden" name="contentLanguage" value="<?php echo $this->lang; ?>" />

			<input type="hidden" name="menuItem" value="<?php echo $this->menuItem; ?>" />
			<input type="hidden" name="menuItemPage" value="<?php echo $this->menuItemPage; ?>" />
			<div class="left left-margin third-block">
			<div><?php echo _t($this->menuItemTitleRus); ?><?php 
                            if ( $this->menuItemPage !== '' ) {
                                echo ' > ' . $this->menuItemPageTitleRus;
                            } elseif( $this->menuItem !== '' ) {
                                echo ' ( ' . _t('Содержимое страницы по умолчанию') . ' ) '; 
                            } else {
                                echo ' ( ' . _t('Содержимое стартовой страницы') . ' ) '; 
                            } ?></div>
				<div><?php echo _t('HTML содержимое страницы'); ?></div>

					<textarea id="htmlContent" class="description" name="htmlContent" ><?php echo $this->htmlContent; ?></textarea>

			</div>
			<div class="cl"></div>
			<div class="second-submit" >
				<input type="submit" value="<?php echo _t('Сохранить'); ?>" />
			</div>
		</form>
</div>
		<div class="cl"></div>
	<?php } ?>
<?php } ?>
<?php } ?>

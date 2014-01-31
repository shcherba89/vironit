<?php 

//h($this->leftMenuBlock, '$this->leftMenuBlock');

$defaultleftMenuItemZero = '
<div class="leftMenuItem" id="leftMenuItem0" >
    <div class="sym row" > Название пункта меню: </div>
    <div class="sym row" ><input id="menu_name0" name="menu_name[]" class="menu_name_input" /></div>
    <div class="sym row" > Ссылка: </div>
    <div class="sym row width-250" ><input id="menu_link0" name="menu_link[]"  class="menu_link_input"   /></div>
    <div class="sym row inactive-order-arrow-up arrow-up paw button-vironit" > up </div>
    <div class="sym row inactive-order-arrow-down arrow-down paw button-vironit" > down </div>
    <div class="sym row inactive-button-remove button-remove paw button-vironit" > (-) </div>
    <div class="cl" ></div>
</div>';
?>

<link rel="stylesheet" href="/administrator/components/com_vironittouchstonecomponent/vironittouchstonecomponent.css" type="text/css" />

<form id="adminForm" name="adminForm" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="option" value="com_vironittouchstonecomponent" />
    <input type="hidden" name="boxchecked" value="1" />
    <input type="hidden" name="task" value="1" />

    <input type="hidden" name="saveHeader" value="1" />

    <div class="margin-vert" >
        <div class="sym row" >Логотип: </div>
        <div class="sym row" >
			<input 
				type="file"
                id="LogoHeader"
                name="LogoHeader"
                value="" 
			/>
		</div>
    </div>
	
	<div class="cl" ></div>
    <div class="cl" ></div>
	
    <div class="margin-vert" >
        <div class="sym row" >e-mail: </div>
        <div class="sym row" >
			<input 
				type="text"
                id="emailHeader"
                name="emailHeader"
                value="" 
			/>
		</div>
    </div>

    <div class="margin-vert" >
        <div class="sym row" >Телефон: </div>
        <div class="sym row" >
			<input 
				type="text"
                id="phoneHeader"
                name="phoneHeader"
                value="" 
			/>
		</div>
    </div>
		
	<div class="cl" ></div>
    <div class="cl" ></div>
	
    <div class="margin-vert" >
        <div class="sym row" >Текст кнопки: </div>
        <div class="sym row" >
			<input 
				type="text"
                id="textBtn"
                name="textBtn"
                value="" 
			/>
		</div>
    </div>
	
    <div class="margin-vert" >
        <div class="sym row" >Ссылка кнопки: </div>
        <div class="sym row" >
			<input 
				type="text"
                id="linkBtnHeader"
                name="linkBtnHeader"
                value="" 
			/>
		</div>
    </div>

    <div class="cl" ></div>
    
    <div class="cl" ></div>
    
    <div class="sym row " >
        <input class="paw" type="submit" value="Сохранить" />
    </div>
    <div class="cl" ></div>
</form>


    jQuery(document).ready(function(){
        
        
        
        // Для страницы создания блоков левого меню
        setButtonStatuses();
        
        function activateRemoveNutton(buttonRemove) {
            if(!buttonRemove.hasClass('active-button-remove')) {
                buttonRemove.addClass('active-button-remove');
            }
            if(buttonRemove.hasClass('inactive-button-remove')) {
                buttonRemove.removeClass('inactive-button-remove');
            }
        }
        
        function deactivateRemoveNutton(buttonRemove) {
            if(buttonRemove.hasClass('active-button-remove')) {
                buttonRemove.removeClass('active-button-remove');
            }
            if(!buttonRemove.hasClass('inactive-button-remove')) {
                buttonRemove.addClass('inactive-button-remove');
            }
        }
        
        function activateUp(arrowUp) {
            if(arrowUp.hasClass('inactive-order-arrow-up')) {
                arrowUp.removeClass('inactive-order-arrow-up');
            }

            if(!arrowUp.hasClass('active-order-arrow-up')) {
                arrowUp.addClass('active-order-arrow-up');
            }
        }

        function deactivateUp(arrowUp) {
            if(arrowUp.hasClass('active-order-arrow-up')) {
                arrowUp.removeClass('active-order-arrow-up');
            }
            if(!arrowUp.hasClass('inactive-order-arrow-up')) {
                arrowUp.addClass('inactive-order-arrow-up');
            }
        }

        function activateDown(arrowDown) {
            if(arrowDown.hasClass('inactive-order-arrow-down')) {
                arrowDown.removeClass('inactive-order-arrow-down');
            }
            if(!arrowDown.hasClass('active-order-arrow-down')) {
                arrowDown.addClass('active-order-arrow-down');
            }
        }

        function deactivateDown(arrowDown) {
           
            if(arrowDown.hasClass('active-order-arrow-down')) {
                arrowDown.removeClass('active-order-arrow-down');
            }
            if(!arrowDown.hasClass('inactive-order-arrow-down')) {
                arrowDown.addClass('inactive-order-arrow-down');
            }
        }

        function setButtonStatuses()
        {
            var firstNoDelete = false;
            var children = $('#leftMenuBlock').children();
            if(children.length === 1) {
                // Если остался один элемент то его удалять нельзя
                firstNoDelete = true;
            } else {
                // Если осталось больше одного элемента то можно удалить любой элемент
                firstNoDelete = false;
            }

//            console.log('firstNoDelete: ' + firstNoDelete);

            children.each ( function ( index, value ) {
//                 console.log(value);
//                 console.log(arrowUp);
                var arrowUp = $(value).find('.arrow-up');
                var arrowDown = $(value).find('.arrow-down');
                var buttonRemove = $(value).find('.button-remove');

                switch(index) {
                    case 0:
                        if(firstNoDelete === true) {
                            deactivateRemoveNutton(buttonRemove);
                        } else {
                            activateRemoveNutton(buttonRemove);
                        }
                        break;
                    default:
                            activateRemoveNutton(buttonRemove);
                        break;
                }
                
                if(children.length === 1) {
                    deactivateUp(arrowUp);
                    deactivateDown(arrowDown);
                } else {
                    switch(index) {
                        // первую строку нельзя 
                        // поднять
                        case 0:
    //                        console.log('0!');
                            deactivateUp(arrowUp);
                            activateDown(arrowDown);
                            break;

                        // Последнюю строку нельзя опустить
                        case children.length - 1:
    //                        console.log('children.length - 1!' + ( children.length - 1 ) ) ;
                            activateUp(arrowUp);
                            deactivateDown(arrowDown);
                            break;

                        default:
                            activateUp(arrowUp);
                            activateDown(arrowDown);
                            break;
                    }
                }

            });
        }

        function upClick(_this) {
            var active = _this.hasClass('active-order-arrow-up');
            if ( active === true ) {
                var parent = _this.parent();
                var prevElement = parent.prev();
                prevElement.insertAfter(parent);
                setButtonStatuses();
            }
        }

        function downClick(_this) {
            var active = _this.hasClass('active-order-arrow-down');
            if ( active === true ) {
                var parent = _this.parent();
                var nextElement = parent.next();
                nextElement.insertBefore(parent);
                setButtonStatuses();
            }
        }

        function removeClick(_this) {
            var active = _this.hasClass('active-button-remove');
            if ( active === true ) {
                _this.parent().remove();
                setButtonStatuses();
            }
        }

        function addClick(_this) {

            var active = _this.hasClass('active-button-add');
            if ( active === true ) {
                
            var leftMenuItem = $('<div></div>');
            leftMenuItem.attr('class', 'leftMenuItem');

                var leftMenuBlock = $('#leftMenuBlock');
                var leftMenuBlockItems = $('#leftMenuBlock').children();

                var maxId = -1;
                leftMenuBlockItems.each(function(index, object){
                    var id = object.id;
                    var num = parseInt(id.substring('leftMenuItem'.length));//menu_name
                    if(num > maxId) {
                        maxId = num;
                    }
                    
                });

                if(true/*maxId > -1*/) {
                    var nextNum = maxId + 1;
                    console.log('maxId = ' + maxId);
                    leftMenuItem.attr('id', 'leftMenuItem' + nextNum );


                    var menuTitle = $('<div></div>');
                    menuTitle.attr('class', 'sym row');
                    menuTitle.text(' Название пункта меню: ');


                    var menuNameDiv = $('<div></div>');
                    menuNameDiv.attr('class', 'sym row');

                    var menuNameInput = $('<input></input>');
                    var menuNameInputId = 'menu_name[]';
                    var menuNameInputName = menuNameInputId;
                    menuNameInput.attr('id', menuNameInputId);
                    menuNameInput.attr('class', 'menu_name_input');
                    menuNameInput.attr('name', menuNameInputName);
//                    menuNameInput.attr('value', Math.random());

                    menuNameDiv.append(menuNameInput);





                    var linkTitle = $('<div></div>');
                    linkTitle.attr('class', 'sym row');
                    linkTitle.text(' Ссылка: ');






                    var linkNameDiv = $('<div></div>');
                    linkNameDiv.attr('class', 'sym row width-250');

                    var linkNameInput = $('<input></input>');
                    var linkNameInputId = 'menu_link[]';
                    var linkNameInputName = linkNameInputId;
                    linkNameInput.attr('id', linkNameInputId);
                    linkNameInput.attr('name', linkNameInputName);
                    linkNameInput.attr('class', 'menu_link_input');
//                    linkNameInput.attr('value', Math.random());

                    linkNameDiv.append(linkNameInput);


                    var upDivButton = $('<div></div>');
                    upDivButton.attr('class', 'sym row inactive-order-arrow-up arrow-up paw button-vironit');
                    upDivButton.text(' up ');
                    upDivButton.on("click", function(){
                        upClick(upDivButton);
                    });


                    var downDivButton = $('<div></div>');
                    downDivButton.attr('class', 'sym row inactive-order-arrow-down arrow-down paw button-vironit');
                    downDivButton.text(' down ');
                    downDivButton.on("click", function(){
                        downClick(downDivButton);
                    });


                    var removeDivButton = $('<div></div>');
                    removeDivButton.attr('class', 'sym row inactive-button-remove button-remove paw button-vironit margin-down');
                    removeDivButton.text(' (-) ');
                    removeDivButton.on("click", function(){
                        removeClick(removeDivButton);
                    });


                    var divCl = $('<div></div>');
                    divCl.attr('class', 'cl');


                    leftMenuItem.append(menuTitle);
                    leftMenuItem.append(menuNameDiv);
                    leftMenuItem.append(linkTitle);
                    leftMenuItem.append(linkNameDiv);
                    leftMenuItem.append(upDivButton);
                    leftMenuItem.append(downDivButton);
                    leftMenuItem.append(removeDivButton);

                    leftMenuItem.append(divCl);

                    leftMenuBlock.append(leftMenuItem);

    //                console.log('menuNameDiv[ ');
    //                console.log(menuNameDiv);
    //                console.log('] ');
                    setButtonStatuses();
                }
            }
        }

        $('.arrow-down').click(function(){
            downClick($(this));
        });

        $('.arrow-up').click(function(){
            upClick($(this));
        });

        $('.button-remove').click(function(){
            removeClick($(this));
        });

        $('.button-add').click(function(){
            addClick($(this));
        });
        
        
        
        
        
        // Для основной страницы 
        $('.checkbox-assign-entity').click(function(){
            var id = $(this).attr('id');
            var isChecked = $(this).prop('checked');
            var num = parseInt(id.substring('checkbox-assign-entity'.length));
            
            var removeCheckbox = $('#checkbox-remove-entity' + num);
            removeCheckbox.prop('checked', isChecked);
//            alert(isChecked);
//            alert(num);
        });


        $('.checkbox-assign-leftmenublock').click(function(){
            var id = $(this).attr('id');
            var isChecked = $(this).prop('checked');
            var num = parseInt(id.substring('checkbox-assign-leftmenublock'.length));

            var removeCheckbox = $('#checkbox-remove-leftmenublock' + num);
            removeCheckbox.prop('checked', isChecked);
//            alert(isChecked);
//            alert(num);
        });

        $('.checkbox-activation-page').click(function(){
            var id = $(this).attr('id');
            var isChecked = $(this).prop('checked');
            var num = parseInt(id.substring('checkbox-activation-page'.length));

            var removeCheckbox = $('#checkbox-remove-page' + num);
            removeCheckbox.prop('checked', isChecked);
//            alert(isChecked);
//            alert(num);
        });
            
            
    });
    
    
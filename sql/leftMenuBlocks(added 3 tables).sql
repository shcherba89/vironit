CREATE TABLE `new.vironit`.`vrnt_vironit_left_menu_blocks`
(
 `id` INT
(
11) UNSIGNED NOT NULL AUTO_INCREMENT, `left_menu_block_name_rus` CHAR
(
255), PRIMARY KEY 
(
`id`) ); 




CREATE TABLE `new.vironit`.`vrnt_vironit_left_menu_block_items`
(
 `id` INT
(
11) UNSIGNED NOT NULL AUTO_INCREMENT, `left_menu_block_id` INT
(
11), `left_menu_block_item_name_rus` CHAR
(
255), PRIMARY KEY 
(
`id`) ) ENGINE=MYISAM CHARSET=utf8 COLLATE=utf8_general_ci; 



CREATE TABLE `new.vironit`.`vrnt_vironit_entity_leftmenublock`
(
 `id` INT
(
11) UNSIGNED NOT NULL AUTO_INCREMENT, `type` ENUM
(
'page','category'), `id_entity` INT
(
11), `id_left_menu_block` INT
(
11), PRIMARY KEY 
(
`id`) ) ENGINE=MYISAM CHARSET=utf8 COLLATE=utf8_general_ci; 

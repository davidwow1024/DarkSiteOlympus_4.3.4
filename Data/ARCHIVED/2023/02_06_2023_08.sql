/*NPC Mestros de Mazmorras*/
UPDATE `creature_template` SET `gossip_menu_id`='60002', `npcflag`='3' WHERE (`entry`='190014');
UPDATE `creature_template` SET `gossip_menu_id`='60002', `npcflag`='3' WHERE (`entry`='190015');

/*Textos*/
REPLACE INTO `npc_text`(`ID`,`text0_0`,`text0_1`,`WDBVerified`) VALUES (500086, 'Bienvenido $N, seras capaz de mostrar tu valía!. Solo verdaderos guerreros se convertiran en leyendas','Bienvenida $N, seras capaz de mostrar tu valía!. Solo verdaderos guerreros se convertiran en leyendas',1);

/*gossip*/
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('60002', '500086');

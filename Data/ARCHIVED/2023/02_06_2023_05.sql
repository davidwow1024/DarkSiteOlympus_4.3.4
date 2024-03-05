/*NPC Mestro de Bandas*/
UPDATE `creature_template` SET `gossip_menu_id`='60001', `npcflag`='3' WHERE (`entry`='500085');

/*Textos*/
REPLACE INTO `npc_text`(`ID`,`text0_0`,`text0_1`,`WDBVerified`) VALUES (500085, 'Tienes tiempo para una aventurilla $N','Tienes tiempo para una aventurilla $N',1);

/*gossip*/
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('60001', '500085');

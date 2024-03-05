/* Todos los Cambios 27-05-2023 */

/*Agregar -0.60(40%) de chance de que tus hechizos daninos activen Missiles Arcanos*/

REPLACE INTO `spell_proc_event`(`entry`,`SchoolMask`,`SpellFamilyMask0`,`procFlags`,`CustomChance`) VALUES (79683,1,2048,69632,-0.6);

/*Missiles Arcanos ahora si quitara el aura de Misiles Arcanos Activados*/
REPLACE INTO `spell_linked_spell`(`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (5143,-79683,0,'Usar Misiles Arcanos Rango 1 Elimina el Aura 79683');
REPLACE INTO `spell_linked_spell`(`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (7268,-79683,0,'Usar Misiles Arcanos Rango 2 Elimina el Aura 79683');

/*Reparar informacion de modelo faltante*/

REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (40564,0.383,1.5,0,0);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (40565,0.383,1.5,1,0);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (40566,0.383,1.5,0,0);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (40567,0.383,1.5,1,0);

/*Arreglado SPeed Walk y Speed Run */

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('34812','0','0','0','0','0','29205','0','0','0','The Turkey Chair','','vehichleCursor','0','1','1','0','0','35','35','0','1','1.14286','1','1.57143','1','0','4','5.175','0','16','0.75','0','0','8','16384','2048','8','0','0','0','0','0','2.2','3.825','11','9','1048584','0','0','0','0','0','0','0','0','0','0','66250','61784','61785','61788','61786','61787','0','0','0','321','0','0','','0','3','1','2.80794','1','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','12340');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('34823','0','0','0','0','0','29205','0','0','0','The Cranberry Chair','','vehichleCursor','0','1','1','0','0','35','35','0','1','1.14286','1','1.57143','1','0','4','5.175','0','16','0.75','0','0','8','16384','2048','8','0','0','0','0','0','2.2','3.825','11','9','1048584','0','0','0','0','0','0','0','0','0','0','66261','61784','61785','61788','61786','61787','0','0','0','321','0','0','','0','3','1','2.80794','1','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','12340');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('34819','0','0','0','0','0','29205','0','0','0','The Stuffing Chair','','vehichleCursor','0','1','1','0','0','35','35','0','1','1.14286','1','1.57143','1','0','4','5.175','0','16','0.75','0','0','8','16384','2048','8','0','0','0','0','0','2.2','3.825','11','9','1048584','0','0','0','0','0','0','0','0','0','0','66259','61784','61785','61788','61786','61787','0','0','0','321','0','0','','0','3','1','2.80794','1','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','12340');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('34824','0','0','0','0','0','29205','0','0','0','The Sweet Potato Chair','','vehichleCursor','0','1','1','0','0','35','35','0','1','1.14286','1','1.57143','1','0','4','5.175','0','16','0.75','0','0','8','16384','2048','8','0','0','0','0','0','2.2','3.825','11','9','1048584','0','0','0','0','0','0','0','0','0','0','66262','61784','61785','61788','61786','61787','0','0','0','321','0','0','','0','3','1','2.80794','1','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','12340');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('34822','0','0','0','0','0','29205','0','0','0','The Pie Chair','','vehichleCursor','0','1','1','0','0','35','35','0','1','1.14286','1','1.57143','1','0','4','5.175','0','16','0.75','0','0','8','16384','2048','8','0','0','0','0','0','2.2','3.825','11','9','1048584','0','0','0','0','0','0','0','0','0','0','66260','61784','61785','61788','61786','61787','0','0','0','321','0','0','','0','3','1','2.80794','1','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','12340');


/*Gameobject LOCK error reparado*/

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES('190949','22','352','Musty Coffin','','','','35','0','2','0','0','0','0','0','0','52839','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartGameObjectAI','','15595');
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES('300167','8','0','TEMP Walt\'s Transport Rune','','','','0','0','1','0','0','0','0','0','0','1479','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1');
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES('195461','5','5454','Surveyor\'s Pole','','','','0','0','1','0','0','0','0','0','0','0','0','0','0','0','14202','0','0','0','0','0','0','0','0','0','0','0','0','0','45423','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartGameObjectAI','','15595');
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES('201569','7','9153','Beach Chair','','','','0','0','1','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','13329');


/* Traducciones Agregadas a Guardia */
REPLACE INTO `locales_npc_text` (`ID`, `Text0_0_loc6`, `Text0_0_loc7`, `Text1_0_loc6`, `Text1_0_loc7`, `Text2_0_loc6`, `Text2_0_loc7`) VALUES('18037','Estos trolls acaban de aparecer exigiendo nuestra ayuda', 'Estos trolls acaban de aparecer exigiendo nuestra ayuda', 'Apenas puedo entender lo que estos trolls están tratando de decir', 'Apenas puedo entender lo que estos trolls están tratando de decir', '¿Por qué estos trolls no resuelven sus problemas solos?', '¿Por qué estos trolls no resuelven sus problemas solos?');

/*Questline Trolls into Aliance*/

INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44019, 29102);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44019, 29103);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44019, 29103);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44019, 29105);
REPLACE INTO  `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('25532','52654','0','1519','4411','1','1','0','0','-8335.1','1273.09','3.83577','4.96796','300','0','0','0','0','0','0','0','0','0');

/* Hunter Spell */

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('56641','77443','1','Steady Shot Focus\r\n');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('77767','91954','1','Cobra Shto Focus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) values('56641','spell_hun_energize');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) values('77767','spell_hun_energize');


/*ahora las diarias de cosina solo sale una mision diaria por dia*/
/* --poll_quest */
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26153', '50004', 'Tortitas de calabaza de Penny');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26190', '50004', 'El festin de un pescador');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26183', '50004', 'La sidra del rey');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26192', '50004', '!A los huerfanos tambien les gustan las galletas!');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26177', '50004', '¿Antojo de cangrejo?');

/* pool_template */
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('50004', '1', 'Diarias de cocina alianza');


/* ahora las diarias de cosina solo sale una mision diaria por dia */
/* --poll_quest-- */
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26227', '50003', 'Cuidado esta fruta devuelve el mordisco');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26235', '50003', 'Hasta los ladrones tienen hambre');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26226', '50003', 'Revuelto de centollo');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26233', '50003', 'Robando a los nuestros');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('26220', '50003', 'Todo sabe mejor con bacon');

/* --pool_template-- */
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('50003', '1', 'Diarias de cocina Horda');

/* ahora las diarias de joyeria solo sale una mision diaria por dia */
/* --poll_quest-- */
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25156', '50006', 'Baba elemental');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25155', '50006', 'Las ogrozonianas estan d ehumor');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25154', '50006', 'Un regalo para lila');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25157', '50006', 'Ultima Moda');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25105', '50006', 'Mordisquitos, noo!');

/* --pool_template-- */
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('50006', '1', 'Diarias joyeria Alianza');

/* ahora las diarias de joyeria solo sale una mision diaria por dia */
/* --poll_quest-- */
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25158', '50005', 'Mordisquitos, noo!');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25159', '50005', 'Ultima Moda');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25160', '50005', 'Un regalo para lila');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25161', '50005', 'Las ogrozonianas estan d ehumor');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('25162', '50005', 'Baba elemental');

/* --pool_template-- */
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('50005', '1', 'Diarias de joyeria Horda');


/*ahora las diarias de tol barad solo sale dos mision diaria por dia en cada npc*/
/*--update--*/
UPDATE `pool_template` SET `entry`='374', `max_limit`='2', `description`='Sergeant Gray - Daily Quests' WHERE (`entry`='374');
UPDATE `pool_template` SET `entry`='375', `max_limit`='2', `description`='Camp Coordinator Brack - Daily Quests' WHERE (`entry`='375');
UPDATE `pool_template` SET `entry`='377', `max_limit`='2', `description`='3rd Officer Kronkar - Daily Quests' WHERE (`entry`='377');
UPDATE `pool_template` SET `entry`='378', `max_limit`='2', `description`='Private Sarlosk - Daily Quests' WHERE (`entry`='378');

/*--poll_quest--*/
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28059', '372', 'Reclama una fortaleza');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28063', '372', 'Hasta la ultima arma');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28065', '372', 'ponte en su pellejo durante un tiempo');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28130', '372', 'Un pueblo poco amistoso');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28137', '372', 'Enseña a un hombre a pescar o a robar');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('27949', '373', 'Los olvidados');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('27966', '373', 'Recuperando los restos');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('27967', '373', 'Teniente Primero Connor');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('27992', '373', 'Imanes, como funcionan');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28046', '373', 'Termina el trabajo');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28689', '379', 'Los olvidadosn');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28690', '379', 'Recuperando los restos');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28692', '379', 'Imanes, como funcionan');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28693', '379', 'Termina el trabajo');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28691', '379', 'Teniente Primero Connor');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28686', '376', 'Un pueblo poco amistoso');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28685', '376', 'Hasta la ultima arma');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28721', '376', 'ponte en su pellejo durante un tiempo');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28687', '376', 'Enseña a un hombre a pescar o a robar');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES ('28682', '376', 'Reclama una fortaleza');

/*--pool_template--*/
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('372', '2', 'Diarias Comandante Marcus Johnson');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('373', '2', 'Diarias Teniente Fransworth');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('379', '2', 'Diarias Capitan Prug');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('376', '2', 'Diarias Comandante Larmash');



 -- Creature 52294 smart ai
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 52294;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (52294, 0, 0, 0, 75, 0, 100, 0, 0, 52234, 40, 0, 28, 45842, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'When creature 52234 in range 40 (once) - Self: Remove aura due to spell 45842');

 -- Creature 52753 smart ai
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 52753;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (52753, 0, 0, 0, 75, 0, 100, 0, 0, 52234, 40, 0, 28, 45842, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'When creature 52234 in range 40 (once) - Self: Remove aura due to spell 45842');




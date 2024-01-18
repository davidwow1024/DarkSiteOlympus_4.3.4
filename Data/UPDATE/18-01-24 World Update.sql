
UPDATE `creature` SET `position_x`= 3527.67 WHERE `guid`=91278;
UPDATE `creature` SET `position_y`= -6666.63 WHERE `guid`=91278;
UPDATE `creature` SET `position_z`= 96.3586 WHERE `guid`=91278;
UPDATE `creature` SET `orientation`= 4.77588 WHERE `guid`=91278;

insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','1','3527.96','-6670.43','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','2','3528.07','-6676.02','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','3','3528.1','-6680.31','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','4','3528.08','-6684.38','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','5','3527.3','-6680.16','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','6','3527.51','-6675.23','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','7','3527.67','-6670.73','96.3586','0','0','0','0','100','0','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) values('91278','8','3527.49','-6666.44','96.3586','0','0','0','0','100','0','0');

UPDATE `creature_addon` SET `path_id`= 91278 WHERE `guid`= 91278;

UPDATE `locales_quest` SET `RequestItemsText_loc6`= 'Brutos Disciplinados' WHERE `entry`= 26374;
UPDATE `locales_quest` SET `RequestItemsText_loc7`= 'Brutos Disciplinados' WHERE `entry`= 26374;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES('4264400','9','0','0','0','0','100','0','0','0','0','0','28','79919','0','0','0','0','0','1','0','0','0','0','0','0','0','Smoot - Remove aura \'Carrying a Samophlange\'');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES('4264400','9','2','0','0','0','100','0','30000','30000','0','0','75','79919','0','0','0','0','0','1','0','0','0','0','0','0','0','Smoot - Add aura \'Carrying a Samophlange\'');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES('4264400','9','1','0','0','0','100','0','0','0','0','0','85','79948','0','0','0','0','0','7','0','0','0','0','0','0','0','');

DELETE FROM `smart_scripts` WHERE `entryorguid`=42644;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES('42644','0','0','0','8','0','100','0','79936','0','0','0','80','4264400','2','0','0','0','0','1','0','0','0','0','0','0','0','Smoot - On Spellhit \'Slam Smoot\' - Run Actionlist');

INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES (42644, 79936, 1, 0);

UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=42644;

REPLACE INTO `creature_template_addon`(`entry`,`bytes2`,`auras`) VALUES (42786, 1, 79752);


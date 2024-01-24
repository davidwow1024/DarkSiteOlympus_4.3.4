UPDATE `creature_template` SET `ScriptName`='boss_tyrande_whisperwind' WHERE (`entry`='7999');
UPDATE `creature_template` SET `ScriptName`='boss_prophet_velen' WHERE (`entry`='17468');
UPDATE `creature_template` SET `ScriptName`='boss_varian_wrynn' WHERE (`entry`='29611');
UPDATE `creature_template` SET `ScriptName`='boss_baine_bloodhoof' WHERE (`entry`='36648');
UPDATE `creature_template` SET `ScriptName`='boss_varian_wrynn' WHERE (`entry`='37879');
UPDATE `creature_template` SET `ScriptName`='boss_garrosh_hellscream' WHERE (`entry`='39605');
UPDATE `creature_template` SET `ScriptName`='boss_muradinbroncebeard' WHERE (`entry`='42928');
UPDATE `creature_template` SET `ScriptName`='boss_mobus' WHERE (`entry`='50009');
UPDATE `creature_template` SET `ScriptName`='mob_garr_firesworn' WHERE (`entry`='50055');
UPDATE `creature_template` SET `ScriptName`='boss_garr_hyjal' WHERE (`entry`='50056');
UPDATE `creature_template` SET `ScriptName`='boss_akmahat' WHERE (`entry`='50063');


DELETE FROM `creature_addon` WHERE `guid`=499706;
DELETE FROM `creature` WHERE `guid`=138310;
DELETE FROM `creature` WHERE `guid`=138311;
DELETE FROM `creature` WHERE `guid`=138312;
DELETE FROM `creature` WHERE `guid`=138313;
DELETE FROM `creature` WHERE `guid`=138314;
DELETE FROM `creature` WHERE `guid`=138315;
DELETE FROM `creature` WHERE `guid`=138316;
DELETE FROM `creature` WHERE `guid`=138317;
DELETE FROM `creature` WHERE `guid`=138318;
DELETE FROM `creature` WHERE `guid`=138319;
DELETE FROM `creature` WHERE `guid`=138320;
DELETE FROM `creature` WHERE `guid`=499706;

replace into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('89657536','50056','1','616','616','1','1','0','0','4156.46','-2504.36','1039.42','2.9823','72000','0','0','25000000','0','2','0','0','0','0');

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('89657536', '4997060', '0', '0', '0', '0', '');

INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '89657536', '0', '0', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138311', '3', '20', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138310', '3', '340', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138313', '2.8', '320', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138312', '2.3', '300', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138316', '2.3', '60', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138314', '2', '80', '0');
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('89657536', '138315', '2.8', '40', '0');

insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138310','50055','1','616','616','1','169','0','0','4136.59','-2551.04','1037.54','1.45023','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138311','50055','1','616','5022','1','169','0','0','4167.84','-2529.28','1038.34','2.96212','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138312','50055','1','616','616','1','169','0','0','4163.28','-2489.68','1037.91','3.61792','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138313','50055','1','616','616','1','169','0','0','4138.5','-2512.02','1041.11','2.99118','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138314','50055','1','616','616','1','169','0','0','4108.3','-2484.94','1036.39','3.52132','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138315','50055','1','616','616','1','169','0','0','4035.63','-2525.1','1035.09','4.51563','120','10','0','1','1','1','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('138316','50055','1','616','5022','1','169','0','0','4203.55','-2508.55','1036.47','3.59279','120','10','0','1','1','1','0','0','0','0');

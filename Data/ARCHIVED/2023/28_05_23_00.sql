/* Guilnea Quest POI Repair */

REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','0','-1575','1345');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','1','-1371','1347');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','2','-1376','1427');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','3','-1442','1451');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','4','-1523','1459');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','5','-1572','1441');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','0','6','-1575','1345');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','1','0','-1438','1401');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','0','-1595','1336');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','1','-1371','1347');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','2','-1376','1427');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','3','-1442','1451');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','4','-1523','1459');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','5','-1572','1441');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','2','6','-1595','1336');
REPLACE INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) values('14098','3','0','-1438','1401');
REPLACE INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('14098','0','0','638','539','0','0','3');
REPLACE INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('14098','1','-1','638','539','0','0','1');
REPLACE INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('14098','2','0','654','545','0','0','1');
REPLACE INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('14098','3','-1','654','545','0','0','1');
REPLACE into `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('24930','0','0','638','539','0','0','1');
REPLACE into `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('24930','1','0','654','545','0','0','1');
REPLACE into `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('24930','2','-1','654','545','0','0','1');
REPLACE INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) values('14294','0','-1','654','545','0','0','1');

/* Quest 8491 Repair Item Drop Percent */
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('15652','20772','-17','1','0','1','1');

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('15651','20772','-45.00','1','0','1','1');

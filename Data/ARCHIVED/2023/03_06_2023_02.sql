/*quest 26294*/

/*phase*/
REPLACE INTO`phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES ('1637', '6', '8', '0', '0', '0', NULL, '0', ' phase 8 quest 26294');

/*condicion*/
REPLACE INTO`conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('25', '1637', '6', '0', '0', '9', '0', '26294', '0', '0', '0', '0', '0', '', 'phase 1 quest 26294');

/*creature*/
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='89443');
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='92366');
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='89367');
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='88875');
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='88494');
UPDATE `creature` SET `phaseMask`='8' WHERE (`guid`='92701');

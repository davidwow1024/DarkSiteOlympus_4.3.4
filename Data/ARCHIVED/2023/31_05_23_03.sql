/*phase 4096 y 8192*/

/*phase_definitions*/
REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES ('616', '22', '4096', '0', '1', '0', NULL, NULL, 'Hyjal phase 4096');
REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES ('616', '23', '8192', '0', '1', '0', NULL, NULL, 'Hyjal phase 8192');

/*conditions*/
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('24', '616', '22', '0', '0', '4', '0', '616', '0', '0', '0', '0', '0', '', 'phase 4096 hyjal');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('24', '616', '23', '0', '0', '4', '0', '616', '0', '0', '0', '0', '0', '', 'phase 8192 hyjal');

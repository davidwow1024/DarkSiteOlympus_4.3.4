-- fix errores SmartAIMgr: Entry 100300200 SourceType 9 Event 5 Action 45 uses non-existent Creature entry 1003007 as target_param1, skipped.
DELETE FROM `smart_scripts` WHERE `entryorguid`=100300200;
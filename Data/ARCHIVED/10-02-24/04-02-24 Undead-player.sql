-- playercreateinfo undead
UPDATE `playercreateinfo` SET `race`='5', `class`='1', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='1');
UPDATE `playercreateinfo` SET `race`='5', `class`='3', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='3');
UPDATE `playercreateinfo` SET `race`='5', `class`='4', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='4');
UPDATE `playercreateinfo` SET `race`='5', `class`='5', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='5');
UPDATE `playercreateinfo` SET `race`='5', `class`='8', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='8');
UPDATE `playercreateinfo` SET `race`='5', `class`='9', `map`='0', `zone`='5692', `position_x`='1704.09', `position_y`='1704.27', `position_z`='133.891', `orientation`='4.68418' WHERE (`race`='5') AND (`class`='9');

-- Agatha
UPDATE `creature` SET `position_x`='1704.21', `position_y`='1702.08', `position_z`='136.247', `orientation`='1.50294' WHERE (`guid`='45877');

-- Deathknell Grave Target
UPDATE `creature_template` SET `flags_extra`='128' WHERE (`entry`='50373')
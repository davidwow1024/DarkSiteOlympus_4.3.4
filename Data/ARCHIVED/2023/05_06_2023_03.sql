/*updates npcs*/
UPDATE `creature_template_addon` SET `bytes1`='0' WHERE (`entry`='25107');
UPDATE `creature_template` SET `modelid2`='22873', `flags_extra`='128' WHERE (`entry`='25075');

/*npc sobrantes*/
DELETE FROM `creature`  WHERE `id` = 25072;
DELETE FROM `creature`  WHERE `id` = 25074;
DELETE FROM `creature`  WHERE `id` = 25071;
DELETE FROM `creature`  WHERE `id` = 25076;
DELETE FROM `creature`  WHERE `id` = 25077;
DELETE FROM `creature`  WHERE `id` = 25070;
DELETE FROM `creature`  WHERE `id` = 25079;
DELETE FROM `creature`  WHERE `id` = 25083;
DELETE FROM `creature`  WHERE `id` = 25075;
DELETE FROM `creature`  WHERE `guid` = 19618;
DELETE FROM `creature`  WHERE `guid` = 19620;
DELETE FROM `creature`  WHERE `guid` = 44982;
DELETE FROM `creature`  WHERE `guid` = 45197;
DELETE FROM `creature`  WHERE `guid` = 45392;
DELETE FROM `creature`  WHERE `guid` = 45581;
DELETE FROM `creature`  WHERE `guid` = 45781;
DELETE FROM `creature`  WHERE `guid` = 45998;
DELETE FROM `creature`  WHERE `guid` = 238208;
DELETE FROM `creature`  WHERE `guid` = 238221;
DELETE FROM `creature`  WHERE `guid` = 238199;
DELETE FROM `creature`  WHERE `guid` = 238210;
DELETE FROM `creature`  WHERE `guid` = 238204;
DELETE FROM `creature`  WHERE `guid` = 238215;
DELETE FROM `creature`  WHERE `guid` = 238219;
DELETE FROM `creature`  WHERE `guid` = 238218;
DELETE FROM `creature`  WHERE `guid` = 238220;
DELETE FROM `creature`  WHERE `guid` = 238217;
DELETE FROM `creature`  WHERE `guid` = 238198;
DELETE FROM `creature`  WHERE `guid` = 138874;
DELETE FROM `creature`  WHERE `guid` = 138860;
DELETE FROM `creature`  WHERE `guid` = 138875;
DELETE FROM `creature`  WHERE `guid` = 138864;
DELETE FROM `creature`  WHERE `guid` = 138891;
DELETE FROM `creature`  WHERE `guid` = 138890;
DELETE FROM `creature`  WHERE `guid` = 138888;
DELETE FROM `creature`  WHERE `guid` = 138889;
DELETE FROM `creature`  WHERE `guid` = 138872;
DELETE FROM `creature`  WHERE `guid` = 138873;
DELETE FROM `creature`  WHERE `guid` = 20297;
DELETE FROM `creature`  WHERE `guid` = 20296;


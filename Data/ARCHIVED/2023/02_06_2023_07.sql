/*boss Lady Naz'jar*/
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='39959');

/*eliminando smart_scripts*/
DELETE FROM `smart_scripts` WHERE (`entryorguid`='39959');
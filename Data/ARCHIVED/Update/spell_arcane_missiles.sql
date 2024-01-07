/*ADD spell_linked_spell*/
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('-79683', '-79808', '0', 'Arcane Missiles aurastate link');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('79683', '79808', '0', 'Arcane Missiles aurastate link');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('-5143', '-36032', '0', 'Arcane Missiles Rank 1');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('5143', '-79683', '0', 'Usar Misiles Arcanos Rango 1 Elimina el Aura 79683');

/*DELETE spell_linked_spell*/
DELETE FROM `spell_linked_spell`  WHERE `spell_trigger` = 7268;

/*ADD spell_proc_event*/
UPDATE `spell_proc_event` SET `entry`='79684', `SchoolMask`='0', `SpellFamilyName`='0', `SpellFamilyMask0`='0', `SpellFamilyMask1`='0', `SpellFamilyMask2`='0', `procFlags`='0', `procEx`='0', `ppmRate`='0', `CustomChance`='15', `Cooldown`='0' WHERE (`entry`='79684');
UPDATE `spell_proc_event` SET `entry`='79683', `SchoolMask`='0', `SpellFamilyName`='3', `SpellFamilyMask0`='2048', `SpellFamilyMask1`='0', `SpellFamilyMask2`='0', `procFlags`='69632', `procEx`='0', `ppmRate`='0', `CustomChance`='40', `Cooldown`='0' WHERE (`entry`='79683');
UPDATE `spell_proc_event` SET `entry`='36032', `SchoolMask`='0', `SpellFamilyName`='3', `SpellFamilyMask0`='0', `SpellFamilyMask1`='32768', `SpellFamilyMask2`='0', `procFlags`='0', `procEx`='0', `ppmRate`='0', `CustomChance`='0', `Cooldown`='0' WHERE (`entry`='36032');

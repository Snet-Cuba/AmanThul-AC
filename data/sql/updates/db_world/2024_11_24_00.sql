-- DB update 2024_11_23_01 -> 2024_11_24_00
--
-- not selectable
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 33554432 WHERE (`entry` = 24223);
-- root
UPDATE `creature_template_movement` SET `Rooted` = 1 WHERE (`CreatureId` = 24223);

SET @GUID:=38464;
DELETE FROM `creature` WHERE (`id1` = 24223) AND (`guid` BETWEEN (@GUID+00) AND (@GUID+11));
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+00, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 231.7856, 1477.3315, 26.000067, 0.541052043437957763, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+01, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 227.88835, 1452.7626, 26.000414, 3.001966238021850585, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+02, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 228.48058, 1433.1262, 27.387426, 2.58308720588684082, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+03, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 227.02995, 1417.4744, 32.817062, 2.757620096206665039, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+04, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 227.65094, 1404.276, 37.13389, 2.321287870407104492, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+05, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 227.5511, 1382.4186, 44.78124, 0.174532920122146606, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+06, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 229.57564, 1361.4746, 49.162132, 5.218534469604492187, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+07, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 246.97385, 1356.4729, 49.40504, 1.2042771577835083, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+08, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 261.45508, 1402.2993, 49.40504, 2.0245819091796875, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+09, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 245.92024, 1374.8492, 49.404884, 3.40339207649230957, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+10, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 253.92784, 1429.9912, 49.40504, 2.181661605834960937, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788),
(@GUID+11, 24223, 0, 0, 568, 0, 0, 1, 1, 0, 281.30252, 1430.9957, 61.60976, 0.087266460061073303, 7200, 0, 0, 3827, 0, 0, 0, 0, 0, '', 53788);
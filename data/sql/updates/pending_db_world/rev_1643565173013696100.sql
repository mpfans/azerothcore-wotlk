INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1643565173013696100');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id1` IN (14262,14263,14264,14024,12458,12465));
DELETE FROM `creature_formations` WHERE `memberGUID` IN (SELECT `guid` FROM `creature` WHERE `id1` IN (14262,14263,14264,14024,12458,12465));
DELETE FROM `linked_respawn` WHERE `linkType`=0 AND `linkedGUID` IN (SELECT `guid` FROM `creature` WHERE `id1` IN (14262,14263,14264,14024,12458,12465));

SET @CGUID := 2000009;
DELETE FROM `creature` WHERE `id1` IN (14262,14263,14264,14024,12458,12465);
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(@CGUID,14024,469,0,0,1,1,0,-7652.4,-1052.16,449.259,3.24727,30,2,0,1,0,1),
(@CGUID+1,14024,469,0,0,1,1,0,-7632.09,-1015.39,440.24,4.29252,30,2,0,1,0,1),
(@CGUID+2,14024,469,0,0,1,1,0,-7659.83,-979.335,440.315,0.545102,30,2,0,1,0,1),
(@CGUID+3,14024,469,0,0,1,1,0,-7608.47,-1066.02,449.247,6.25989,30,2,0,1,0,1),
(@CGUID+4,14024,469,0,0,1,1,0,-7635.41,-1018.93,440.244,4.31024,30,2,0,1,0,1),
(@CGUID+5,14024,469,0,0,1,1,0,-7656.67,-1038.08,440.189,4.04103,30,2,0,1,0,1),
(@CGUID+6,14024,469,0,0,1,1,0,-7659.56,-1086.99,449.247,1.71367,30,2,0,1,0,1),
(@CGUID+7,14024,469,0,0,1,1,0,-7646.83,-1086.38,449.247,5.58312,30,2,0,1,0,1),
(@CGUID+8,14024,469,0,0,1,1,0,-7692.41,-1112.29,449.083,5.19745,30,2,0,1,0,1),
(@CGUID+9,14024,469,0,0,1,1,0,-7630.92,-1049.91,449.247,5.71655,30,2,0,1,0,1),
(@CGUID+10,14024,469,0,0,1,1,0,-7701.07,-1019.07,440.55,0.698132,30,2,0,1,0,1),
(@CGUID+11,14024,469,0,0,1,1,0,-7678.04,-998.592,440.342,3.02629,30,2,0,1,0,1),
(@CGUID+12,14024,469,0,0,1,1,0,-7688.92,-990.716,440.197,4.21918,30,2,0,1,0,1),
(@CGUID+13,14024,469,0,0,1,1,0,-7686.58,-1012.38,440.066,2.76825,30,2,0,1,0,1),
(@CGUID+14,14024,469,0,0,1,1,0,-7630.23,-1033.7,449.247,3.55355,30,2,0,1,0,1),
(@CGUID+15,14024,469,0,0,1,1,0,-7618.19,-989.43,440.117,4.2586,30,2,0,1,0,1),
(@CGUID+16,14024,469,0,0,1,1,0,-7616.03,-1044.02,449.247,4.45059,30,2,0,1,0,1),
(@CGUID+17,14024,469,0,0,1,1,0,-7693.18,-1100.67,449.21,5.08783,30,2,0,1,0,1),
(@CGUID+18,14024,469,0,0,1,1,0,-7662.24,-1080.32,449.247,5.8294,30,2,0,1,0,1),
(@CGUID+19,14024,469,0,0,1,1,0,-7602.56,-1016.52,449.247,6.24578,30,2,0,1,0,1),
(@CGUID+20,14024,469,0,0,1,1,0,-7635.01,-1087.5,449.247,4.97402,30,2,0,1,0,1),
(@CGUID+21,14024,469,0,0,1,1,0,-7642.42,-965.778,440.297,3.902,30,2,0,1,0,1),
(@CGUID+22,14024,469,0,0,1,1,0,-7606.54,-1020.91,449.247,6.05682,30,2,0,1,0,1),
(@CGUID+23,14024,469,0,0,1,1,0,-7627.33,-1009.28,440.275,0.466249,30,2,0,1,0,1),
(@CGUID+24,14024,469,0,0,1,1,0,-7607.43,-1041.7,449.247,6.03584,30,2,0,1,0,1),
(@CGUID+25,14024,469,0,0,1,1,0,-7710.71,-1066.49,445.26,5.07891,30,2,0,1,0,1),
(@CGUID+26,14024,469,0,0,1,1,0,-7678.43,-1018,440.066,5.5646,30,2,0,1,0,1),
(@CGUID+27,14024,469,0,0,1,1,0,-7592.26,-1079.79,449.247,4.91554,30,2,0,1,0,1),
(@CGUID+28,14024,469,0,0,1,1,0,-7653.86,-1010.09,440.069,1.64492,30,2,0,1,0,1),
(@CGUID+29,14024,469,0,0,1,1,0,-7631.21,-971.92,440.114,0.31893,30,2,0,1,0,1),
(@CGUID+30,14024,469,0,0,1,1,0,-7571.74,-1070.18,449.247,5.81579,30,2,0,1,0,1),
(@CGUID+31,14024,469,0,0,1,1,0,-7632.61,-1102.87,449.247,1.35165,30,2,0,1,0,1),
(@CGUID+32,14024,469,0,0,1,1,0,-7683.51,-1047.26,440.364,2.6953,30,2,0,1,0,1),
(@CGUID+33,14024,469,0,0,1,1,0,-7694.11,-1034.31,440.603,5.63692,30,2,0,1,0,1),
(@CGUID+34,14024,469,0,0,1,1,0,-7670.3,-1100.32,449.144,2.41785,30,2,0,1,0,1),
(@CGUID+35,14024,469,0,0,1,1,0,-7713.75,-1070.71,445.176,4.19547,30,2,0,1,0,1),
(@CGUID+36,14024,469,0,0,1,1,0,-7701.67,-1057.32,442.867,4.92621,30,2,0,1,0,1),
(@CGUID+37,14024,469,0,0,1,1,0,-7659.66,-1118.74,449.156,0.507403,30,2,0,1,0,1),
(@CGUID+38,14024,469,0,0,1,1,0,-7651.96,-981.664,440.346,5.50748,30,2,0,1,0,1),
(@CGUID+39,14024,469,0,0,1,1,0,-7671.18,-982.726,440.255,0.480707,30,2,0,1,0,1),
(@CGUID+40,14024,469,0,0,1,1,0,-7659.06,-995.701,440.069,2.66601,30,2,0,1,0,1),
(@CGUID+41,12458,469,0,0,1,1,1,-7711.34,-1064.65,445.26,1.03316,600,0,0,1,0,0),
(@CGUID+42,12458,469,0,0,1,1,1,-7711.98,-1061.63,445.257,0.475976,600,0,0,1,0,2),
(@CGUID+43,12458,469,0,0,1,1,1,-7708.62,-1064.7,445.26,1.7658,600,0,0,1,0,0),
(@CGUID+44,12458,469,0,0,1,1,1,-7594.02,-987.55,440.449,3.05115,600,0,0,1,0,0),
(@CGUID+45,12458,469,0,0,1,1,1,-7594.45,-991.831,440.179,3.00101,600,0,0,1,0,0),
(@CGUID+46,12458,469,0,0,1,1,1,-7597.14,-987.723,440.164,2.91064,600,0,0,1,0,2),
(@CGUID+47,12458,469,0,0,1,1,1,-7714.44,-1074.78,445.26,5.88395,600,0,0,1,0,0),
(@CGUID+48,12458,469,0,0,1,1,1,-7711.3,-1076.48,445.26,2.37365,600,0,0,1,0,0),
(@CGUID+49,12458,469,0,0,1,1,1,-7710.56,-1074.25,445.231,5.25651,600,0,0,1,0,2);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+42,@CGUID+46,@CGUID+49);
INSERT INTO `creature_formations` VALUES
(@CGUID+42,@CGUID+41,3,300,512,0,0),
(@CGUID+42,@CGUID+42,0,0,512,0,0),
(@CGUID+42,@CGUID+43,3,120,512,0,0),
(@CGUID+46,@CGUID+44,3,300,512,0,0),
(@CGUID+46,@CGUID+45,3,120,512,0,0),
(@CGUID+46,@CGUID+46,0,0,512,0,0),
(@CGUID+49,@CGUID+4,3,300,512,0,0),
(@CGUID+49,@CGUID+48,3,120,512,0,0),
(@CGUID+49,@CGUID+49,0,0,512,0,0);

SET @NPC := @CGUID+42;
SET @PATH := @NPC*10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES
(@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` VALUES
(@PATH,1,-7695.1,-1052.93,440.674,100,0,0,0,100,0),
(@PATH,2,-7679.78,-1047.46,440.219,100,0,0,0,100,0),
(@PATH,3,-7683.87,-1038.3,440.374,100,0,0,0,100,0),
(@PATH,4,-7690.04,-1030.21,440.384,100,0,0,0,100,0),
(@PATH,5,-7696.85,-1024.06,440.433,100,0,0,0,100,0),
(@PATH,6,-7699.01,-1015.98,440.373,100,0,0,0,100,0),
(@PATH,7,-7704.31,-1004.79,440.165,100,0,0,0,100,0),
(@PATH,8,-7700.94,-1000.52,440.174,100,0,0,0,100,0),
(@PATH,9,-7698.79,-993.429,440.137,100,0,0,0,100,0),
(@PATH,10,-7691.95,-996.889,440.191,100,0,0,0,100,0),
(@PATH,11,-7682.15,-1002.88,439.984,100,0,0,0,100,0),
(@PATH,12,-7674.75,-1001.64,440.23,100,0,0,0,100,0),
(@PATH,13,-7674.32,-1009.23,440.247,100,0,0,0,100,0),
(@PATH,14,-7667.7,-1013.72,440.267,100,0,0,0,100,0),
(@PATH,15,-7663.99,-1021.79,440.29,100,0,0,0,100,0),
(@PATH,16,-7660.58,-1033.68,440.176,100,0,0,0,100,0),
(@PATH,17,-7672.2,-1040.59,440.19,100,0,0,0,100,0),
(@PATH,18,-7677.88,-1033.48,439.982,100,0,0,0,100,0),
(@PATH,19,-7682.6,-1022.21,439.982,100,0,0,0,100,0),
(@PATH,20,-7692.39,-1018.37,440.269,100,0,0,0,100,0),
(@PATH,21,-7700.77,-1021.95,440.495,100,0,0,0,100,0),
(@PATH,22,-7705.21,-1015.37,440.444,100,0,0,0,100,0),
(@PATH,23,-7700.77,-1021.95,440.495,100,0,0,0,100,0),
(@PATH,24,-7692.39,-1018.37,440.269,100,0,0,0,100,0),
(@PATH,25,-7682.6,-1022.21,439.982,100,0,0,0,100,0),
(@PATH,26,-7677.88,-1033.48,439.982,100,0,0,0,100,0),
(@PATH,27,-7672.2,-1040.59,440.19,100,0,0,0,100,0),
(@PATH,28,-7660.58,-1033.68,440.176,100,0,0,0,100,0),
(@PATH,29,-7663.99,-1021.79,440.29,100,0,0,0,100,0),
(@PATH,30,-7667.7,-1013.72,440.267,100,0,0,0,100,0),
(@PATH,31,-7674.32,-1009.23,440.247,100,0,0,0,100,0),
(@PATH,32,-7674.75,-1001.64,440.23,100,0,0,0,100,0),
(@PATH,33,-7682.15,-1002.88,439.984,100,0,0,0,100,0),
(@PATH,34,-7691.95,-996.889,440.191,100,0,0,0,100,0),
(@PATH,35,-7698.79,-993.429,440.137,100,0,0,0,100,0),
(@PATH,36,-7700.94,-1000.52,440.174,100,0,0,0,100,0),
(@PATH,37,-7704.31,-1004.79,440.165,100,0,0,0,100,0),
(@PATH,38,-7699.01,-1015.98,440.373,100,0,0,0,100,0),
(@PATH,39,-7696.85,-1024.06,440.433,100,0,0,0,100,0),
(@PATH,40,-7690.04,-1030.21,440.384,100,0,0,0,100,0),
(@PATH,41,-7683.87,-1038.3,440.374,100,0,0,0,100,0),
(@PATH,42,-7679.78,-1047.46,440.219,100,0,0,0,100,0),
(@PATH,43,-7695.1,-1052.93,440.674,100,0,0,0,100,0),
(@PATH,44,-7711.69,-1063.99,445.176,100,0,0,0,100,0);

SET @NPC := @CGUID+46;
SET @PATH := @NPC*10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES
(@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` VALUES
(@PATH,1,-7610.64,-984.548,440.202,100,0,0,0,100,0),
(@PATH,2,-7620.45,-985.011,440.036,100,0,0,0,100,0),
(@PATH,3,-7624.83,-986.701,440.016,100,0,0,0,100,0),
(@PATH,4,-7634.97,-989.994,440.263,100,0,0,0,100,0),
(@PATH,5,-7644.41,-979.606,440.263,100,0,0,0,100,0),
(@PATH,6,-7649.09,-972.294,440.267,100,0,0,0,100,0),
(@PATH,7,-7626,-977.404,440.035,100,0,0,0,100,0),
(@PATH,8,-7622.68,-987.74,440.021,100,0,0,0,100,0),
(@PATH,9,-7636.27,-1000.11,440.263,100,0,0,0,100,0),
(@PATH,10,-7637.4,-1010.43,439.987,100,0,0,0,100,0),
(@PATH,11,-7647.33,-1011.35,439.986,100,0,0,0,100,0),
(@PATH,12,-7658.34,-1002.13,439.986,100,0,0,0,100,0),
(@PATH,13,-7661.77,-988.569,439.986,100,0,0,0,100,0),
(@PATH,14,-7649.55,-984.355,440.263,100,0,0,0,100,0),
(@PATH,15,-7637.2,-978.46,439.992,100,0,0,0,100,0),
(@PATH,16,-7634.49,-969.407,440.025,100,0,0,0,100,0),
(@PATH,17,-7626.36,-967.776,440.059,100,0,0,0,100,0),
(@PATH,18,-7619.71,-975.417,440.273,100,0,0,0,100,0),
(@PATH,19,-7614.9,-986.836,440.052,100,0,0,0,100,0),
(@PATH,20,-7619.72,-993.668,440.017,100,0,0,0,100,0),
(@PATH,21,-7626.13,-996.64,440.263,100,0,0,0,100,0),
(@PATH,22,-7632.96,-996.521,440.263,100,0,0,0,100,0),
(@PATH,23,-7653.35,-993.444,439.987,100,0,0,0,100,0),
(@PATH,24,-7632.96,-996.521,440.263,100,0,0,0,100,0),
(@PATH,25,-7626.13,-996.64,440.263,100,0,0,0,100,0),
(@PATH,26,-7619.72,-993.668,440.017,100,0,0,0,100,0),
(@PATH,27,-7614.9,-986.836,440.052,100,0,0,0,100,0),
(@PATH,28,-7619.71,-975.417,440.273,100,0,0,0,100,0),
(@PATH,29,-7626.25,-967.696,440.312,100,0,0,0,100,0),
(@PATH,30,-7634.49,-969.407,440.025,100,0,0,0,100,0),
(@PATH,31,-7637.2,-978.46,439.992,100,0,0,0,100,0),
(@PATH,32,-7649.55,-984.355,440.263,100,0,0,0,100,0),
(@PATH,33,-7661.77,-988.569,439.986,100,0,0,0,100,0),
(@PATH,34,-7658.34,-1002.13,439.986,100,0,0,0,100,0),
(@PATH,35,-7647.33,-1011.35,439.986,100,0,0,0,100,0),
(@PATH,36,-7637.4,-1010.43,439.987,100,0,0,0,100,0),
(@PATH,37,-7636.27,-1000.11,440.263,100,0,0,0,100,0),
(@PATH,38,-7622.68,-987.74,440.021,100,0,0,0,100,0),
(@PATH,39,-7626,-977.404,440.035,100,0,0,0,100,0),
(@PATH,40,-7649.09,-972.294,440.267,100,0,0,0,100,0),
(@PATH,41,-7644.41,-979.606,440.263,100,0,0,0,100,0),
(@PATH,42,-7634.97,-989.994,440.263,100,0,0,0,100,0),
(@PATH,43,-7624.83,-986.701,440.016,100,0,0,0,100,0),
(@PATH,44,-7620.45,-985.011,440.036,100,0,0,0,100,0),
(@PATH,45,-7610.64,-984.548,440.202,100,0,0,0,100,0),
(@PATH,46,-7595.67,-988.994,440.091,100,0,0,0,100,0);

SET @NPC := @CGUID+46;
SET @PATH := @NPC*10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES
(@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` VALUES
(@PATH,1,-7701.18,-1089.75,449.118,100,0,0,0,100,0),
(@PATH,2,-7693.23,-1096.28,449.123,100,0,0,0,100,0),
(@PATH,3,-7687.57,-1104.84,449.119,100,0,0,0,100,0),
(@PATH,4,-7680.34,-1118.28,449.107,100,0,0,0,100,0),
(@PATH,5,-7670.01,-1119.68,449.152,100,0,0,0,100,0),
(@PATH,6,-7658.76,-1114.88,449.159,100,0,0,0,100,0),
(@PATH,7,-7665.08,-1108.27,449.15,100,0,0,0,100,0),
(@PATH,8,-7671.08,-1100.43,449.142,100,0,0,0,100,0),
(@PATH,9,-7678.17,-1087.58,449.135,100,0,0,0,100,0),
(@PATH,10,-7672.32,-1084.58,449.147,100,0,0,0,100,0),
(@PATH,11,-7661.63,-1091.06,449.163,100,0,0,0,100,0),
(@PATH,12,-7651.39,-1110.78,449.174,100,0,0,0,100,0),
(@PATH,13,-7644.75,-1097.22,449.164,100,0,0,0,100,0),
(@PATH,14,-7639.31,-1088.74,449.164,100,0,0,0,100,0),
(@PATH,15,-7646.05,-1079.42,449.164,100,0,0,0,100,0),
(@PATH,16,-7639.31,-1088.74,449.164,100,0,0,0,100,0),
(@PATH,17,-7644.75,-1097.22,449.164,100,0,0,0,100,0),
(@PATH,18,-7651.39,-1110.78,449.174,100,0,0,0,100,0),
(@PATH,19,-7661.63,-1091.06,449.163,100,0,0,0,100,0),
(@PATH,20,-7672.32,-1084.58,449.147,100,0,0,0,100,0),
(@PATH,21,-7678.17,-1087.58,449.135,100,0,0,0,100,0),
(@PATH,22,-7671.08,-1100.43,449.142,100,0,0,0,100,0),
(@PATH,23,-7665.08,-1108.27,449.15,100,0,0,0,100,0),
(@PATH,24,-7658.76,-1114.88,449.159,100,0,0,0,100,0),
(@PATH,25,-7670.01,-1119.68,449.152,100,0,0,0,100,0),
(@PATH,26,-7680.34,-1118.28,449.107,100,0,0,0,100,0),
(@PATH,27,-7687.57,-1104.84,449.119,100,0,0,0,100,0),
(@PATH,28,-7693.23,-1096.28,449.123,100,0,0,0,100,0),
(@PATH,29,-7701.18,-1089.75,449.118,100,0,0,0,100,0),
(@PATH,30,-7712.01,-1073.58,445.176,100,0,0,0,100,0);

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1638997126204257695');

-- Eversong Woods cleanup and pathing #1

-- Remove some overspawns
DELETE FROM `creature` WHERE `guid` IN (55510,56027,56028,56029,56032,56033,56034,56036,56038,56047,56048,56051,56052,56055,56056,56057,56058,56060,56062,56063,56064,56065,56067,56077,56080,56082,56084,56086,56087,56088,56090,56095,56106,56123,56124,56127,56128,56135,56160,56161,55749,55751,55752,55757,55768,55778,55782,55783,55802,55807,55839,55921,55922,55946,55893,55987,55989,55990,55983);
DELETE FROM `creature_addon` WHERE `guid` IN (55510,56027,56028,56029,56032,56033,56034,56036,56038,56047,56048,56051,56052,56055,56056,56057,56058,56060,56062,56063,56064,56065,56067,56077,56080,56082,56084,56086,56087,56088,56090,56095,56106,56123,56124,56127,56128,56135,56160,56161,55749,55751,55752,55757,55768,55778,55782,55783,55802,55807,55839,55921,55922,55946,55893,55987,55989,55990,55983);

-- Add some missing Power Source Invisible Bunny reusing overspawn guids
DELETE FROM `creature` WHERE `guid` IN (56027,56028,56029);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(56027,17984,530,0,0,1,1,0,0,9336.025,-7884.329,161.58498,6.038839340209960937,300,0,0,57,0,0,0,0,0,'',0),
(56028,17984,530,0,0,1,1,0,0,9347.225,-7892.3345,161.81082,2.520992755889892578,300,0,0,57,0,0,0,0,0,'',0),
(56029,17984,530,0,0,1,1,0,0,9326.99,-7894.444,161.65091,0.841714262962341308,300,0,0,57,0,0,0,0,0,'',0);
DELETE FROM `creature_addon` WHERE `guid` IN (56027,56028,56029);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(56027,0,0,0,1,0,0, ''),
(56028,0,0,0,1,0,0, ''),
(56029,0,0,0,1,0,0, '');

-- Add some missing Darkwraith reusing overspawn guids
DELETE FROM `creature` WHERE `guid` IN (56032,56033);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(56032,15657,530,0,0,1,1,0,0,8115.5073,-6785.5317,69.30757,1.651989936828613281,300,5,0,184,350,1,0,0,0,'',0),
(56033,15657,530,0,0,1,1,0,0,8085.1216,-6721.6406,63.10817,1.595205545425415039,300,5,0,184,350,1,0,0,0,'',0);

-- Add some missing Duskwither Spire Power Source Satellite using spare guids
DELETE FROM `gameobject` WHERE `guid` IN (75243,75244);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`) VALUES
(75243,182092,530,3430,3480,1,1,9326.804,-7894.6196,161.72025,5.864307,0,0,-0.20791149,0.9781476,181,100,1,'',0),
(75244,182092,530,3430,3480,1,1,9347.304,-7892.5693,161.72743,0.17453213,0,0,0.08715534,0.9961947,181,100,1,'',0);

-- Add some missing Silvermoon Guardian using spare guids
DELETE FROM `creature` WHERE `guid` IN (56047,56048,56038);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(56047,16221,530,0,0,1,1,0,0,9266.465,-6550.5283,33.899437,0,300,0,0,1,0,2,0,0,0,'',0),
(56048,16221,530,0,0,1,1,0,0,9266.945,-6548.2163,33.959437,0,300,0,0,1,0,0,0,0,0,'',0),
(56038,16221,530,0,0,1,1,0,0,9309.086,-7262.725,13.300808,0,300,0,0,1,0,0,0,0,0,'',0);
DELETE FROM `creature_addon` WHERE `guid` IN (56047,56048,56038);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(56047,0,0,0,4097,0,0, ''),
(56048,0,0,0,4097,0,0, ''),
(56038,0,0,0,4097,0,0, '');

-- Pathing for Silvermoon Guardian Entry: 16221
SET @NPC := 56047;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9266.465,-6550.5283,33.899437,0,0,0,0,100,0),
(@PATH,2,9293.746,-6554.2383,34.66549,0,0,0,0,100,0),
(@PATH,3,9304.031,-6546.539,34.710205,0,0,0,0,100,0),
(@PATH,4,9293.746,-6554.2383,34.66549,0,0,0,0,100,0),
(@PATH,5,9266.465,-6550.5283,33.899437,0,0,0,0,100,0),
(@PATH,6,9250.883,-6548.068,32.404564,0,0,0,0,100,0),
(@PATH,7,9224.099,-6560.443,31.990011,0,0,0,0,100,0),
(@PATH,8,9193.114,-6584.202,32.66605,0,0,0,0,100,0),
(@PATH,9,9167.324,-6612.1104,31.284536,0,0,0,0,100,0),
(@PATH,10,9133.162,-6619.7676,28.557425,0,0,0,0,100,0),
(@PATH,11,9114.433,-6633.276,25.546194,0,0,0,0,100,0),
(@PATH,12,9097.9,-6655.489,22.157452,0,0,0,0,100,0),
(@PATH,13,9105.405,-6682.3037,21.1005,0,0,0,0,100,0),
(@PATH,14,9067.467,-6683.3013,17.133951,0,0,0,0,100,0),
(@PATH,15,9099.714,-6683.9517,20.850382,0,0,0,0,100,0),
(@PATH,16,9133.104,-6695.377,23.682104,0,0,0,0,100,0),
(@PATH,17,9167.279,-6711.8447,25.629526,0,0,0,0,100,0),
(@PATH,18,9199.781,-6718.539,25.85908,0,0,0,0,100,0),
(@PATH,19,9210.716,-6723.7095,25.60611,0,0,0,0,100,0),
(@PATH,20,9233.276,-6753.362,25.13524,0,0,0,0,100,0),
(@PATH,21,9245.07,-6795.2314,23.175833,0,0,0,0,100,0),
(@PATH,22,9243.104,-6833.158,17.046247,0,0,0,0,100,0),
(@PATH,23,9222.052,-6864.4595,11.268669,0,0,0,0,100,0),
(@PATH,24,9243.097,-6833.186,16.985456,0,0,0,0,100,0),
(@PATH,25,9245.063,-6795.26,23.050833,0,0,0,0,100,0),
(@PATH,26,9233.276,-6753.362,25.13524,0,0,0,0,100,0),
(@PATH,27,9210.716,-6723.7095,25.60611,0,0,0,0,100,0),
(@PATH,28,9199.781,-6718.539,25.85908,0,0,0,0,100,0),
(@PATH,29,9167.279,-6711.8447,25.629526,0,0,0,0,100,0),
(@PATH,30,9133.104,-6695.377,23.682104,0,0,0,0,100,0),
(@PATH,31,9099.714,-6683.9517,20.850382,0,0,0,0,100,0),
(@PATH,32,9067.467,-6683.3013,17.133951,0,0,0,0,100,0),
(@PATH,33,9105.405,-6682.3037,21.1005,0,0,0,0,100,0),
(@PATH,34,9097.9,-6655.489,22.157452,0,0,0,0,100,0),
(@PATH,35,9114.433,-6633.276,25.546194,0,0,0,0,100,0),
(@PATH,36,9133.075,-6619.799,28.557425,0,0,0,0,100,0),
(@PATH,37,9167.324,-6612.1104,31.284536,0,0,0,0,100,0),
(@PATH,38,9193.114,-6584.202,32.66605,0,0,0,0,100,0),
(@PATH,39,9224.099,-6560.443,31.990011,0,0,0,0,100,0),
(@PATH,40,9250.883,-6548.068,32.404564,0,0,0,0,100,0);
-- Formation
DELETE FROM `creature_formations` WHERE `leaderGUID`=56047;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(56047,56048,2,90,514,0,0),
(56047,56047,0,0,2,0,0);

-- Pathing for Silvermoon Guardian Entry: 16221
SET @NPC := 56888;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8715.267,`position_y`=-6672.605,`position_z`=70.42766 WHERE `guid`=@NPC;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=0,`position_x`=8713.267,`position_y`=-6674.605,`position_z`=70.42766 WHERE `guid`=56887;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8715.267,-6672.605,70.42766,0,1000,0,0,100,0),
(@PATH,2,8737.004,-6677.9756,69.692726,0,0,0,0,100,0),
(@PATH,3,8766.34,-6649.9844,65.844604,0,0,0,0,100,0),
(@PATH,4,8800.046,-6648.526,58.3881,0,0,0,0,100,0),
(@PATH,5,8833.269,-6643.5005,50.18699,0,0,0,0,100,0),
(@PATH,6,8849.173,-6651.176,47.035736,0,0,0,0,100,0),
(@PATH,7,8866.991,-6675.4517,41.270267,0,0,0,0,100,0),
(@PATH,8,8899.804,-6689.4243,34.136967,0,0,0,0,100,0),
(@PATH,9,8916.354,-6683.544,30.945305,0,0,0,0,100,0),
(@PATH,10,8932.791,-6675.3047,27.625359,0,0,0,0,100,0),
(@PATH,11,8966.553,-6677.99,19.577826,0,0,0,0,100,0),
(@PATH,12,8993.152,-6682.3535,12.287277,0,0,0,0,100,0),
(@PATH,13,8954.701,-6678.256,22.425604,0,0,0,0,100,0),
(@PATH,14,8920.981,-6691.671,30.165886,0,0,0,0,100,0),
(@PATH,15,8900.156,-6691.5723,34.207634,0,0,0,0,100,0),
(@PATH,16,8874.535,-6684.9375,38.95142,0,0,0,0,100,0),
(@PATH,17,8840.451,-6660.2134,47.16092,0,0,0,0,100,0),
(@PATH,18,8826.833,-6652.768,50.834267,0,0,0,0,100,0),
(@PATH,19,8788.527,-6658.085,61.695183,0,0,0,0,100,0),
(@PATH,20,8766.815,-6659.2095,65.99828,0,0,0,0,100,0),
(@PATH,21,8754.134,-6666.499,67.703735,0,0,0,0,100,0),
(@PATH,22,8731.106,-6700.3823,72.841774,0,0,0,0,100,0),
(@PATH,23,8716.5205,-6733.499,80.80049,0,0,0,0,100,0),
(@PATH,24,8716.629,-6767.98,88.37359,0,0,0,0,100,0),
(@PATH,25,8711.674,-6779.87,89.74212,0,0,0,0,100,0),
(@PATH,26,8703.4795,-6790.086,91.71819,0,1000,0,0,100,0),
(@PATH,27,8711.617,-6779.955,89.72039,0,0,0,0,100,0),
(@PATH,28,8716.629,-6767.98,88.37359,0,0,0,0,100,0),
(@PATH,29,8716.5205,-6733.499,80.80049,0,0,0,0,100,0),
(@PATH,30,8731.04,-6700.5215,72.90366,0,0,0,0,100,0),
(@PATH,31,8754.134,-6666.499,67.703735,0,0,0,0,100,0),
(@PATH,32,8766.815,-6659.2095,65.99828,0,0,0,0,100,0),
(@PATH,33,8788.527,-6658.085,61.695183,0,0,0,0,100,0),
(@PATH,34,8826.833,-6652.768,50.834267,0,0,0,0,100,0),
(@PATH,35,8840.451,-6660.2134,47.16092,0,0,0,0,100,0),
(@PATH,36,8874.453,-6684.9043,38.96497,0,0,0,0,100,0),
(@PATH,37,8900.156,-6691.5723,34.207634,0,0,0,0,100,0),
(@PATH,38,8920.981,-6691.671,30.165886,0,0,0,0,100,0),
(@PATH,39,8954.594,-6678.215,22.448065,0,0,0,0,100,0),
(@PATH,40,8993.152,-6682.3535,12.287277,0,0,0,0,100,0),
(@PATH,41,8966.553,-6677.99,19.577826,0,0,0,0,100,0),
(@PATH,42,8932.791,-6675.3047,27.625359,0,0,0,0,100,0),
(@PATH,43,8916.354,-6683.544,30.945305,0,0,0,0,100,0),
(@PATH,44,8899.804,-6689.4243,34.136967,0,0,0,0,100,0),
(@PATH,45,8866.991,-6675.4517,41.270267,0,0,0,0,100,0),
(@PATH,46,8849.173,-6651.176,47.035736,0,0,0,0,100,0),
(@PATH,47,8833.269,-6643.5005,50.18699,0,0,0,0,100,0),
(@PATH,48,8800.046,-6648.526,58.3881,0,0,0,0,100,0),
(@PATH,49,8766.34,-6649.9844,65.844604,0,0,0,0,100,0),
(@PATH,50,8737.004,-6677.9756,69.692726,0,0,0,0,100,0);
-- Formation
DELETE FROM `creature_formations` WHERE `leaderGUID`=56888;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(56888,56887,2,90,514,0,0),
(56888,56888,0,0,2,0,0);

-- Pathing for Silvermoon Guardian Entry: 16221
SET @NPC := 56871;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=9311.086,`position_y`=-7261.725,`position_z`=13.300808 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,4097,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9311.086,-7261.725,13.300808,0,0,0,0,100,0),
(@PATH,2,9312.317,-7234.0015,14.51022,0,0,0,0,100,0),
(@PATH,3,9322.408,-7199.8696,15.234063,0,0,0,0,100,0),
(@PATH,4,9320.96,-7166.6113,15.805371,0,0,0,0,100,0),
(@PATH,5,9307.8545,-7133.2812,16.33455,0,0,0,0,100,0),
(@PATH,6,9286.226,-7100.03,15.187792,0,0,0,0,100,0),
(@PATH,7,9282.248,-7066.9688,11.23555,0,0,0,0,100,0),
(@PATH,8,9284.927,-7099.809,15.150101,0,0,0,0,100,0),
(@PATH,9,9308.952,-7133.271,16.351397,0,0,0,0,100,0),
(@PATH,10,9320.55,-7159.6147,15.901868,0,0,0,0,100,0),
(@PATH,11,9349.02,-7142.9634,10.492333,0,0,0,0,100,0),
(@PATH,12,9359.285,-7124.1147,9.333045,0,0,0,0,100,0),
(@PATH,13,9349.02,-7142.9634,10.492333,0,0,0,0,100,0),
(@PATH,14,9320.55,-7159.6147,15.901868,0,0,0,0,100,0),
(@PATH,15,9308.952,-7133.271,16.351397,0,0,0,0,100,0),
(@PATH,16,9284.927,-7099.809,15.150101,0,0,0,0,100,0),
(@PATH,17,9282.248,-7066.9688,11.23555,0,0,0,0,100,0),
(@PATH,18,9286.226,-7100.03,15.187792,0,0,0,0,100,0),
(@PATH,19,9307.8545,-7133.2812,16.33455,0,0,0,0,100,0),
(@PATH,20,9320.96,-7166.6113,15.805371,0,0,0,0,100,0),
(@PATH,21,9322.408,-7199.8696,15.234063,0,0,0,0,100,0),
(@PATH,22,9312.317,-7234.0015,14.51022,0,0,0,0,100,0),
(@PATH,23,9311.086,-7261.725,13.300808,0,0,0,0,100,0),
(@PATH,24,9325.782,-7286.502,13.994352,0,0,0,0,100,0),
(@PATH,25,9363.542,-7313.9688,7.1693053,0,0,0,0,100,0),
(@PATH,26,9325.782,-7286.502,13.994352,0,0,0,0,100,0);
-- Formation
DELETE FROM `creature_formations` WHERE `leaderGUID`=56871;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(56871,56038,2,90,514,0,0),
(56871,56871,0,0,2,0,0);

-- Pathing for Silvermoon Guardian Entry: 16221
SET @NPC := 56878;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=9292.928,`position_y`=-7301.164,`position_z`=17.252733 WHERE `guid`=@NPC;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=0,`position_x`=9294.928,`position_y`=-7302.164,`position_z`=17.252733 WHERE `guid`=56877;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,4097,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9292.928,-7301.164,17.252733,0,0,0,0,100,0),
(@PATH,2,9271.351,-7338.791,21.59462,0,0,0,0,100,0),
(@PATH,3,9251.171,-7374.506,28.978027,0,0,0,0,100,0),
(@PATH,4,9244.802,-7432.7153,35.70986,0,0,0,0,100,0),
(@PATH,5,9234.661,-7446.4116,38.540638,0,0,0,0,100,0),
(@PATH,6,9199.038,-7456.0234,49.032917,0,0,0,0,100,0),
(@PATH,7,9180.372,-7453.347,55.634907,0,0,0,0,100,0),
(@PATH,8,9162.864,-7458.259,62.840767,0,0,0,0,100,0),
(@PATH,9,9150.1455,-7475.349,68.959274,0,0,0,0,100,0),
(@PATH,10,9142.2,-7490.788,73.909164,0,0,0,0,100,0),
(@PATH,11,9104.85,-7483.8105,78.25739,0,0,0,0,100,0),
(@PATH,12,9090.166,-7472.5957,80.16694,0,0,0,0,100,0),
(@PATH,13,9077.698,-7456.56,82.935486,0,0,0,0,100,0),
(@PATH,14,9066.793,-7450.982,83.185486,0,0,0,0,100,0),
(@PATH,15,9052.861,-7453.259,83.38729,0,1000,0,0,100,0),
(@PATH,16,9066.793,-7450.982,83.185486,0,0,0,0,100,0),
(@PATH,17,9077.698,-7456.56,82.935486,0,0,0,0,100,0),
(@PATH,18,9090.166,-7472.5957,80.16694,0,0,0,0,100,0),
(@PATH,19,9104.715,-7483.78,78.2541,0,0,0,0,100,0),
(@PATH,20,9142.2,-7490.788,73.909164,0,0,0,0,100,0),
(@PATH,21,9150.1455,-7475.349,68.959274,0,0,0,0,100,0),
(@PATH,22,9162.864,-7458.259,62.840767,0,0,0,0,100,0),
(@PATH,23,9180.372,-7453.347,55.634907,0,0,0,0,100,0),
(@PATH,24,9199.038,-7456.0234,49.032917,0,0,0,0,100,0),
(@PATH,25,9234.661,-7446.4116,38.540638,0,0,0,0,100,0),
(@PATH,26,9244.802,-7432.7153,35.70986,0,0,0,0,100,0),
(@PATH,27,9258.224,-7433.605,35.910206,0,0,0,0,100,0),
(@PATH,28,9264.931,-7449.0337,35.88042,0,0,0,0,100,0),
(@PATH,29,9259.942,-7466.4087,35.75542,0,0,0,0,100,0),
(@PATH,30,9259.421,-7484.172,35.619377,0,1000,0,0,100,0),
(@PATH,31,9259.924,-7465.761,35.75542,0,0,0,0,100,0),
(@PATH,32,9264.639,-7445.549,35.893726,0,0,0,0,100,0),
(@PATH,33,9246.522,-7422.511,34.610497,0,0,0,0,100,0),
(@PATH,34,9251.119,-7374.5923,29.04486,0,0,0,0,100,0),
(@PATH,35,9271.299,-7338.877,21.626724,0,0,0,0,100,0),
(@PATH,36,9292.928,-7301.164,17.252733,0,0,0,0,100,0),
(@PATH,37,9311.74,-7281.8105,14.119352,0,1000,0,0,100,0);
-- Formation
UPDATE `creature_formations` SET `dist`=2 WHERE `leaderGUID`=56878 AND `memberGUID`=56877;

-- Pathing for Amani Berserker Entry: 15643
SET @NPC := 55624;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8739.701,`position_y`=-7777.983,`position_z`=163.34781 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8739.701,-7777.983,163.34781,0,0,0,0,100,0),
(@PATH,2,8708.333,-7781.7915,165.10071,0,0,0,0,100,0),
(@PATH,3,8688.3,-7794.455,164.29652,0,0,0,0,100,0),
(@PATH,4,8685.256,-7822.624,162.0572,0,0,0,0,100,0),
(@PATH,5,8691.55,-7852.5938,159.37434,0,0,0,0,100,0),
(@PATH,6,8676.01,-7868.4785,156.82329,0,0,0,0,100,0),
(@PATH,7,8642.383,-7876.4062,155.54434,0,0,0,0,100,0),
(@PATH,8,8607.051,-7899.4395,154.97765,0,0,0,0,100,0),
(@PATH,9,8586.579,-7918.808,155.02364,0,0,0,0,100,0),
(@PATH,10,8548.444,-7940.863,155.0197,0,0,0,0,100,0),
(@PATH,11,8586.579,-7918.808,155.02364,0,0,0,0,100,0),
(@PATH,12,8607.051,-7899.4395,154.97765,0,0,0,0,100,0),
(@PATH,13,8642.383,-7876.4062,155.54434,0,0,0,0,100,0),
(@PATH,14,8676.01,-7868.4785,156.82329,0,0,0,0,100,0),
(@PATH,15,8691.55,-7852.5938,159.37434,0,0,0,0,100,0),
(@PATH,16,8685.256,-7822.624,162.0572,0,0,0,0,100,0),
(@PATH,17,8688.3,-7794.455,164.29652,0,0,0,0,100,0),
(@PATH,18,8708.333,-7781.7915,165.10071,0,0,0,0,100,0);

-- Pathing for Amani ShadowPriest Entry: 15642
SET @NPC := 55619;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8449.852,`position_y`=-7710.1978,`position_z`=144.80336 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8449.852,-7710.1978,144.80336,0,0,0,0,100,0),
(@PATH,2,8471.3545,-7684.3726,145.89444,0,0,0,0,100,0),
(@PATH,3,8480.503,-7665.718,147.74254,0,0,0,0,100,0),
(@PATH,4,8473.413,-7633.49,151.71812,0,0,0,0,100,0),
(@PATH,5,8470.696,-7618.145,152.99092,0,0,0,0,100,0),
(@PATH,6,8473.393,-7633.421,151.8275,0,0,0,0,100,0),
(@PATH,7,8480.482,-7665.6465,147.71812,0,0,0,0,100,0),
(@PATH,8,8471.3545,-7684.3726,145.89444,0,0,0,0,100,0),
(@PATH,9,8449.852,-7710.1978,144.80336,0,0,0,0,100,0),
(@PATH,10,8449.25,-7751.518,144.8339,0,0,0,0,100,0),
(@PATH,11,8436.99,-7769.77,144.895,0,0,0,0,100,0),
(@PATH,12,8433.621,-7799.4844,146.36778,0,0,0,0,100,0),
(@PATH,13,8423.981,-7833.0625,152.54897,0,0,0,0,100,0),
(@PATH,14,8407.39,-7866.7876,162.19951,0,0,0,0,100,0),
(@PATH,15,8398.743,-7879.6094,164.93962,0,0,0,0,100,0),
(@PATH,16,8365.892,-7885.6416,169.14096,0,0,0,0,100,0),
(@PATH,17,8333.599,-7897.1094,173.10666,0,0,0,0,100,0),
(@PATH,18,8333.981,-7929.1016,181.71889,0,0,0,0,100,0),
(@PATH,19,8351.508,-7941.29,183.26062,0,0,0,0,100,0),
(@PATH,20,8333.981,-7929.1016,181.71889,0,0,0,0,100,0),
(@PATH,21,8333.599,-7897.1094,173.10666,0,0,0,0,100,0),
(@PATH,22,8365.892,-7885.6416,169.14096,0,0,0,0,100,0),
(@PATH,23,8398.743,-7879.6094,164.93962,0,0,0,0,100,0),
(@PATH,24,8407.39,-7866.7876,162.19951,0,0,0,0,100,0),
(@PATH,25,8423.981,-7833.0625,152.54897,0,0,0,0,100,0),
(@PATH,26,8433.621,-7799.4844,146.36778,0,0,0,0,100,0),
(@PATH,27,8436.99,-7769.77,144.895,0,0,0,0,100,0),
(@PATH,28,8449.25,-7751.518,144.8339,0,0,0,0,100,0);

-- Pathing for Amani Berserker Entry: 15643
SET @NPC := 55639;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8440.423,`position_y`=-7609.488,`position_z`=155.7232 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8440.423,-7609.488,155.7232,0,0,0,0,100,0),
(@PATH,2,8454.604,-7621.643,154.98322,0,0,0,0,100,0),
(@PATH,3,8470.028,-7621.9287,152.79707,0,0,0,0,100,0),
(@PATH,4,8475.625,-7595.8706,152.93541,0,0,0,0,100,0),
(@PATH,5,8470.017,-7622.4165,152.73848,0,0,0,0,100,0),
(@PATH,6,8454.811,-7621.7085,154.95844,0,0,0,0,100,0),
(@PATH,7,8441.025,-7609.893,155.72345,0,0,0,0,100,0),
(@PATH,8,8432.786,-7589.0693,157.67134,0,0,0,0,100,0),
(@PATH,9,8428.025,-7574.936,161.53075,0,0,0,0,100,0),
(@PATH,10,8423.191,-7562.6475,161.53949,0,0,0,0,100,0),
(@PATH,11,8412.863,-7557.9478,161.53946,0,0,0,0,100,0),
(@PATH,12,8411.968,-7551.933,166.15749,0,0,0,0,100,0),
(@PATH,13,8416.959,-7546.394,169.05994,0,0,0,0,100,0),
(@PATH,14,8412.743,-7532.8394,169.00816,0,0,0,0,100,0),
(@PATH,15,8422.138,-7531.8853,171.82393,0,0,0,0,100,0),
(@PATH,16,8432.289,-7555.838,174.46721,0,0,0,0,100,0),
(@PATH,17,8426.373,-7565.915,174.59811,0,0,0,0,100,0),
(@PATH,18,8416.951,-7566.3345,174.50092,0,0,0,0,100,0),
(@PATH,19,8406.687,-7552.566,174.37009,0,0,0,0,100,0),
(@PATH,20,8417.006,-7543.28,174.58276,0,0,0,0,100,0),
(@PATH,21,8426.848,-7544.2266,174.45807,0,0,0,0,100,0),
(@PATH,22,8433.168,-7538.241,174.52577,0,0,0,0,100,0),
(@PATH,23,8422.07,-7531.8345,171.78691,0,0,0,0,100,0),
(@PATH,24,8412.6875,-7532.7935,169.0097,0,0,0,0,100,0),
(@PATH,25,8416.934,-7546.475,169.05768,0,0,0,0,100,0),
(@PATH,26,8411.95,-7551.568,166.31197,0,0,0,0,100,0),
(@PATH,27,8413.066,-7558.1426,161.53946,0,0,0,0,100,0),
(@PATH,28,8422.981,-7562.5566,161.53949,0,0,0,0,100,0),
(@PATH,29,8427.872,-7575.2065,161.53027,0,0,0,0,100,0),
(@PATH,30,8432.786,-7589.0693,157.67134,0,0,0,0,100,0);

-- Pathing for Amani ShadowPriest Entry: 15642
SET @NPC := 55607;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8402.604,`position_y`=-7881.9585,`position_z`=164.44695 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8402.604,-7881.9585,164.44695,0,0,0,0,100,0),
(@PATH,2,8375.474,-7886.4443,168.01872,0,0,0,0,100,0),
(@PATH,3,8333.938,-7894.125,172.73544,0,0,0,0,100,0),
(@PATH,4,8334.115,-7932.368,182.37807,0,0,0,0,100,0),
(@PATH,5,8345.095,-7940.132,182.76709,0,0,0,0,100,0),
(@PATH,6,8334.115,-7932.368,182.37807,0,0,0,0,100,0),
(@PATH,7,8333.938,-7894.125,172.73544,0,0,0,0,100,0),
(@PATH,8,8375.474,-7886.4443,168.01872,0,0,0,0,100,0),
(@PATH,9,8402.604,-7881.9585,164.44695,0,0,0,0,100,0),
(@PATH,10,8435.256,-7905.078,160.32655,0,0,0,0,100,0),
(@PATH,11,8472.4795,-7926.1475,157.72672,0,0,0,0,100,0),
(@PATH,12,8521.028,-7925.961,155.03665,0,0,0,0,100,0),
(@PATH,13,8557.657,-7923.7812,155.03665,0,0,0,0,100,0),
(@PATH,14,8577.352,-7916.4316,155.02364,0,0,0,0,100,0),
(@PATH,15,8614.099,-7897.3066,154.97765,0,0,0,0,100,0),
(@PATH,16,8656.44,-7921.769,153.57149,0,0,0,0,100,0),
(@PATH,17,8666.668,-7952.2275,151.84846,0,0,0,0,100,0),
(@PATH,18,8656.44,-7921.769,153.57149,0,0,0,0,100,0),
(@PATH,19,8614.099,-7897.3066,154.97765,0,0,0,0,100,0),
(@PATH,20,8577.352,-7916.4316,155.02364,0,0,0,0,100,0),
(@PATH,21,8557.657,-7923.7812,155.03665,0,0,0,0,100,0),
(@PATH,22,8521.028,-7925.961,155.03665,0,0,0,0,100,0),
(@PATH,23,8472.4795,-7926.1475,157.72672,0,0,0,0,100,0),
(@PATH,24,8435.256,-7905.078,160.32655,0,0,0,0,100,0);

-- Pathing for Sailor Melinan Entry: 18954
SET @NPC := 68083;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8843.806,`position_y`=-6286.7773,`position_z`=9.338693 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8843.806,-6286.7773,9.338693,3.665191411972045898,36000,0,0,100,0),
(@PATH,2,8853.231,-6290.864,8.56672,0,0,0,0,100,0),
(@PATH,3,8862.205,-6290.213,6.8762903,0,0,0,0,100,0),
(@PATH,4,8875.48,-6283.4053,3.8297653,0,105000,0,0,100,0),
(@PATH,5,8868.764,-6286.587,5.4465256,0,0,0,0,100,0),
(@PATH,6,8861.548,-6288.801,6.979684,0,0,0,0,100,0),
(@PATH,7,8854.9375,-6287.112,8.096261,0,10000,0,2,100,0),
(@PATH,8,8843.806,-6286.7773,9.338693,0,0,0,0,100,0);
-- Waypoint script
DELETE FROM `waypoint_scripts` WHERE `id`=2;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES
(2,3,1,7,0,0,0,0,0,0,2);

-- Pathing for Mmmrrrggglll Entry: 15937
SET @NPC := 41792;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8795.872,`position_y`=-5699.397,`position_z`=0.4163921 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8795.872,-5699.397,0.4163921,0,0,0,0,100,0),
(@PATH,2,8786.552,-5724.9536,0.7537744,0,0,0,0,100,0),
(@PATH,3,8773.118,-5746.561,0.63274,0,0,0,0,100,0),
(@PATH,4,8776.064,-5764.418,0.75774,0,0,0,0,100,0),
(@PATH,5,8787.995,-5771.9478,0.759396,0,0,0,0,100,0),
(@PATH,6,8814.725,-5764.4326,0.8268976,0,0,0,0,100,0),
(@PATH,7,8827.771,-5737.5835,1.2543879,0,0,0,0,100,0),
(@PATH,8,8848.254,-5721.6885,0.45521116,0,0,0,0,100,0),
(@PATH,9,8867.356,-5726.4126,0.4445238,0,0,0,0,100,0),
(@PATH,10,8883.812,-5747.1104,0.17871928,0,0,0,0,100,0),
(@PATH,11,8867.356,-5726.4126,0.4445238,0,0,0,0,100,0),
(@PATH,12,8848.254,-5721.6885,0.45521116,0,0,0,0,100,0),
(@PATH,13,8827.771,-5737.5835,1.2543879,0,0,0,0,100,0),
(@PATH,14,8814.725,-5764.4326,0.8268976,0,0,0,0,100,0),
(@PATH,15,8787.995,-5771.9478,0.759396,0,0,0,0,100,0),
(@PATH,16,8776.064,-5764.418,0.75774,0,0,0,0,100,0),
(@PATH,17,8773.118,-5746.561,0.63274,0,0,0,0,100,0),
(@PATH,18,8786.552,-5724.9536,0.7537744,0,0,0,0,100,0),
(@PATH,19,8795.872,-5699.397,0.4163921,0,0,0,0,100,0),
(@PATH,20,8781.479,-5680.3843,-0.25047803,0,0,0,0,100,0),
(@PATH,21,8767.351,-5680.68,0.14618945,0,0,0,0,100,0),
(@PATH,22,8744.045,-5689.8735,-0.11890793,0,0,0,0,100,0),
(@PATH,23,8739.509,-5695.4326,-0.3176384,0,0,0,0,100,0),
(@PATH,24,8726.128,-5724.388,0.25664043,0,0,0,0,100,0),
(@PATH,25,8714.528,-5728.1465,0.4713621,0,0,0,0,100,0),
(@PATH,26,8696.716,-5720.9287,0.6992543,0,0,0,0,100,0),
(@PATH,27,8668.3545,-5697.2036,0.9340935,0,0,0,0,100,0),
(@PATH,28,8664.459,-5679.8994,0.7701076,0,0,0,0,100,0),
(@PATH,29,8652.437,-5673.5864,0.8355373,0,0,0,0,100,0),
(@PATH,30,8638.227,-5666.572,0.09242058,0,0,0,0,100,0),
(@PATH,31,8628.131,-5665.4907,-0.15546131,0,0,0,0,100,0),
(@PATH,32,8621.211,-5667.7383,-0.046545446,0,0,0,0,100,0),
(@PATH,33,8628.131,-5665.4907,-0.15546131,0,0,0,0,100,0),
(@PATH,34,8638.227,-5666.572,0.09242058,0,0,0,0,100,0),
(@PATH,35,8652.437,-5673.5864,0.8355373,0,0,0,0,100,0),
(@PATH,36,8664.459,-5679.8994,0.7701076,0,0,0,0,100,0),
(@PATH,37,8668.3545,-5697.2036,0.9340935,0,0,0,0,100,0),
(@PATH,38,8696.716,-5720.9287,0.6992543,0,0,0,0,100,0),
(@PATH,39,8714.528,-5728.1465,0.4713621,0,0,0,0,100,0),
(@PATH,40,8726.128,-5724.388,0.25664043,0,0,0,0,100,0),
(@PATH,41,8739.509,-5695.4326,-0.3176384,0,0,0,0,100,0),
(@PATH,42,8744.045,-5689.8735,-0.11890793,0,0,0,0,100,0),
(@PATH,43,8767.351,-5680.68,0.14618945,0,0,0,0,100,0),
(@PATH,44,8781.479,-5680.3843,-0.25047803,0,0,0,0,100,0);

-- Pathing for Grimscale Murloc Entry: 15668
SET @NPC := 56173;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8776.913,`position_y`=-5755.5244,`position_z`=0.63274 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8776.913,-5755.5244,0.63274,0,0,0,0,100,0),
(@PATH,2,8744.874,-5759.063,1.2113051,0,0,0,0,100,0),
(@PATH,3,8723.714,-5744.651,0.7131118,0,0,0,0,100,0),
(@PATH,4,8711.352,-5730.1367,0.7699461,0,0,0,0,100,0),
(@PATH,5,8694.169,-5720.462,0.8059437,0,0,0,0,100,0),
(@PATH,6,8687.856,-5701.797,-0.36068225,0,0,0,0,100,0),
(@PATH,7,8668.149,-5673.8145,-0.5344124,0,0,0,0,100,0),
(@PATH,8,8641.773,-5678.348,1.1074489,0,0,0,0,100,0),
(@PATH,9,8617.492,-5680.574,0.76229244,0,0,0,0,100,0),
(@PATH,10,8641.773,-5678.348,1.1074489,0,0,0,0,100,0),
(@PATH,11,8668.149,-5673.8145,-0.5344124,0,0,0,0,100,0),
(@PATH,12,8687.856,-5701.797,-0.36068225,0,0,0,0,100,0),
(@PATH,13,8694.169,-5720.462,0.8059437,0,0,0,0,100,0),
(@PATH,14,8711.352,-5730.1367,0.7699461,0,0,0,0,100,0),
(@PATH,15,8723.714,-5744.651,0.7131118,0,0,0,0,100,0),
(@PATH,16,8744.874,-5759.063,1.2113051,0,0,0,0,100,0),
(@PATH,17,8776.913,-5755.5244,0.63274,0,0,0,0,100,0),
(@PATH,18,8798.979,-5763.8174,0.47844315,0,0,0,0,100,0);

-- Pathing for Grimscale Oracle Entry: 15669
SET @NPC := 56221;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=8812.163,`position_y`=-5716.2886,`position_z`=-3.05413 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8812.163,-5716.2886,-3.05413,0,0,0,0,100,0),
(@PATH,2,8834.239,-5723.729,1.0582385,0,0,0,0,100,0),
(@PATH,3,8858.551,-5719.178,0.5582385,0,0,0,0,100,0),
(@PATH,4,8872.23,-5724.7383,0.4642992,0,0,0,0,100,0),
(@PATH,5,8878.721,-5749.0767,0.42365336,0,0,0,0,100,0),
(@PATH,6,8877.301,-5770.9644,0.26502514,0,0,0,0,100,0),
(@PATH,7,8878.721,-5749.0767,0.42365336,0,0,0,0,100,0),
(@PATH,8,8872.23,-5724.7383,0.4642992,0,0,0,0,100,0),
(@PATH,9,8858.551,-5719.178,0.5582385,0,0,0,0,100,0),
(@PATH,10,8834.239,-5723.729,1.0582385,0,0,0,0,100,0),
(@PATH,11,8812.163,-5716.2886,-3.05413,0,0,0,0,100,0),
(@PATH,12,8789.763,-5709.5845,0.8414209,0,0,0,0,100,0),
(@PATH,13,8771.16,-5697.6675,0.7580669,0,0,0,0,100,0),
(@PATH,14,8754.548,-5692.8604,0.8107796,0,0,0,0,100,0),
(@PATH,15,8743.554,-5705.948,0.5454352,0,0,0,0,100,0),
(@PATH,16,8754.548,-5692.8604,0.8107796,0,0,0,0,100,0),
(@PATH,17,8771.16,-5697.6675,0.7580669,0,0,0,0,100,0),
(@PATH,18,8789.763,-5709.5845,0.8414209,0,0,0,0,100,0);

-- Pathing for Duskwither Apprentice Entry: 15965
SET @NPC := 56405;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=9334.915,`position_y`=-7894.807,`position_z`=144.7252 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9334.915,-7894.807,144.7252,0,0,0,0,100,0),
(@PATH,2,9340.88,-7893.6216,147.05644,0,0,0,0,100,0),
(@PATH,3,9346.466,-7887.4688,150.18202,0,0,0,0,100,0),
(@PATH,4,9345.864,-7879.224,153.2527,0,0,0,0,100,0),
(@PATH,5,9339.468,-7873.672,156.35414,0,0,0,0,100,0),
(@PATH,6,9330.283,-7875.943,158.44261,0,0,0,0,100,0),
(@PATH,7,9330.272,-7887.798,158.44608,0,0,0,0,100,0),
(@PATH,8,9335.84,-7894.0103,158.4445,0,0,0,0,100,0),
(@PATH,9,9335.18,-7911.599,159.6831,0,0,0,0,100,0),
(@PATH,10,9330.139,-7922.3716,163.60176,0,0,0,0,100,0),
(@PATH,11,9320.935,-7929.296,167.39581,0,0,0,0,100,0),
(@PATH,12,9306.057,-7928.968,172.38785,0,0,0,0,100,0),
(@PATH,13,9299.762,-7925.7188,174.80052,0,0,0,0,100,0),
(@PATH,14,9306.057,-7928.968,172.38785,0,0,0,0,100,0),
(@PATH,15,9320.935,-7929.296,167.39581,0,0,0,0,100,0),
(@PATH,16,9330.139,-7922.3716,163.60176,0,0,0,0,100,0),
(@PATH,17,9335.18,-7911.599,159.6831,0,0,0,0,100,0),
(@PATH,18,9335.84,-7894.0103,158.4445,0,0,0,0,100,0),
(@PATH,19,9330.272,-7887.798,158.44608,0,0,0,0,100,0),
(@PATH,20,9330.283,-7875.943,158.44261,0,0,0,0,100,0),
(@PATH,21,9339.468,-7873.672,156.35414,0,0,0,0,100,0),
(@PATH,22,9345.864,-7879.224,153.2527,0,0,0,0,100,0),
(@PATH,23,9346.466,-7887.4688,150.18202,0,0,0,0,100,0),
(@PATH,24,9341.025,-7893.593,147.09656,0,0,0,0,100,0),
(@PATH,25,9334.915,-7894.807,144.7252,0,0,0,0,100,0),
(@PATH,26,9328.581,-7891.8257,142.24612,0,0,0,0,100,0),
(@PATH,27,9330.153,-7879.1763,142.2461,0,0,0,0,100,0),
(@PATH,28,9341.002,-7878.423,142.2461,0,0,0,0,100,0),
(@PATH,29,9330.155,-7879.163,142.24608,0,0,0,0,100,0),
(@PATH,30,9328.581,-7891.8257,142.24612,0,0,0,0,100,0);

-- Pathing for Duskwither Apprentice Entry: 15965
SET @NPC := 56404;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=9352.737,`position_y`=-7826.364,`position_z`=136.56897 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9352.737,-7826.364,136.56897,0,0,0,0,100,0),
(@PATH,2,9339.851,-7826.8506,136.56897,0,0,0,0,100,0),
(@PATH,3,9329.074,-7833.479,136.56897,0,0,0,0,100,0),
(@PATH,4,9340.304,-7839.8193,136.56897,0,0,0,0,100,0),
(@PATH,5,9349.024,-7841.835,136.99594,0,0,0,0,100,0),
(@PATH,6,9354.132,-7858.1016,139.7893,0,0,0,0,100,0),
(@PATH,7,9344.591,-7875.2993,142.24606,0,0,0,0,100,0),
(@PATH,8,9337.407,-7874.2197,142.24608,0,0,0,0,100,0),
(@PATH,9,9326.295,-7880.8525,142.24623,0,0,0,0,100,0),
(@PATH,10,9343.286,-7893.066,142.24635,0,0,0,0,100,0),
(@PATH,11,9343.037,-7877.6865,142.24608,0,0,0,0,100,0),
(@PATH,12,9352.844,-7861.166,140.4133,0,0,0,0,100,0),
(@PATH,13,9348.811,-7840.8047,136.99594,0,0,0,0,100,0);

-- Pathing for Duskwither Apprentice Entry: 15965
SET @NPC := 56403;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=9327.173,`position_y`=-7905.4106,`position_z`=159.20566 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9327.173,-7905.4106,159.20566,0,0,0,0,100,0),
(@PATH,2,9334.15,-7906.174,159.20566,0,0,0,0,100,0),
(@PATH,3,9342.508,-7907.375,159.20564,0,0,0,0,100,0),
(@PATH,4,9353.493,-7899.934,159.20566,0,0,0,0,100,0),
(@PATH,5,9359.5205,-7887.4175,159.20566,0,0,0,0,100,0),
(@PATH,6,9357.104,-7873.2744,159.20566,0,0,0,0,100,0),
(@PATH,7,9346.516,-7863.237,159.20566,0,0,0,0,100,0),
(@PATH,8,9330.724,-7861.4946,159.20564,0,0,0,0,100,0),
(@PATH,9,9319.757,-7867.849,159.20566,0,0,0,0,100,0),
(@PATH,10,9312.864,-7881.393,159.20566,0,0,0,0,100,0),
(@PATH,11,9316.371,-7897.3325,159.20566,0,0,0,0,100,0);

-- Power Source Invisible Bunny SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=17984;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-63690,-63693,-63694,-63691,-56028,-56029,-63695,-63697) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-63690, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31628, 256, 0, 0, 0, 0, 10, 63692, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-63693, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31628, 256, 0, 0, 0, 0, 10, 63692, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-63694, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31628, 256, 0, 0, 0, 0, 10, 63692, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-63691, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31630, 256, 0, 0, 0, 0, 10, 56027, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-56028, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31630, 256, 0, 0, 0, 0, 10, 56027, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-56029, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31630, 256, 0, 0, 0, 0, 10, 56027, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-63695, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31631, 256, 0, 0, 0, 0, 10, 63696, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam'),
(-63697, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 2000, 11, 31631, 256, 0, 0, 0, 0, 10, 63696, 17984, 0, 0, 0, 0, 0, 'Power Source Invisible Bunny - OOC - Cast Green Beam');

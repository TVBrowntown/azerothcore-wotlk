INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1640126290282588522');

-- Pathing for Ghostlands Guardians Entry: 16541
SET @NPC := 81745;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7494.6353,`position_y`=-6887.5347,`position_z`=93.34903 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7494.6353,-6887.5347,93.34903,0,1000,0,0,100,0),
(@PATH,2,7478.612,-6901.51,97.81104,0,0,0,0,100,0),
(@PATH,3,7450.903,-6915.155,103.37486,0,0,0,0,100,0),
(@PATH,4,7433.0747,-6937.273,107.412704,0,0,0,0,100,0),
(@PATH,5,7425.6025,-6974.1714,112.75799,0,0,0,0,100,0),
(@PATH,6,7408.7446,-6988.838,111.95037,0,0,0,0,100,0),
(@PATH,7,7397.4453,-7007.23,104.892654,0,0,0,0,100,0),
(@PATH,8,7377.7446,-7025.279,97.13582,0,0,0,0,100,0),
(@PATH,9,7368.272,-7049.3535,91.127,0,0,0,0,100,0),
(@PATH,10,7361.637,-7077.5127,81.03588,0,0,0,0,100,0),
(@PATH,11,7333.4126,-7099.643,65.10546,0,0,0,0,100,0),
(@PATH,12,7294.1772,-7106.22,54.32485,0,1000,0,0,100,0),
(@PATH,13,7333.4126,-7099.643,65.10546,0,0,0,0,100,0),
(@PATH,14,7361.637,-7077.5127,81.03588,0,0,0,0,100,0),
(@PATH,15,7368.272,-7049.3535,91.127,0,0,0,0,100,0),
(@PATH,16,7377.7446,-7025.279,97.13582,0,0,0,0,100,0),
(@PATH,17,7397.4453,-7007.23,104.892654,0,0,0,0,100,0),
(@PATH,18,7408.7446,-6988.838,111.95037,0,0,0,0,100,0),
(@PATH,19,7425.6025,-6974.1714,112.75799,0,0,0,0,100,0),
(@PATH,20,7433.0747,-6937.273,107.412704,0,0,0,0,100,0),
(@PATH,21,7450.903,-6915.155,103.37486,0,0,0,0,100,0),
(@PATH,22,7478.612,-6901.51,97.81104,0,0,0,0,100,0);

-- Pathing for Ghostlands Guardian Entry: 16541
SET @NPC := 81723;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7656.307,`position_y`=-6859.683,`position_z`=88.13384 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7656.307,-6859.683,88.13384,0,1000,0,0,100,0),
(@PATH,2,7650.742,-6837.035,83.7188,0,0,0,0,100,0),
(@PATH,3,7638.7456,-6820.1147,79.578865,0,0,0,0,100,0),
(@PATH,4,7633.3613,-6795.188,77.44763,0,0,0,0,100,0),
(@PATH,5,7633.3613,-6795.188,77.44763,0,0,0,0,100,0),
(@PATH,6,7612.672,-6772.802,81.48383,0,1000,0,0,100,0),
(@PATH,7,7633.3613,-6795.188,77.44763,0,0,0,0,100,0),
(@PATH,8,7638.7456,-6820.1147,79.578865,0,0,0,0,100,0),
(@PATH,9,7650.742,-6837.035,83.7188,0,0,0,0,100,0);

-- Pathing for Ghostlands Guardian Entry: 16541
SET @NPC := 81743;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7477.5596,`position_y`=-6774.3965,`position_z`=77.37108 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7477.5596,-6774.3965,77.37108,0,1000,0,0,100,0),
(@PATH,2,7479.7725,-6796.2666,76.037094,0,0,0,0,100,0),
(@PATH,3,7480.8003,-6835.1426,76.451065,0,0,0,0,100,0),
(@PATH,4,7480.546,-6864.1426,87.31557,0,0,0,0,100,0),
(@PATH,5,7491.06,-6888.1562,93.641754,0,0,0,0,100,0),
(@PATH,6,7481.444,-6900.9824,97.19312,0,1000,0,0,100,0),
(@PATH,7,7491.037,-6888.17,93.70743,0,0,0,0,100,0),
(@PATH,8,7480.54,-6864.199,87.341934,0,0,0,0,100,0),
(@PATH,9,7480.795,-6835.199,76.31557,0,0,0,0,100,0),
(@PATH,10,7479.7725,-6796.2666,76.037094,0,0,0,0,100,0);

-- Pathing for Ghostlands Guardian Entry: 16541
SET @NPC := 81719;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7556.547,`position_y`=-6782.2344,`position_z`=89.65745 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7556.547,-6782.2344,89.65745,0,1000,0,0,100,0),
(@PATH,2,7561.0347,-6803.1284,87.02042,0,0,0,0,100,0),
(@PATH,3,7578.8447,-6821.889,86.51,0,0,0,0,100,0),
(@PATH,4,7577.394,-6855.2456,93.04786,0,0,0,0,100,0),
(@PATH,5,7595.779,-6869.3604,93.89147,0,0,0,0,100,0),
(@PATH,6,7592.443,-6886.0366,95.04955,0,0,0,0,100,0),
(@PATH,7,7581.9204,-6904.625,101.790474,0,0,0,0,100,0),
(@PATH,8,7567.5645,-6915.807,107.4993,0,0,0,0,100,0),
(@PATH,9,7547.6704,-6907.465,111.91293,0,0,0,0,100,0),
(@PATH,10,7565.5054,-6879.0166,111.913994,0,0,0,0,100,0),
(@PATH,11,7557.3794,-6889.914,111.919914,0,0,0,0,100,0),
(@PATH,12,7549.7524,-6908.6675,111.91274,0,0,0,0,100,0),
(@PATH,13,7564.3022,-6915.3027,108.68743,0,0,0,0,100,0),
(@PATH,14,7575.963,-6912.1763,104.407394,0,0,0,0,100,0),
(@PATH,15,7586.791,-6894.108,96.98662,0,0,0,0,100,0),
(@PATH,16,7593.364,-6876.552,95.060295,0,0,0,0,100,0),
(@PATH,17,7588.4473,-6861.69,93.05042,0,0,0,0,100,0),
(@PATH,18,7579.619,-6834.5166,88.31934,0,0,0,0,100,0),
(@PATH,19,7561.691,-6831.232,87.79642,0,0,0,0,100,0),
(@PATH,20,7546.1216,-6817.42,86.24246,0,0,0,0,100,0),
(@PATH,21,7560.9365,-6803.6875,87.02042,0,0,0,0,100,0),
(@PATH,22,7556.846,-6782.3306,89.64597,0,1000,0,0,100,0),
(@PATH,23,7560.9365,-6803.6875,87.02042,0,0,0,0,100,0),
(@PATH,24,7546.1216,-6817.42,86.24246,0,0,0,0,100,0),
(@PATH,25,7561.691,-6831.232,87.79642,0,0,0,0,100,0),
(@PATH,26,7579.619,-6834.5166,88.31934,0,0,0,0,100,0),
(@PATH,27,7588.4473,-6861.69,93.05042,0,0,0,0,100,0),
(@PATH,28,7593.364,-6876.552,95.060295,0,0,0,0,100,0),
(@PATH,29,7586.791,-6894.108,96.98662,0,0,0,0,100,0),
(@PATH,30,7575.963,-6912.1763,104.407394,0,0,0,0,100,0),
(@PATH,31,7564.3022,-6915.3027,108.68743,0,0,0,0,100,0),
(@PATH,32,7549.7524,-6908.6675,111.91274,0,0,0,0,100,0),
(@PATH,33,7557.3794,-6889.914,111.919914,0,0,0,0,100,0),
(@PATH,34,7565.5054,-6879.0166,111.913994,0,0,0,0,100,0),
(@PATH,35,7547.6704,-6907.465,111.91293,0,0,0,0,100,0),
(@PATH,36,7567.5645,-6915.807,107.4993,0,0,0,0,100,0),
(@PATH,37,7581.9204,-6904.625,101.790474,0,0,0,0,100,0),
(@PATH,38,7592.443,-6886.0366,95.04955,0,0,0,0,100,0),
(@PATH,39,7595.7803,-6869.369,93.936516,0,0,0,0,100,0),
(@PATH,40,7577.394,-6855.2456,93.04786,0,0,0,0,100,0),
(@PATH,41,7578.8447,-6821.889,86.51,0,0,0,0,100,0),
(@PATH,42,7561.0347,-6803.1284,87.02042,0,0,0,0,100,0);

-- Pathing for Ghostlands Guardian Entry: 16541
SET @NPC := 81737;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7479.527,`position_y`=-6762.069,`position_z`=74.67059 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7479.527,-6762.069,74.67059,0,1000,0,0,100,0),
(@PATH,2,7491.943,-6754.413,73.470276,0,0,0,0,100,0),
(@PATH,3,7504.318,-6733.561,72.13106,0,0,0,0,100,0),
(@PATH,4,7526.5166,-6733.019,80.3507,0,0,0,0,100,0),
(@PATH,5,7541.1616,-6725.6587,80.03211,0,0,0,0,100,0),
(@PATH,6,7574.309,-6733.807,84.11633,0,0,0,0,100,0),
(@PATH,7,7592.066,-6752.3994,89.13257,0,0,0,0,100,0),
(@PATH,8,7604.9443,-6768.971,85.35371,0,1000,0,0,100,0),
(@PATH,9,7592.066,-6752.3994,89.13257,0,0,0,0,100,0),
(@PATH,10,7574.309,-6733.807,84.11633,0,0,0,0,100,0),
(@PATH,11,7541.1616,-6725.6587,80.03211,0,0,0,0,100,0),
(@PATH,12,7526.5166,-6733.019,80.3507,0,0,0,0,100,0),
(@PATH,13,7504.318,-6733.561,72.13106,0,0,0,0,100,0),
(@PATH,14,7491.943,-6754.413,73.470276,0,0,0,0,100,0);

-- Pathing for Ghostlands Guardian Entry: 16541
SET @NPC := 145414;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=7224.5845,`position_y`=-7078.627,`position_z`=58.699238 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7224.5845,-7078.627,58.699238,0,0,0,0,100,0),
(@PATH,2,7189.4165,-7063.7314,58.105244,0,0,0,0,100,0),
(@PATH,3,7149.863,-7073.067,54.93142,0,0,0,0,100,0),
(@PATH,4,7138.5693,-7099.069,56.691307,0,0,0,0,100,0),
(@PATH,5,7131.9043,-7117.264,58.934002,0,0,0,0,100,0),
(@PATH,6,7150.354,-7138.7593,54.706253,0,0,0,0,100,0),
(@PATH,7,7188.1255,-7144.3306,55.660694,0,0,0,0,100,0),
(@PATH,8,7219.0835,-7136.553,59.070496,0,0,0,0,100,0),
(@PATH,9,7245.4053,-7125.1953,61.217754,0,60000,0,0,100,0),
(@PATH,10,7240.693,-7127.219,60.818665,0,0,0,0,100,0),
(@PATH,11,7243.135,-7095.02,64.38999,0,50000,0,0,100,0);
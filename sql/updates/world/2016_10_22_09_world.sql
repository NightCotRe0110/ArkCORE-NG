

-- Orc Scout equipment.
DELETE FROM `creature_equip_template` WHERE `entry`=36100;
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES (36100,1,10611,12452,2552);

-- Conditions for spell_script.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=68337;  -- ID - 68337 Infrared = Infradead: Despawn Orc Scout
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,68337,0,0,31,0,3,36100,0,0,0,0,'','despawn Orc Scout');

-- despawn Orc Scout on hand in.
DELETE FROM `spell_scripts` WHERE `id`=68337;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(68337,0,3,18,500,0,0,0,0,0,0);

UPDATE creature_template SET ScriptName="npc_kilag_gorefang_35917" WHERE entry=35917;

UPDATE creature_template SET minlevel=8, maxlevel=8, unit_flags=33288, unit_flags2=67584, VehicleId=530 WHERE entry=36585;
UPDATE creature_template SET ScriptName="npc_bastia_36585" WHERE entry=36585;

DELETE FROM waypoint_data WHERE id=3658500;
INSERT INTO waypoint_data VALUES 
(3658500, 0, 868.182434, 2844.475586, 102.758621, 1.363785, 0, 1, 0, 100, 0),
(3658500, 1, 868.755981, 2865.448730, 101.121361, 1.497303, 0, 1, 0, 100, 0),
(3658500, 2, 874.025146, 2871.534668, 100.710228, 0.857203, 0, 1, 0, 100, 0),
(3658500, 3, 903.170227, 2877.143555, 100.154694, 0.189615, 0, 1, 0, 100, 0),
(3658500, 4, 915.657166, 2889.122803, 100.011932, 0.774736, 0, 1, 0, 100, 0),
(3658500, 5, 924.281067, 2907.250977, 101.878891, 1.136020, 0, 1, 0, 100, 0),
(3658500, 6, 940.638611, 2916.690918, 105.080147, 0.523409, 0, 1, 0, 100, 0),
(3658500, 7, 947.812561, 2940.378174, 109.024086, 1.281318, 0, 1, 0, 100, 0),
(3658500, 8, 956.460083, 2946.743896, 109.813484, 0.633365, 0, 1, 0, 100, 0),
(3658500, 9, 1035.273071, 2949.742676, 110.156479, 0.079658, 0, 1, 0, 100, 0),
(3658500, 10, 1044.239990, 2959.541992, 111.275833, 0.829713, 0, 1, 0, 100, 0),
(3658500, 11, 1049.500366, 2977.724365, 112.648216, 1.289171, 0, 1, 0, 100, 0),
(3658500, 12, 1075.568604, 2999.166748, 117.439415, 0.688342, 0, 1, 0, 100, 0),
(3658500, 13, 1075.446045, 3025.394043, 121.754829, 1.556207, 0, 1, 0, 100, 0),
(3658500, 14, 1088.965576, 3040.183350, 123.070724, 0.908253, 0, 1, 0, 100, 0),
(3658500, 15, 1087.594971, 3063.481445, 123.770744, 1.638674, 0, 1, 0, 100, 0),
(3658500, 16, 1070.125122, 3100.748779, 125.244514, 2.015665, 0, 1, 0, 100, 0),
(3658500, 17, 1048.217529, 3118.456787, 125.286903, 2.439780, 0, 1, 0, 100, 0),
(3658500, 18, 1031.385010, 3124.051514, 124.915604, 2.820698, 0, 1, 0, 100, 0),
(3658500, 19, 1024.985107, 3130.851563, 124.740425, 2.325897, 0, 1, 0, 100, 0),
(3658500, 20, 1023.271667, 3149.537598, 122.903992, 1.662236, 0, 1, 0, 100, 0),
(3658500, 21, 1024.108398, 3166.807861, 119.845276, 1.485521, 0, 1, 0, 100, 0),
(3658500, 22, 1045.176758, 3182.277832, 116.724716, 0.633364, 0, 1, 0, 100, 0),
(3658500, 23, 1055.802612, 3197.634766, 113.243576, 0.955377, 0, 1, 0, 100, 0),
(3658500, 24, 1058.023560, 3207.811279, 108.410400, 1.355931, 0, 1, 0, 100, 0),
(3658500, 25, 1060.087280, 3226.034912, 96.447212, 1.458032, 0, 1, 0, 100, 0),
(3658500, 26, 1075.460938, 3234.826660, 84.435791, 0.519482, 0, 1, 0, 100, 0),
(3658500, 27, 1081.019287, 3238.677490, 82.206161, 0.605875, 0, 1, 0, 100, 0);

UPDATE creature SET phaseIds="171 172" WHERE guid=246093;



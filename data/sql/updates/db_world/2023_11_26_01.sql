-- DB update 2023_11_26_00 -> 2023_11_26_01
-- Update gameobject 188021 'Camp Pavilion' with sniffed values
-- updated spawns
DELETE FROM `gameobject` WHERE (`id` = 188021) AND (`guid` IN (150695, 150858, 150867, 150996, 151016, 151047, 17839, 17862, 21496, 52463, 52464, 52466, 52467, 52468, 52469, 52470, 52471, 52472, 52473, 52474, 52475, 52476, 52477, 52478, 52479, 52480, 52481, 52482, 52486, 52487, 52489, 52490, 52492, 52493, 52494, 52496, 52497, 52498, 52499, 52500, 52501, 52502, 52503, 52505, 52506, 52507, 52510, 52511, 52514, 52516, 52517, 52518, 52519, 52520, 52521, 52522, 52523, 70552, 70592, 87978));
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(150695, 188021, 1, 0, 0, 1, 1, 136.533416748046875, -4718.349609375, 18.16261482238769531, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 255, 1, "", 50063, NULL),
(150858, 188021, 530, 0, 0, 1, 1, 9378.462890625, -6767.86279296875, 14.35151481628417968, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546, 120, 255, 1, "", 50063, NULL),
(150867, 188021, 530, 0, 0, 1, 1, 9789.2119140625, -7249.1025390625, 26.07227134704589843, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 120, 255, 1, "", 50063, NULL),
(150996, 188021, 530, 0, 0, 1, 1, 7685.18212890625, -6835.9287109375, 78.57927703857421875, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 255, 1, "", 50063, NULL),
(151016, 188021, 0, 0, 0, 1, 1, 2281.642578125, 445.855621337890625, 34.21437835693359375, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247, 120, 255, 1, "", 50063, NULL),
(151047, 188021, 530, 0, 0, 1, 1, -3796.171875, -11517.189453125, -134.898788452148437, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562, 120, 255, 1, "", 50063, NULL),
(17839, 188021, 0, 0, 0, 1, 1, -8261.9873046875, -2623.612060546875, 133.4952239990234375, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958, 120, 255, 1, "", 50063, NULL),
(17862, 188021, 0, 0, 0, 1, 1, 1006.9639892578125, -1448.0828857421875, 61.88268280029296875, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126, 120, 255, 1, "", 50063, NULL),
(21496, 188021, 530, 0, 0, 1, 1, 2289.120849609375, 6132.5341796875, 135.8387908935546875, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 120, 255, 1, "", 50063, NULL),
(52463, 188021, 1, 0, 0, 1, 1, -6773.76220703125, 537.3907470703125, -0.72147601842880249, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 120, 255, 1, "", 50063, NULL),
(52464, 188021, 1, 0, 0, 1, 1, -6992.13134765625, 915.10919189453125, 9.604977607727050781, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 120, 255, 1, "", 50063, NULL),
(52466, 188021, 1, 0, 0, 1, 1, -7226.95947265625, -3854.923583984375, 11.92960357666015625, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873, 120, 255, 1, "", 50063, NULL),
(52467, 188021, 1, 0, 0, 1, 1, -7114.9072265625, -3662.198486328125, 9.426024436950683593, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 120, 255, 1, "", 50063, NULL),
(52468, 188021, 1, 0, 0, 1, 1, 6851.63916015625, -4760.828125, 697.0914306640625, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 120, 255, 1, "", 50063, NULL),
(52469, 188021, 0, 0, 0, 1, 1, -8830.16796875, 876.4139404296875, 98.30986785888671875, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 120, 255, 1, "", 50063, NULL),
(52470, 188021, 1, 0, 0, 1, 1, -4578.482421875, 416.080780029296875, 41.40252685546875, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, "", 50063, NULL),
(52471, 188021, 1, 0, 0, 1, 1, -5516.51416015625, -2290.862548828125, -58.8560981750488281, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697, 120, 255, 1, "", 50063, NULL),
(52472, 188021, 1, 0, 0, 1, 1, -3111.189697265625, -2732.068603515625, 33.72667312622070312, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 120, 255, 1, "", 50063, NULL),
(52473, 188021, 530, 0, 0, 1, 1, 35.56076431274414062, 2593.7822265625, 69.02257537841796875, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 255, 1, "", 50063, NULL),
(52474, 188021, 530, 0, 0, 1, 1, -1211.5838623046875, 7484.7197265625, 21.38081741333007812, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869, 120, 255, 1, "", 50063, NULL),
(52475, 188021, 530, 0, 0, 1, 1, 208.8231048583984375, 7690.720703125, 22.87685966491699218, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 120, 255, 1, "", 50063, NULL),
(52476, 188021, 1, 0, 0, 1, 1, 948.91571044921875, 784.29034423828125, 104.1144866943359375, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285, 120, 255, 1, "", 50063, NULL),
(52477, 188021, 0, 0, 0, 1, 1, 184.7528839111328125, -2124.023193359375, 103.3610992431640625, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708, 120, 255, 1, "", 50063, NULL),
(52478, 188021, 0, 0, 0, 1, 1, -14293.6064453125, 54.05783462524414062, 0.97591102123260498, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873, 120, 255, 1, "", 50063, NULL),
(52479, 188021, 0, 0, 0, 1, 1, -10695.6318359375, -1154.4635009765625, 25.16635322570800781, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611, 120, 255, 1, "", 50063, NULL),
(52480, 188021, 0, 0, 0, 1, 1, -10942.2080078125, -3226.925048828125, 41.34749984741210937, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 120, 255, 1, "", 50063, NULL),
(52481, 188021, 0, 0, 0, 1, 1, -1213.0513916015625, -2664.925048828125, 45.35105133056640625, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583, 120, 255, 1, "", 50063, NULL),
(52482, 188021, 1, 0, 0, 1, 1, 9776.0673828125, 1009.46612548828125, 1299.2716064453125, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958, 120, 255, 1, "", 50063, NULL),
(52486, 188021, 0, 0, 0, 1, 1, -5419.95556640625, -492.84661865234375, 397.045867919921875, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419, 120, 255, 1, "", 50063, NULL),
(52487, 188021, 0, 0, 0, 1, 1, -5241.814453125, -2895.395751953125, 337.946014404296875, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, "", 50063, NULL),
(52489, 188021, 1, 0, 0, 1, 1, 6845.88916015625, -4562.43603515625, 709.17559814453125, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046, 120, 255, 1, "", 50063, NULL),
(52490, 188021, 1, 0, 0, 1, 1, 2571.71435546875, -483.190826416015625, 108.6088790893554687, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546, 120, 255, 1, "", 50063, NULL),
(52492, 188021, 0, 0, 0, 1, 1, 592.36663818359375, 1358.939697265625, 89.20098114013671875, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 120, 255, 1, "", 50063, NULL),
(52493, 188021, 1, 0, 0, 1, 1, -56.1240768432617187, 1258.3582763671875, 90.36751556396484375, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419, 120, 255, 1, "", 50063, NULL),
(52494, 188021, 1, 0, 0, 1, 1, 2013.0872802734375, -2347.329345703125, 89.50275421142578125, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 120, 255, 1, "", 50063, NULL),
(52496, 188021, 1, 0, 0, 1, 1, 6312.2734375, 511.183380126953125, 17.4459381103515625, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958, 120, 255, 1, "", 50063, NULL),
(52497, 188021, 1, 0, 0, 1, 1, -3444.643310546875, -4220.9755859375, 11.80877494812011718, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 120, 255, 1, "", 50063, NULL),
(52498, 188021, 1, 0, 0, 1, 1, -4403.24462890625, 3472.818603515625, 11.19973659515380859, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583, 120, 255, 1, "", 50063, NULL),
(52499, 188021, 1, 0, 0, 1, 1, -1853.0225830078125, 3052.64501953125, 0.826276004314422607, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, "", 50063, NULL),
(52500, 188021, 1, 0, 0, 1, 1, -284.07366943359375, -2663.653564453125, 92.94536590576171875, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, "", 50063, NULL),
(52501, 188021, 1, 0, 0, 1, 1, 8707.119140625, 965.50067138671875, 12.43027305603027343, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, "", 50063, NULL),
(52502, 188021, 1, 0, 0, 1, 1, 1904.970458984375, -4347.849609375, 20.6054534912109375, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 120, 255, 1, "", 50063, NULL),
(52503, 188021, 530, 0, 0, 1, 1, -2549.1279296875, 4268.83935546875, 18.27869224548339843, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 255, 1, "", 50063, NULL),
(52505, 188021, 1, 0, 0, 1, 1, -1015.173583984375, 305.75, 135.4737091064453125, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998, 120, 255, 1, "", 50063, NULL),
(52506, 188021, 0, 0, 0, 1, 1, -10340.1650390625, -3298.599853515625, 23.20411109924316406, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, "", 50063, NULL),
(52507, 188021, 0, 0, 0, 1, 1, -615.547607421875, -542.60205078125, 35.31060028076171875, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 120, 255, 1, "", 50063, NULL),
(52510, 188021, 0, 0, 0, 1, 1, -10648.6533203125, 1063.1741943359375, 32.738525390625, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 120, 255, 1, "", 50063, NULL),
(52511, 188021, 0, 0, 0, 1, 1, -14371.00390625, 123.3150482177734375, 1.164121031761169433, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 120, 255, 1, "", 50063, NULL),
(52514, 188021, 0, 0, 0, 1, 1, -1123.8353271484375, -3535.51953125, 50.61865997314453125, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, "", 50063, NULL),
(52516, 188021, 0, 0, 0, 1, 1, -9385.0595703125, 26.92957878112792968, 60.56407928466796875, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 120, 255, 1, "", 50063, NULL),
(52517, 188021, 0, 0, 0, 1, 1, -7594.05908203125, -2075.40869140625, 126.8895416259765625, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, "", 50063, NULL),
(52518, 188021, 530, 0, 0, 1, 1, -520.23321533203125, 2329.232666015625, 38.32873916625976562, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 255, 1, "", 50063, NULL),
(52519, 188021, 0, 0, 0, 1, 1, -457.815765380859375, -4530.890625, 8.692540168762207031, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, "", 50063, NULL),
(52520, 188021, 0, 0, 0, 1, 1, -9425.8076171875, -2115.154052734375, 66.3962860107421875, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123, 120, 255, 1, "", 50063, NULL),
(52521, 188021, 0, 0, 0, 1, 1, -3440.868896484375, -944.7745361328125, 9.974484443664550781, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, "", 50063, NULL),
(52522, 188021, 0, 0, 0, 1, 1, -6694.0302734375, -2200.6083984375, 248.451141357421875, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, "", 50063, NULL),
(52523, 188021, 530, 0, 0, 1, 1, -1742.8746337890625, 5335.560546875, -12.4281387329101562, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, "", 50063, NULL),
(70552, 188021, 530, 0, 0, 1, 1, -4221.6650390625, -12306.12890625, 2.295757055282592773, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872, 120, 255, 1, "", 50063, NULL),
(70592, 188021, 530, 0, 0, 1, 1, 2021.0638427734375, 6593.52197265625, 135.1494903564453125, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583, 120, 255, 1, "", 50063, NULL),
(87978, 188021, 0, 0, 0, 1, 1, -140.412704467773437, -811.83990478515625, 55.34452056884765625, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 120, 255, 1, "", 50063, NULL);

-- new spawns
DELETE FROM `gameobject` WHERE (`id` = 188021) AND (`guid` BETWEEN 23273 AND 23297);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(23273, 188021, 1, 0, 0, 1, 1, -2324.997802734375, -615.750244140625, -8.89042186737060546, 5.84685373306274414, 0, 0, -0.21643924713134765, 0.976296067237854003, 120, 255, 1, "", 50063, NULL),
(23274, 188021, 530, 0, 0, 1, 1, -2234.705810546875, -11890.6328125, 26.97253608703613281, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701, 120, 255, 1, "", 50063, NULL),
(23275, 188021, 530, 0, 0, 1, 1, -2517.309326171875, 7558.5546875, -2.05050897598266601, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 120, 255, 1, "", 50063, NULL),
(23276, 188021, 530, 0, 0, 1, 1, -3003.193359375, 4163.8876953125, 4.4622039794921875, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 255, 1, "", 50063, NULL),
(23277, 188021, 530, 0, 0, 1, 1, -3064.654541015625, 2391.6513671875, 61.95751953125, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 120, 255, 1, "", 50063, NULL),
(23278, 188021, 530, 0, 0, 1, 1, -3953.915771484375, 2049.841796875, 95.06470489501953125, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101, 120, 255, 1, "", 50063, NULL),
(23279, 188021, 530, 0, 0, 1, 1, 191.2980499267578125, 6014.17041015625, 23.32256507873535156, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 120, 255, 1, "", 50063, NULL),
(23280, 188021, 530, 0, 0, 1, 1, 2921.76318359375, 3693.718017578125, 143.678009033203125, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 120, 255, 1, "", 50063, NULL),
(23281, 188021, 530, 0, 0, 1, 1, 3124.499267578125, 3740.337646484375, 141.8670654296875, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 120, 255, 1, "", 50063, NULL),
(23282, 188021, 571, 0, 0, 1, 1, 2470.056396484375, -4898.048828125, 263.2708740234375, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782, 120, 255, 1, "", 50172, NULL),
(23283, 188021, 571, 0, 0, 1, 1, 2591.335205078125, -4332.916015625, 276.15545654296875, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998, 120, 255, 1, "", 50172, NULL),
(23284, 188021, 571, 0, 0, 1, 1, 3368.093017578125, -2124.589599609375, 124.5936431884765625, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173, 120, 255, 1, "", 50172, NULL),
(23285, 188021, 571, 0, 0, 1, 1, 3405.3203125, -2896.085205078125, 201.555206298828125, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782, 120, 255, 1, "", 50172, NULL),
(23286, 188021, 571, 0, 0, 1, 1, 3769.595947265625, 1482.6390380859375, 91.96231842041015625, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305, 120, 255, 1, "", 50172, NULL),
(23287, 188021, 571, 0, 0, 1, 1, 3938.43359375, -604.13922119140625, 241.5377655029296875, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 120, 255, 1, "", 50172, NULL),
(23288, 188021, 571, 0, 0, 1, 1, 4133.2724609375, 5391.0947265625, 26.29804611206054687, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 255, 1, "", 50172, NULL),
(23289, 188021, 571, 0, 0, 1, 1, 4458.93408203125, 5627.3359375, 56.97404861450195312, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998, 120, 255, 1, "", 50172, NULL),
(23290, 188021, 571, 0, 0, 1, 1, 5135.140625, -681.8663330078125, 170.26171875, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189, 120, 255, 1, "", 50172, NULL),
(23291, 188021, 571, 0, 0, 1, 1, 5285.19970703125, -2770.869384765625, 292.272674560546875, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163, 120, 255, 1, "", 50172, NULL),
(23292, 188021, 571, 0, 0, 1, 1, 5355.701171875, 4835.07275390625, -196.275115966796875, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, "", 50172, NULL),
(23293, 188021, 571, 0, 0, 1, 1, 5505.6826171875, 4880.33935546875, -198.277206420898437, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697, 120, 255, 1, "", 50172, NULL),
(23294, 188021, 571, 0, 0, 1, 1, 5544.08056640625, -731.68841552734375, 150.07537841796875, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291, 120, 255, 1, "", 50172, NULL),
(23295, 188021, 571, 0, 0, 1, 1, 5626.78662109375, -2623.21875, 292.272308349609375, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, "", 50172, NULL),
(23296, 188021, 571, 0, 0, 1, 1, 6083.68212890625, -1111.0325927734375, 418.530853271484375, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183, 120, 255, 1, "", 50172, NULL),
(23297, 188021, 571, 0, 0, 1, 1, 6150.36279296875, -1029.7447509765625, 408.938690185546875, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291, 120, 255, 1, "", 50172, NULL);

-- remove duplicate spawns
DELETE FROM `gameobject` WHERE (`id` = 188021) AND (`guid` IN (52515, 52484, 52513, 52509, 52512, 52508, 52504, 52483, 52465, 52488, 52485, 52495, 52491));
DELETE FROM `game_event_gameobject` WHERE (`guid` IN (52515, 52484, 52513, 52509, 52512, 52508, 52504, 52483, 52465, 52488, 52485, 52495, 52491));

-- enable all spawns for eventEntry 1
DELETE FROM `game_event_gameobject` WHERE (`eventEntry` = 1) AND (`guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 188021));
INSERT INTO `game_event_gameobject` (SELECT 1, `guid` FROM `gameobject` WHERE `id` = 188021);

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Chinese Army"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "Chinese"]] call _fnc_saveToTemplate;

["flag", "Flag_China_F"] call _fnc_saveToTemplate;
["flagTexture", "\vlkpictures\datapack\Flag_China.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "Flag_China_mark"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["VME_JH600B_PLAAF"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["VME_PLA_BJ2022_PLAAF", "VME_PLA_EQ2050_PLAAF", "O_OChina_CSK_181_01"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["VME_PLA_EQ2050_reconMG_PLAAF", "VME_PLA_EQ2050_GL", "VME_PLA_EQ2050_reconGL", "VME_PLA_EQ2050_reconMG"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["O_OChina_SX2316_Transport_Covered_01", "O_OChina_SX2220_Transport_Covered_01"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["O_OChina_SX2316_Transport_02", "O_OChina_SX2220_Transport_01"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["VME_PLA_SX2190Reammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["VME_PLA_SX2190Repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["VME_PLA_SX2190Refuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["VME_PLA_EQ2050_MED_PLAAF", "vme_wzAMB"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["VME_PLA_ZBD03", "VME_PLA_ZBD08", "vme_ZSL92A", "VME_PLA_ZBD04", "vme_wzENG"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["VME_PLA_EQ2050_reconMG_PLAAF", "VME_PLA_EQ2050_GL", "VME_PLA_ZBD04", "vme_ZSL92A", "VME_PLA_ZBD03", "VME_PLA_ZBD08", "VME_PLA_EQ2050_reconMG"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["vme_PTL02", "VME_PLA_ZTL11", "VME_PLA_AFT10"]] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesLightTanks",  ["VME_QN506"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["VME_PLA_ZTZ99", "VME_PLA_ZTZ96A", "VME_PLA_ZTZ99A", "O_OChina_ZTZ_99A_01", "O_OChina_ZTQ_15_01", "O_OChina_ZTZ_96B_01", "O_OChina_ZTQ_15_01"]] call _fnc_saveToTemplate;
["vehiclesAA", ["VME_PLA_PGZ04", "VME_PLA_PGZ07", "VME_PLA_HQ64", "VME_PLA_HQ61"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["vme_Type22"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["VME_PLA_J10B", "VME_PLA_JH7", "VME_PLA_J16", "VME_PLA_J11"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["VME_PLA_J20", "VME_PLA_J10B", "VME_PLA_JH7", "VME_PLA_J16", "VME_PLA_J11"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["VME_PLA_Y20"]] call _fnc_saveToTemplate;

["vehiclesHelisTransport", ["VME_PLA_Mi17", "VME_PLA_Mi17_MED", "PLA_Z18"]] call _fnc_saveToTemplate;
["vehiclesHelisLight", ["VME_PLA_Mi17", "VME_PLA_Mi17_MED"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["VME_Z20", "VME_PLA_z9_CAS"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["VME_WZ10_FOR", "VME_PLA_Mi171", "VME_PLA_z19"]] call _fnc_saveToTemplate;


["magazines", createHashMapFromArray [
    ["rhsusf_m109_usarmy",["rhs_mag_155mm_m795_28"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["CUP_B_USMC_DYN_MQ9", "vme_CH3", "vme_CH7"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;
//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["VME_PLA_EQ2050_reconMG_PLAAF", "VME_PLA_EQ2050_reconMG",  "VME_PLA_EQ2050_GL", "VME_PLA_EQ2050_reconGL"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["O_OChina_SX2316_Transport_Covered_01", "O_OChina_SX2220_Transport_Covered_01"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["VME_PLA_BJ2022_PLAAF", "VME_PLA_EQ2050_PLAAF", "O_OChina_CSK_181_01"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["VME_PLA_ZBD03", "VME_PLA_ZBD08", "vme_ZSL92A", "VME_PLA_ZBD04", "vme_wzENG"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["VME_PLA_BJ2022patrol"]] call _fnc_saveToTemplate;

["staticMGs", ["VME_Type85_Static_AA"]] call _fnc_saveToTemplate;
["staticATs", ["VME_PLA_HJ11"]] call _fnc_saveToTemplate;
["staticAAs", ["rhs_Igla_AA_pod_msv"]] call _fnc_saveToTemplate;
["staticMortars", ["rhs_2b14_82mm_msv"]] call _fnc_saveToTemplate;
["staticHowitzers", ["rhs_D30_msv", "vme_PLL05", "PLA_PHZ81", "vme_SM4", "O_OChina_PLL_09_01", "O_OChina_PLZ_05_01"]] call _fnc_saveToTemplate;

["vehicleRadar", "O_OChina_R750_Cronus_Radar_01"] call _fnc_saveToTemplate;
["vehicleSam", "O_OChina_S750_Rhea_01"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ["rhs_mag_3of56_10", "rhs_mag_3of56_10", "rhs_mag_HE_2a33", "rhs_mag_WP_2a33", "rhs_mag_m21of_1"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "rhs_mag_3vs25m_10"] call _fnc_saveToTemplate;

["minefieldAT", ["rhsusf_mine_M19"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhsusf_mine_m14"]] call _fnc_saveToTemplate;

#include "VLK_Vehicle_Attributes.sqf"

["variants", [
    ["VME_PLA_BJ2022_PLAAF", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_PLAAF", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_Flatbed_PLAAF", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_MED_PLAAF", ["PLAFor2_AMB",1]],
    ["VME_PLA_EQ2050_reconMG_PLAAF", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_GL", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_reconGL", ["PLAFor2",1]],
    ["VME_PLA_EQ2050_reconMG", ["PLAFor2",1]],
    ["vme_ZSL92A", ["PLA_ForestDig",1]],
    ["vme_wzAMB", ["PLA_AMBForestDig",1]],
    ["vme_wzENG", ["PLA_ForestDig",1]],
    ["vme_PTL02", ["PLL_ForestDig",1]],
    ["VME_QN506", ["PLA_ForestCamo",1]],
    ["VME_PLA_Mi17", ["PLAMi17For",1]],
    ["VME_PLA_Mi17_MED", ["PLAMi17ForMED",1]],
    ["PLA_Z18", ["Grey",1]],
    ["VME_Z20", ["PLA_Green",1]],
    ["VME_WZ10_FOR", ["PLAWz10For",1]],
    ["VME_PLA_Mi171", ["PLAMi17For", 1]],
    ["VME_PLA_z19", ["CAS",1]],
    ["VME_PLA_BJ2022patrol", ["PLAAF_Dark",1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["male03chi","male02chi","male01chi"]] call _fnc_saveToTemplate;
["faces", ["AsianHead_A3_04","AsianHead_A3_06","AsianHead_A3_01","VME_asianHead_01",
"VME_asianHead_02","VME_asianHead_03"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["lightHELaunchers", []];
_loadoutData set ["ATLaunchers", [
    ["vme_pla_PF98", "", "", "", ["vme_pla_PF98_AT_Rocket", "vme_pla_PF98_MP_Rocket"], [], ""]
]];
_loadoutData set ["AALaunchers", ["vme_pla_FN6"]];
_loadoutData set ["sidearms", []];
_loadoutData set ["GLsidearms", []];

_loadoutData set ["ATMines", ["rhs_mine_M19_mag"]];
_loadoutData set ["APMines", ["rhsusf_mine_m14_mag"]];
_loadoutData set ["lightExplosives", ["rhsusf_m112_mag"]];
_loadoutData set ["heavyExplosives", ["rhsusf_m112x4_mag"]];

_loadoutData set ["antiInfantryGrenades", ["rhs_mag_m67"]];
_loadoutData set ["smokeGrenades", ["rhs_mag_an_m8hc"]];
_loadoutData set ["signalsmokeGrenades", ["rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["rhsusf_ANPVS_14"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["rhsusf_bino_lerca_1200_black"]];

_loadoutData set ["traitorUniforms", ["uniform_FS_Gloves_C"]];
_loadoutData set ["traitorVests", ["v19_C"]];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", ["uniform_FS_Gloves_C"]];
_loadoutData set ["officerVests", ["v19_C"]];
_loadoutData set ["officerHats", []];

_loadoutData set ["uniforms", []];
_loadoutData set ["MGvests", []];
_loadoutData set ["MEDvests", []];
_loadoutData set ["SLvests", []];
_loadoutData set ["SNIvests", []];
_loadoutData set ["GLvests", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", ["rhs_rpg_empty"]];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_digi_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["gh19_FAST_Tag_07W"]];
_loadoutData set ["sniHats", ["BoonieHat_F"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", [
    "G_Bandanna_tan",
    "rhs_googles_black",
    "rhs_googles_clear",
    "rhs_googles_yellow"
]];
_loadoutData set ["goggles", [
    "CUP_G_Oakleys_Clr",
    "CUP_G_Oakleys_Drk",
    "CUP_Beard_Brown",
    "CUP_G_ESS_KHK_Dark",
    "CUP_G_ESS_KHK",
]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["uniform_FS_07W", "v19_rHvy_07W", "uniform_FS_Gloves_Holster_07W"]];
_sfLoadoutData set ["vests", ["v19_rLgt_07W", "v19_rMed_07W", "v19_RadioB_07W"]];
_sfLoadoutData set ["MGvests", ["v19_rMed_07W", "v19_rHvy_07W"]];
_sfLoadoutData set ["MEDvests", ["v19_rMed_07W"]];
_sfLoadoutData set ["GLvests", ["v19_RadioB_07W", "v19_rLgt_07W"]];
_sfLoadoutData set ["backpacks", ["VestBag_07W", "bag19_07W"]];
_sfLoadoutData set ["helmets", ["GFH_h19_FAST_Tag_07W", "gh19_FAST_Tag_07W"]];
_sfLoadoutData set ["NVGs", ["iNVG"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator", "CUP_Vector21Nite"]];
_sfLoadoutData set ["antiInfantryGrenades", ["rhs_mag_m67", "rhs_mag_an_m14_th3", "rhs_grenade_m15_mag"]];
_sfLoadoutData set ["lightATLaunchers", ["vme_pla_PF89"]];
_sfLoadoutData set ["lightHELaunchers", ["vme_pla_PF97"]];

_sfLoadoutData set ["rifles", [
["vme_pla_qbz95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "VME_95_1_PST", "", "", ["VME_QSZ92_20Rnd_DAP92"], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "CUP_optic_CompM4", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["QBZ95_1_DF", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "", ["VME_QSZ92_20Rnd_DAP92", ], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "", [, "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["vme_pla_qbz95_1", "", "", "", [, "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "VME_95_1_PST", "", "", ["VME_QSZ92_20Rnd_DAP92", ], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "CUP_optic_CompM4", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["QBZ95_1_DF", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "", ["VME_QSZ92_20Rnd_DAP92", ], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];
_sfLoadoutData set ["designatedGrenadeLaunchers", [
["rhs_weap_m32", "", "rhsusf_acc_anpeq15side", "", ["rhsusf_mag_6Rnd_M433_HEDP", "rhsusf_mag_6Rnd_M433_HEDP", "rhsusf_mag_6Rnd_M397_HET", "rhsusf_mag_6Rnd_M583A1_white", "rhsusf_mag_6Rnd_M714_white"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["vme_pla_qbz95_1GL", "", "", "VME_95_1_PST", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "VME_Eotech_557_Magnifier_DOWN", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""]
]];
_sfLoadoutData set ["machineGuns", [
["VME_PLA_QJY88", "", "", "VME_QJY88_Scope", ["VME_QJY88_200Rnd_DVP88_Heavy", "VME_QJY88_200Rnd_DBP10"], [], ""],
["vme_pla_qbz95_1", "", "", "YMA_600_95_1", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
["vme_pla_qbu88", "", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92"], [], ""],
["vme_pla_qbu88", "", "", "CUP_optic_ACOG2", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["VME_QLU11_base", "", "", "optic_QLU11", ["VME_QLU11_4rnd_35mm_HE", "VME_QLU11_4rnd_35mm_AP"], [], ""],
["vme_pla_LR4", "VME_LR4_Silencer", "", "VME_QBU88_Scope", ["VME_LR4_5Rnd_M61_AP", "VME_LR4_5Rnd_M80", "VME_LR4_5Rnd_M118_Special"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["vme_pla_qsw06", "", "", "", ["VME_QSW06_20Rnd_DCV05"], [], ""]
]];



/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["uniform_FS_C", "uniform_FS_Gloves_C", "uniform_Gloves_Holster_C"]];
_eliteLoadoutData set ["vests", ["v19_C", "v19_Radio_LIEUTENANT_C", "v19_rHvy_C"]];
_eliteLoadoutData set ["MGvests", ["v19_rHvy_MAJOR_C"]];
_eliteLoadoutData set ["MEDvests", ["CUP_V_B_IOTV_OCP_Medic_USArmy"]];
_eliteLoadoutData set ["GLvests", ["v19_rHvy_MAJOR_C"]];
_eliteLoadoutData set ["backpacks", ["bag19_C", "VestBag_C"]];
_eliteLoadoutData set ["helmets", ["gh19_FAST_Tag_C", "gfh19_FAST_Tag_C", "GFH_h19_FAST_Tag_CORPORAL_C"]];
_eliteLoadoutData set ["NVGs", ["iNVG"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData set ["antiInfantryGrenades", ["rhs_mag_m67", "rhs_mag_an_m14_th3", "rhs_grenade_m15_mag"]];
_eliteLoadoutData set ["lightATLaunchers", [
"vme_pla_PF89"
]];
_eliteLoadoutData set ["ATLaunchers", [
["vme_pla_HJ12", "", "", "", ["VME_HJ12_AT"], [], ""],
["vme_pla_PF98", "", "", "VME_PF98_Scope_FCS", ["vme_pla_PF98_AT_Rocket"], [], ""]
]];

_eliteLoadoutData set ["rifles", [
["vme_pla_qcw05", "VME_QCW05_Silencer", "", "", ["VME_QCW05_50Rnd_DCV05"], [], ""],
["LZB_QBZ192_VGrip", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["QBZ95_1_DF_VGrip", "", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "rhsusf_acc_eotech_xps3", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbu88", "VME_QBZ95_1_Silencer", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper"], [], ""],
["LZB_QBU191_CClamp", "", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_HoloBlack", ["30Rnd_580x42_Mag_F"], [], ""],
["LZB_QBU191_CClamp", "", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_Elcan", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["LZB_QBZ192_VGrip", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87",], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["vme_pla_qcw05", "", "", "", ["VME_QCW05_50Rnd_DCV05", , "VME_QSZ92_20Rnd_DAP92"], [], ""],
["LZB_QBZ192_VGrip", "", "", "VME_Eotech_557_Magnifier_DOWN", ["30Rnd_580x42_Mag_F"], [], ""],
["QBZ95_1_DF_VGrip", "", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "rhsusf_acc_eotech_xps3", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbu88", "VME_QBZ95_1_Silencer", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper"], [], ""],
["LZB_QBU191_CClamp", "", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_HoloBlack", ["30Rnd_580x42_Mag_F"], [], ""],
["LZB_QBU191_CClamp", "", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_Elcan", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["LZB_QBZ192_VGrip", "", "", "QMK152", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["vme_pla_qbz95_1GL", "", "", "VME_95_1_PST", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "CUP_optic_HoloBlack", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "VME_95_1_PST", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "CUP_optic_Elcan", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "rhsusf_acc_eotech_552", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""]
]];
_sfLoadoutData set ["machineGuns", [
["VME_PLA_QJY88", "", "", "VME_QJY88_Scope", ["VME_QJY88_200Rnd_DVP88_Heavy", "VME_QJY88_200Rnd_DBP10"], [], ""],
["vme_pla_qbz95_1", "", "", "YMA_600_95_1", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
["vme_pla_qbu88", "", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92", ], [], ""],
["vme_pla_qbu88", "", "", "CUP_optic_ACOG2", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92", ], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["VME_QLU11_base", "", "", "optic_QLU11", ["VME_QLU11_4rnd_35mm_HE", "VME_QLU11_4rnd_35mm_AP"], [], ""],
["vme_pla_LR4", "VME_LR4_Silencer", "", "VME_QBU88_Scope", ["VME_LR4_5Rnd_M61_AP", "VME_LR4_5Rnd_M80", "VME_LR4_5Rnd_M118_Special"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["vme_pla_qsw06", "", "", "", ["vme_pla_qsw06", "VME_QSW06_20Rnd_DCV05"], [], ""]
]];



/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["uniform_FS_F", "uniform_F", "uniform_FS_Gloves_F", "uniform_FS_Gloves_Holster_F"]];
_militaryLoadoutData set ["vests", ["v19_RadioB_F", "v19_rLgt_F"]];
_militaryLoadoutData set ["MGvests", ["v19_rHvy_F"]];
_militaryLoadoutData set ["MEDvests", ["v19_rMed_F"]];
_militaryLoadoutData set ["SLvests", ["v19_Radio_LIEUTENANT_F"]];
_militaryLoadoutData set ["SNIvests", ["v19_sLgt"]];
_militaryLoadoutData set ["GLvests", ["v19_rHvy_F"]];
_militaryLoadoutData set ["backpacks", ["bag19_F"]];
_militaryLoadoutData set ["helmets", ["gh19_FAST_Tag_F", "h19_F"]];

_militaryLoadoutData set ["lightATLaunchers", ["vme_pla_PF89", "vme_pla_PF89A_AST"]];
_militaryLoadoutData set ["lightHELaunchers", ["vme_pla_PF89A"]];

_militaryLoadoutData set ["slRifles", [
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qcw05", "", "", "", ["VME_QCW05_50Rnd_DCV05", "VME_QSZ92_20Rnd_DAP92"], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "CUP_optic_CompM4", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "VME_95_1_PST", [, "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red], [], ""],
["vme_pla_qjb95_1", "", "", "VME_95_1_PST", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "CUP_optic_CompM4", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qbz95_1", "", "", "VME_95_1_PST", [, "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["vme_pla_qbz95_1GL", "", "", "VME_95_1_PST", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "VME_Eotech_557_Magnifier_DOWN", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "rhsusf_acc_ACOG", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "rhsusf_acc_ACOG_RMR", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "CUP_optic_CompM4", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["vme_pla_qbz95_1", "", "", "YMA_600_95_1", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""],
["vme_pla_qbz95_1", "", "", "rhsusf_acc_ACOG_RMR", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""],
["vme_pla_qbz95_1", "", "", "rhsusf_acc_ACOG", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""],
["VME_PLA_QJY88", "", "", "VME_QJY88_Scope", ["VME_QJY88_200Rnd_DVP88_Heavy", "VME_QJY88_200Rnd_DBP10"], [], ""],
["vme_pla_qbz95_1", "", "", "rhsusf_acc_eotech_xps3", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
["vme_pla_qbu88", "", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92"], [], ""],
["vme_pla_qbu88", "", "", "CUP_optic_ACOG2", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
["vme_pla_LR4", "", "", "VME_QBU88_Scope", ["VME_LR4_5Rnd_M80", "VME_LR4_5Rnd_M61_AP"], [], ""],
["VME_QLU11_base", "", "", "optic_QLU11", ["VME_QLU11_4rnd_35mm_HE", "VME_QLU11_4rnd_35mm_AP"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["vme_pla_qsw06", "", "", "", ["vme_pla_qsw06", "VME_QSW06_20Rnd_DCV05"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["uniform_FS_Gloves_AP"]];
_policeLoadoutData set ["vests", ["v19_AP"]];
_policeLoadoutData set ["helmets", ["h19_FAST_AP"]];
_policeLoadoutData set ["policeWeapons", [
["vme_pla_qcw05", "", "", "", ["VME_QCW05_50Rnd_DCV05"], [], ""]    
]];
_policeLoadoutData set ["sidearms", ["vme_pla_qsw06"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["uniform_FS_F", "uniform_F", "uniform_FS_Gloves_F", "uniform_FS_Gloves_Holster_F"]];
_militiaLoadoutData set ["vests", ["v19_RadioB_F", "v19_rHvy_F", "v19_rLgt_F", "v19_rMed_F"]];
_militiaLoadoutData set ["backpacks", ["bag19_F"]];
_militiaLoadoutData set ["atBackpacks", ["rhs_rpg_empty"]];
_militiaLoadoutData set ["helmets", ["h19_F"]];
_militiaLoadoutData set ["slHat", ["gh19_FAST_Tag_F"]];
_militiaLoadoutData set ["sniHats", ["BoonieHat_F"]];
_militiaLoadoutData set ["longRangeRadios", ["B_RadioBag_01_digi_F"]];

_militiaLoadoutData set ["lightATLaunchers", ["vme_pla_PF89"]];

_militiaLoadoutData set ["slRifles", [
["QBZ95_1_DF", "", "", "CUP_optic_CompM4", ["VME_QSZ92_20Rnd_DAP92"], [], ""],
["vme_pla_qbz95_1GL", "", "", "VME_Eotech_557_Magnifier_DOWN", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""],
["vme_pla_qbz95_1GL", "", "", "", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""]
]];

_militiaLoadoutData set ["rifles", [
["QBZ95_1_DF", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];

_militiaLoadoutData set ["carbines", [
["QBZ95_1_DF", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["vme_pla_qbz03", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""],
["vme_pla_qjb95_1", "", "", "", ["VME_QBZ95_1_30Rnd_DBP10", "VME_QBZ95_1_30Rnd_DBP87", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["vme_pla_qbz95_1GL", "", "", "", ["30Rnd_580x42_Mag_F", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Red"], ["VME_1Rnd_HE_GL", "1Rnd_HE_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["vme_pla_qbz95_1", "", "", "", ["100Rnd_580x42_Mag_F", "VME_QJB95_1_75Rnd_DBP10"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["vme_pla_qbu88", "", "", "CUP_optic_Elcan", ["VME_QBU88_10Rnd_DVP88_Sniper", "VME_QSZ92_20Rnd_DAP92", ], [], ""],
]];
_militiaLoadoutData set ["sniperRifles", [
["vme_pla_LR4", "", "", "VME_QBU88_Scope", ["VME_LR4_5Rnd_M80"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
["vme_pla_qsw06", "", "", "", ["vme_pla_qsw06", ], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////
private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["uniform_FS_C"]];
_crewLoadoutData set ["vests", ["v19_C"]];
_crewLoadoutData set ["helmets", ["gh19_FAST_Tag_C"]];
_crewLoadoutData set ["carbines", [
["QBZ95_1_DF", "", "", "", ["VME_QSZ92_20Rnd_DAP92", ], [], ""],
]];
_crewLoadoutData set ["SMGs", [
["CUP_smg_MP5A5", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["PLA_Pilot_Green_Coveralls"]];
_pilotLoadoutData set ["vests", ["CUP_V_B_PilotVest"]];
_pilotLoadoutData set ["helmets", ["VME_Pilot_Helmet"]];
_pilotLoadoutData set ["SMGs", [
["CUP_smg_MP5A5", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["SLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    if (random 1 < 0.15) then {
		[["lightHELaunchers", "lightATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["MEDvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["GLsidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["ATLaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["MGvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["SNIvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["policeWeapons"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

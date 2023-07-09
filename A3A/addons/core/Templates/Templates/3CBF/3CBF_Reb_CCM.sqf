private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "CCM"] call _fnc_saveToTemplate;

["flag", "Flag_CCM_O"] call _fnc_saveToTemplate;
["flagTexture", "\UK3CB_Factions\addons\UK3CB_Factions_CCM\Flag\ccm_o_flag_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "UK3CB_Marker_CCM_O"] call _fnc_saveToTemplate;

///////////////////////////
//    Red Box Vehicles   //
///////////////////////////

["vehiclesBasic", ["I_G_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["UK3CB_NAP_O_Offroad", "UK3CB_NAP_O_Hilux_Open", "UK3CB_I_G_Pickup", "UK3CB_I_G_LandRover_Open"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["UK3CB_NAP_O_Offroad_M2", "UK3CB_NAP_O_Hilux_M2", "UK3CB_O_G_Pickup_DSHKM"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["UK3CB_NAP_I_Gaz66_Open", "UK3CB_NAP_I_V3S_Open", "UK3CB_NAP_I_Ural_Open", "UK3CB_NAP_I_Van_Transport"]] call _fnc_saveToTemplate;
["vehiclesAT", ["UK3CB_NAP_I_Hilux_Spg9"]] call _fnc_saveToTemplate;
["vehiclesAA", ["UK3CB_NAP_I_Ural_Zu23", "UK3CB_NAP_I_Hilux_Zu23_Front", "UK3CB_NAP_I_Hilux_Zu23"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["I_C_Boat_Transport_02_F", "UK3CB_I_G_Fishing_Boat_SPG9", "UK3CB_CHD_I_Fishing_Boat_Zu23_front"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["UK3CB_CHC_I_Antonov_AN2"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["UK3CB_C_AC500", "UK3CB_C_DC3"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["UK3CB_FIA_I_Hilux_Ambulance"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["UK3CB_C_Golf", "UK3CB_C_Landcruiser", "C_Offroad_01_F", "UK3CB_C_Hilux_Open", "UK3CB_C_Pickup", "UK3CB_C_SUV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["UK3CB_CHC_C_V3S_Open", "UK3CB_C_Ural_Open", "UK3CB_TKC_C_Kamaz_Open", "UK3CB_C_V3S_Recovery", "UK3CB_C_Ural_Recovery"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["UK3CB_C_Bell412_Civ", "UK3CB_C_Bell412_Medic"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat", "UK3CB_CHC_C_Fishing_Boat"]] call _fnc_saveToTemplate;

["staticMGs", ["UK3CB_NAP_I_DSHKM", "UK3CB_FIA_I_M240_Low", "UK3CB_FIA_I_M240_High", "UK3CB_MEI_I_KORD_high", "UK3CB_MEI_I_KORD", "UK3CB_MEI_I_PKM_Low", "UK3CB_MEI_I_DSHkM_Mini_TriPod"]] call _fnc_saveToTemplate;
["staticAT", ["UK3CB_UN_I_SPG9"]] call _fnc_saveToTemplate;
["staticAA", ["UK3CB_UN_I_ZU23"]] call _fnc_saveToTemplate;
["staticMortars", ["UK3CB_FIA_I_M252", "rhsgref_ins_g_2b14"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "rhs_mag_3vs25m_10"] call _fnc_saveToTemplate;

["minesAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["minesAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

#include "3CB_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//   Scripts or AI use   //
///////////////////////////

["vehicleBasic", "UK3CB_NAP_I_YAVA"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "UK3CB_KDF_I_UAZ_Closed"] call _fnc_saveToTemplate;
["vehicleLightArmed", "UK3CB_KDF_I_UAZ_MG"] call _fnc_saveToTemplate;
["vehicleTruck", "UK3CB_KDF_I_Gaz66_Open"] call _fnc_saveToTemplate;
["vehicleAT", "UK3CB_KDF_I_UAZ_SPG9"] call _fnc_saveToTemplate;
["vehicleAA", "UK3CB_KDF_I_Gaz66_ZU23"] call _fnc_saveToTemplate;

["vehicleBoat", "UK3CB_CHD_I_Fishing_Boat"] call _fnc_saveToTemplate;
["vehicleRepair", "UK3CB_KDF_I_Gaz66_Covered"] call _fnc_saveToTemplate;

["vehiclePlane", "UK3CB_CHC_I_Antonov_AN2"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "I_C_Plane_Civil_01_F"] call _fnc_saveToTemplate;

["vehicleCivCar", "UK3CB_CHC_C_Lada"] call _fnc_saveToTemplate;
["vehicleCivTruck", "UK3CB_CHC_C_Kamaz_Open"] call _fnc_saveToTemplate;
["vehicleCivHeli", "UK3CB_CHC_C_Mi8AMT"] call _fnc_saveToTemplate;
["vehicleCivBoat", "UK3CB_CHC_C_Fishing_Boat"] call _fnc_saveToTemplate;
["vehicleCivBoxSupply", "UK3CB_ADC_C_S1203"] call _fnc_saveToTemplate;

["staticMG", "UK3CB_KDF_I_DSHKM"] call _fnc_saveToTemplate;
["AIstaticAT", "UK3CB_KDF_I_SPG9"] call _fnc_saveToTemplate;
["AIstaticAA", "UK3CB_KDF_I_ZU23"] call _fnc_saveToTemplate;
["staticMortar", "UK3CB_KDF_I_2b14_82mm"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    ["rhsgref_nat_Igla_AA_pod", 3000, "STATICAA", {tierWar > 3}],
    ["UK3CB_LNM_I_Metis", 3000, "STATICAT", {tierWar > 3}],
    ["rhsgref_nat_AGS30_TriPod", 3000, "STATICMG", {tierWar > 3}],

    ["UK3CB_I_G_BRDM2_UM", 1750, "CAR", {true}],
    ["UK3CB_I_G_BRDM2_HQ", 2050, "CAR", {true}],
    ["UK3CB_I_G_BRDM2", 2500, "CAR", {true}],
    ["UK3CB_I_G_BRDM2_ATGM", 3500, "CAR", {tierWar > 3}],
    ["UK3CB_KDF_I_UAZ_AGS30", 2500, "CAR", {tierWar > 2}],

    ["UK3CB_I_G_MTLB_PKT", 2000, "APC", {true}],
    ["UK3CB_I_G_BTR40", 2250, "APC", {true}],
    ["UK3CB_I_G_BTR40_MG", 3000, "APC", {true}],
    ["UK3CB_KDF_I_BTR60", 5000, "APC", {true}],
    ["UK3CB_KDF_I_BTR70", 5000, "APC", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],
    ["UK3CB_KDF_I_BMD1K", 7500, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_KDF_I_BMD2", 10000, "APC", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["UK3CB_I_G_T34", 10000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],
    ["UK3CB_I_G_T55", 13000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["UK3CB_KDF_I_T72A", 20000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_KDF_I_T80", 21000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    
    ["UK3CB_KDF_I_MTLB_ZU23", 7000, "AA", {tierWar > 3}],
    ["UK3CB_I_G_ZsuTank", 7500, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["UK3CB_KDF_I_MIG21_CAS", 35000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["Tornado_AWS_ADV_IND", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["Tornado_AWS_ind", 45000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_EA6B_Blank", 35000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F18C_Blank_Aggressor", 65000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_FA18F_Blank", 70000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_Su25SM3_Blank", 50000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F23A_Blank", 1000000, "PLANE", {tierWar > 9 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_AV8B_NA_Blank", 50000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_EA18G_Blank", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F22_ENEMY_TYPE_A", 1500000, "PLANE", {tierWar > 9 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_A10C_Blank", 55000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F15C_Blank", 65000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F15E_Blank", 70000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F14D_Blank", 55000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F2A_IMAS", 1500000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["FIR_F16C_Blank", 70000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["SAFP_mig29sm", 55000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],   
    
    ["UK3CB_KDF_I_Mi8", 17500, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_KDF_I_Mi8AMTSh", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

["variants", [
    ["UK3CB_KDF_I_MIG21_CAS", ["SIL",1]]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "rhs_weap_makarov_pm", "rhs_mag_9x18_8_57N181S",
    "rhs_weap_tt33", "rhs_mag_762x25_8",
    "rhs_weap_Izh18", "rhsgref_1Rnd_00Buck", "rhsgref_1Rnd_Slug",
    "uk3cb_ppsh41", "uk3cb_PPSH_71rnd_magazine", "uk3cb_PPSH_71rnd_magazine_RT", "uk3cb_PPSH_71rnd_magazine_RM", "uk3cb_PPSH_71rnd_magazine_R",
    "uk3cb_sks_01", "uk3cb_10rnd_magazine_sks", "uk3cb_10rnd_magazine_sks_R", "uk3cb_10rnd_magazine_sks_RT",
    "rhs_weap_m38", "rhsgref_5Rnd_762x54_m38",
    "rhs_grenade_khattabka_vog17_mag", "rhs_grenade_khattabka_vog25_mag", "rhsgref_mag_rkg3em", "rhs_mag_rdg2_black", "rhs_mag_rdg2_white",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "Binocular",
    "B_FieldPack_oli",
    "rhs_weap_rsp30_white","rhs_mag_rsp30_white",
    "rhs_weap_rsp30_green","rhs_mag_rsp30_green",
    "rhs_weap_rsp30_red", "rhs_mag_rsp30_red",
    "rhs_mag_nspd", "rhs_mag_nspn_yellow", "rhs_mag_nspn_green", "rhs_mag_nspn_red",
    "rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh46"
];

private _civilianBackpacks =  ["UK3CB_CHC_C_B_MED", "B_AssaultPack_blk"];
if (_hasLawsOfWar) then {
    _civilianBackpacks append [
        "B_Messenger_Black_F", 
        "B_Messenger_Coyote_F", 
        "B_Messenger_Gray_F",
        "B_Messenger_Olive_F", 
        "B_LegStrapBag_black_F", 
        "B_LegStrapBag_coyote_F", 
        "B_LegStrapBag_olive_F"
    ];
};

["civilianBackpacks", _civilianBackpacks createHashMapFromArray []] call _fnc_saveToTemplate;

_initialRebelEquipment append _civilianBackpacks;

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "U_IG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    "U_IG_Guerrilla_6_1",
    "rhsgref_uniform_dpm",
    "rhsgref_uniform_dpm_olive",
    "rhsgref_uniform_og107",
    "rhsgref_uniform_og107_erdl",
    "rhsgref_uniform_woodland",
    "rhsgref_uniform_woodland_olive",
    "UK3CB_LSM_I_U_CombatSmock_01",
    "UK3CB_CHD_I_U_CombatSmock_05",
    "UK3CB_CHD_I_U_CombatSmock_01",
    "UK3CB_CHD_W_I_U_CombatSmock_06",
    "UK3CB_CHD_I_U_CombatSmock_08",
    "UK3CB_CHD_I_U_CombatSmock_09",
    "UK3CB_CHD_I_U_CombatSmock_07",
    "UK3CB_CHD_I_U_CombatSmock_04",
    "UK3CB_CHD_W_I_U_CombatSmock_02",
    "UK3CB_LSM_I_U_CombatSmock_13",
    "UK3CB_LSM_I_U_CombatSmock_07",
    "UK3CB_LSM_I_U_CombatSmock_02",
    "UK3CB_LSM_I_U_CombatUniform_08",
    "UK3CB_LSM_I_U_CombatUniform_06",
    "UK3CB_LSM_I_U_CombatUniform_05",
    "rhs_uniform_afghanka_klmk",
    "rhsgref_uniform_vsr"
];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "H_Beret_blk",
    "H_Cap_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
    "UK3CB_H_Bandanna_Camo",
    "UK3CB_H_Civ_Beret",
    "UK3CB_H_Beret_Officer",
    "UK3CB_H_Beret_Officer_Grn",
    "UK3CB_H_Beret_Officer_Red",
    "UK3CB_LSM_B_H_M88_Field_Cap_PART",
    "UK3CB_LSM_B_H_M88_Field_Cap_OLI",
    "UK3CB_LSM_B_H_M88_Field_Cap_KHK",
    "rhs_fieldcap_m88_klmk",
    "rhs_fieldcap_m88_klmk_back",
    "rhs_fieldcap_m88_vsr_2_back",
    "rhs_fieldcap_m88_vsr_2",
    "rhs_ushanka"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "LivonianHead_1", "LivonianHead_2", "LivonianHead_3", "LivonianHead_4",
    "LivonianHead_5", "LivonianHead_6", "LivonianHead_7", "LivonianHead_8",
    "LivonianHead_9", "LivonianHead_10",
    "RussianHead_1", "RussianHead_2", "RussianHead_3", "RussianHead_4", "RussianHead_5"
]] call _fnc_saveToTemplate;
["voices", ["Male01RUS", "Male02RUS", "Male03RUS"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["rhs_scarf", "UK3CB_G_Balaclava_CHD", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "DRG VSRF"] call _fnc_saveToTemplate; 						

["flag", "rhs_Flag_Russia_F"] call _fnc_saveToTemplate;
["flagTexture", "rhsafrf\addons\rhs_main\data\flag_rus_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Russia"] call _fnc_saveToTemplate;

["vehicleBasic", "UK3CB_CHC_C_TT650"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "RHS_UAZ_MSV_01"] call _fnc_saveToTemplate;
["vehicleLightArmed", "rhsgref_nat_uaz_dshkm"] call _fnc_saveToTemplate;
["vehicleTruck", "rhs_kamaz5350_msv"] call _fnc_saveToTemplate;
["vehicleAT", "rhsgref_nat_uaz_spg9"] call _fnc_saveToTemplate;
["vehicleAA", "rhs_gaz66_zu23_msv"] call _fnc_saveToTemplate;

["vehicleBoat", "B_Boat_Armed_01_minigun_F"] call _fnc_saveToTemplate;
["vehicleRepair", "RHS_Ural_Repair_MSV_01"] call _fnc_saveToTemplate;

["vehiclePlane", "RHS_AN2"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "I_C_Plane_Civil_01_F"] call _fnc_saveToTemplate;

["vehicleCivCar", "UK3CB_TKC_C_Hilux_Civ_Open"] call _fnc_saveToTemplate;
["vehicleCivTruck", "rhs_gaz66_msv"] call _fnc_saveToTemplate;
["vehicleCivHeli", "UK3CB_CHC_C_Mi8AMT"] call _fnc_saveToTemplate;
["vehicleCivBoat", "O_G_Boat_Transport_01_F"] call _fnc_saveToTemplate;
["vehicleCivBoxSupply", "UK3CB_ADC_C_S1203"] call _fnc_saveToTemplate;

["staticMG", "rhs_KORD_high_MSV"] call _fnc_saveToTemplate;
["staticAT", "rhs_Kornet_9M133_2_msv"] call _fnc_saveToTemplate;
["staticAA", "RHS_ZU23_MSV"] call _fnc_saveToTemplate;
["staticMortar", "rhs_2b14_82mm_msv"] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;

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

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    ["rhs_Igla_AA_pod_msv", 3000, "STATICAA", {tierWar > 3}],    
    ["pook_P15M_Base_IND", 10000, "STATICAA", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_SA3_radar_base_IND", 10000, "STATICAA", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_SA3_static_root_IND", 10000, "STATICAA", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_76N6_radarCHDKZ_INDFOR", 20000, "STATICAA", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_30N6E2_mast_IND", 20000, "STATICAA", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_SA20_static_base_IND", 20000, "STATICAA", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_ANMPQ50_root", 15000, "STATICAA", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["POOK_ANMPQ53_Base", 30000, "STATICAA", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["pook_MIM104_PAC3_Base", 30000, "STATICAA", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}}],
    ["rhs_Kornet_9M133_2_msv", 3000, "STATICAT", {tierWar > 3}],
    ["RHS_AGS30_TriPod_MSV", 3000, "STATICMG", {tierWar > 3}],
    ["rhs_D30_at_msv", 6000, "STATICMG", {tierWar > 4}],
    ["rhs_D30_msv", 13000, "STATICMG", {tierWar > 5}],

    ["rhs_tigr_m_msv", 1000, "CAR", {true}],
    ["rhs_tigr_sts_msv", 1300, "CAR", {tierWar > 2}],
    ["rhsgref_BRDM2UM_msv", 1750, "CAR", {true}],
    ["rhsgref_BRDM2_HQ_msv", 2050, "CAR", {true}],
    ["rhsgref_BRDM2_msv", 2500, "CAR", {true}],
    ["rhsgref_BRDM2_ATGM_msv", 3500, "CAR", {tierWar > 3}],  
    ["RHS_BM21_MSV_01", 25000, "CAR", {tierWar > 8}],
    ["rhs_9k79", 50000, "CAR", {tierWar > 8}],
    ["rhs_9k79_K", 38000, "CAR", {tierWar > 8}],           

    ["rhs_btr80_msv", 5000, "APC", {true}],
    ["rhs_btr80a_msv", 6500, "APC", {tierWar > 2}],      
    ["rhs_bmd1pk", 7000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmd2m", 9500, "APC", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmd4m_vdv", 11000, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmp3mera_msv", 12500, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmp2k_msv", 11500, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmp1k_msv", 10000, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_brm1k_msv", 9000, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_Ob_681_2", 10000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],        
    ["rhs_sprut_vdv", 15000, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t15_tv", 17000, "APC", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],         

    ["rhs_t72bb_tv", 18000, "TANK", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_2s1_tv", 21000, "TANK", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_2s3_tv", 23000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],    
    ["rhs_t72bc_tv", 19000, "TANK", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t80b", 18000, "TANK", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t80bv", 19000, "TANK", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t80uk", 20000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],        
    ["rhs_t72be_tv", 19500, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t90sm_tv", 22500, "TANK", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t90am_tv", 23500, "TANK", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t14_tv", 28500, "TANK", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t90a_tv", 21500, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],        
    
    ["rhs_zsu234_aa", 7000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["UK3CB_KDF_I_MTLB_ZU23", 6500, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["UK3CB_O_2S6M_Tunguska_VPV", 10000, "AA", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],    

    ["RHS_Su25SM_vvs", 23000, "PLANE", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["rhs_mig29sm_vvs", 28000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["RHS_T50_vvs_blueonblue", 30000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
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

    ["RHS_Mi8AMT_vvsc", 13000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["RHS_Mi8MTV3_heavy_vvsc", 16000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["rhs_ka60_c", 18000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["RHS_Mi24Vt_vvsc", 21000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["rhs_mi28n_vvsc", 22000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],            
    ["RHS_Ka52_vvsc", 26000, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "rhs_weap_makarov_pm", "rhs_mag_9x18_8_57N181S",
    "rhs_weap_Izh18", "rhsgref_1Rnd_00Buck", "rhsgref_1Rnd_Slug", "rhsgref_5Rnd_762x54_m38",
    "CUP_sgun_CZ584_RIS", "sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F", 
    "rhs_weap_m3a1", "rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG",
    "rhs_weap_scorpion", "rhsgref_20rnd_765x17_vz61",
     "rhs_weap_m38_rail", "rhs_weap_mosin_sbr", "rhs_weap_pb_6p9",
    "uk3cb_ppsh41", "uk3cb_PPSH_71rnd_magazine", "uk3cb_PPSH_71rnd_magazine_RT", "uk3cb_PPSH_71rnd_magazine_RM", "uk3cb_PPSH_71rnd_magazine_R",
    "uk3cb_sks_01", "uk3cb_10rnd_magazine_sks", "uk3cb_10rnd_magazine_sks_R", "uk3cb_10rnd_magazine_sks_RT",
    "rhs_grenade_khattabka_vog25_mag", "rhs_mag_rdg2_white",
    "rhs_weap_panzerfaust60", "6Rnd_12Gauge_Pellets", "6Rnd_12Gauge_Slug", "8Rnd_12Gauge_Pellets", "8Rnd_12Gauge_Slug",
    "CUP_1Rnd_B_CZ584_74Slug", "CUP_1Rnd_B_CZ584_74Pellets", "CUP_7Rnd_B_CZ584_OFP", 
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "Binocular",
    "rhs_radio_R169P1",
    "B_FieldPack_oli",
    "rhsgref_chicom","V_BandollierB_oli",
    "rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh92_digi",
    "rhs_6sh92_digi_headset","rhs_6sh92_digi_radio","rhs_6sh92_digi_vog","rhs_6sh92_digi_vog_headset","rhs_vydra_3m"

];

private _civilianBackpacks =  [];
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
} else {
    _civilianBackpacks pushBack "B_AssaultPack_blk";
};

["civilianBackpacks", _civilianBackpacks createHashMapFromArray []] call _fnc_saveToTemplate;

_initialRebelEquipment append _civilianBackpacks;

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "rhs_uniform_vkpo",
    "rhs_uniform_vkpo_gloves",
    "rhs_uniform_vkpo_alt",
    "rhs_uniform_vkpo_gloves_alt",
    "rhs_uniform_emr_patchless",
    "rhs_uniform_vdv_emr",
    "rhs_uniform_emr_des_patchless",
    "rhs_uniform_vdv_emr_des",
    "rhs_uniform_6sh122_v1",
	"rhs_uniform_6sh122_gloves_v1",
    "rhs_uniform_6sh122_v2",
    "rhs_uniform_6sh122_gloves_v2",
    "rhs_uniform_df15",
    "rhs_uniform_df15_tan"

];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "rhs_6m2",
    "rhs_6m2_1",
    "H_Cap_oli",
    "H_Cap_headphones",
    "rhs_beret_mp2",
    "rhs_beret_mvd",
    "rhs_beret_omon",
    "rhs_Booniehat_digi",
    "rhs_fieldcap_helm_digi",
    "rhs_fieldcap_digi",
    "rhs_fieldcap_digi2",
    "rhs_gssh18",
    "rhs_tsh4",
    "rhs_tsh4_ess",
    "rhs_vkpo_cap",
    "rhs_zsh7a_mike_green",
    "rhs_zsh7a_mike_green_alt",
    "rhs_zsh7a_alt",
    "rhsgref_bcap_specter",
    "rhs_balaclava",
    "rhs_balaclava1_olive",
    "rhs_scarf",
    "rhs_vkpo_cap_alt"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "RussianHead_1", "RussianHead_2", "RussianHead_3", "RussianHead_4", "RussianHead_5" 

]] call _fnc_saveToTemplate;
["voices", ["Male01RUS","Male02RUS","Male03RUS","RHS_Male01RUS", "RHS_Male02RUS", "RHS_Male03RUS", "RHS_Male04RUS", "RHS_Male05RUS"]] call _fnc_saveToTemplate;

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
_loadoutData set ["facemask", ["rhs_balaclava", "rhs_balaclava1_olive", "rhs_scarf"]];

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

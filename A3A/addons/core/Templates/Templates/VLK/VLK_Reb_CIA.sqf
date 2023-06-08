private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "CIA"] call _fnc_saveToTemplate; 						

["flag", "Flag_CIA1_F"] call _fnc_saveToTemplate;
["flagTexture", "\vlkpictures\datapack\Flag_CIA1.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_CIA_marker"] call _fnc_saveToTemplate;

["vehicleBasic", "UK3CB_FIA_B_Quadbike"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "UK3CB_ION_B_Desert_MB4WD_Unarmed"] call _fnc_saveToTemplate;
["vehicleLightArmed", "UK3CB_ION_B_Desert_MB4WD_LMG"] call _fnc_saveToTemplate;
["vehicleTruck", "UK3CB_ION_B_Desert_T810_Closed"] call _fnc_saveToTemplate;
["vehicleAT", "CUP_I_4WD_AT_ION"] call _fnc_saveToTemplate;
["vehicleAA", "CUP_I_SUV_Armored_ION"] call _fnc_saveToTemplate;

["vehicleBoat", "UK3CB_MDF_I_RHIB"] call _fnc_saveToTemplate;
["vehicleRepair", "UK3CB_ION_I_Desert_Transit_Service"] call _fnc_saveToTemplate;

["vehiclePlane", "UK3CB_ION_I_Desert_AC500"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "UK3CB_ION_I_Desert_C400"] call _fnc_saveToTemplate;

["vehicleCivCar", "UK3CB_ION_I_Desert_Hilux_Open"] call _fnc_saveToTemplate;
["vehicleCivTruck", "CUP_I_Van_Cargo_ION"] call _fnc_saveToTemplate;
["vehicleCivHeli", "UK3CB_ION_I_Desert_Bell412_Medic"] call _fnc_saveToTemplate;
["vehicleCivBoat", "O_G_Boat_Transport_01_F"] call _fnc_saveToTemplate;
["vehicleCivBoxSupply", "UK3CB_ADC_C_S1203"] call _fnc_saveToTemplate;

["staticMG", "UK3CB_ION_I_Desert_M240_High"] call _fnc_saveToTemplate;
["staticAT", "UK3CB_CW_US_B_LATE_TOW_TriPod"] call _fnc_saveToTemplate;
["staticAA", "UK3CB_AAF_B_Stinger_AA_pod"] call _fnc_saveToTemplate;
["staticMortar", "UK3CB_ION_I_Desert_M252"] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_12Rnd_m821_HE"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

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
    ["UK3CB_AAF_B_Stinger_AA_pod", 1000, "STATICAA", {tierWar > 3}],    
    ["UK3CB_CW_US_B_LATE_TOW_TriPod", 1000, "STATICAT", {tierWar > 3}],
    ["UK3CB_ION_I_Desert_MK19_TriPod", 800, "STATICMG", {tierWar > 3}],
    ["UK3CB_ION_I_Desert_M240_Low", 700, "STATICMG", {tierWar > 3}],
    ["UK3CB_ION_I_Desert_M240_nest", 1100, "STATICMG", {tierWar > 3}],
    ["UK3CB_AAF_I_M240_nest_des", 1100, "STATICMG", {tierWar > 3}],
    ["CUP_B_M134_A_US_ARMY", 1500, "STATICMG", {tierWar > 4}],

    ["UK3CB_ION_I_Desert_M1030", 100, "CAR", {true}],
    ["CUP_I_Van_Transport_ION", 400, "CAR", {true}],
    ["UK3CB_ION_I_Desert_Offroad_Covered", 400, "CAR", {true}],
    ["UK3CB_ION_I_Desert_LR_Closed", 400, "CAR", {true}],
    ["UK3CB_ION_I_Desert_Landcruiser", 400, "CAR", {true}],
    ["UK3CB_ION_I_Desert_LSV_01", 500, "CAR", {true}],
    ["UK3CB_ION_I_Desert_Hilux_M2", 750, "CAR", {tierWar > 2}],
    ["UK3CB_ION_I_Desert_LR_M2", 750, "CAR", {tierWar > 2}],
    
    ["UK3CB_ION_I_Desert_LSV_02", 800, "CAR", {tierWar > 2}],
    ["UK3CB_ION_I_Desert_LSV_02_Armed", 1000, "CAR", {tierWar > 2}],
    ["UK3CB_ION_I_Desert_LSV_02_AT", 1000, "CAR", {tierWar > 2}],
    ["CUP_B_nM1025_SOV_M2_ION", 1000, "CAR", {tierWar > 2}],    
    ["CUP_B_nM1025_SOV_Mk19_ION", 1000, "CAR", {tierWar > 2}],
    ["CUP_I_nM1025_Unarmed_DF_ION", 1000, "CAR", {tierWar > 2}],
    ["CUP_I_nM1035_amb_DF_ION", 1000, "CAR", {tierWar > 2}],
    ["CUP_I_nM1038_DF_ION", 1000, "CAR", {tierWar > 2}],
    ["CUP_I_nM1038_4s_DF_ION", 1000, "CAR", {tierWar > 2}],
    ["CUP_I_nM1025_M2_DF_ION", 1200, "CAR", {tierWar > 2}],
    ["CUP_I_nM1025_M240_ION", 1200, "CAR", {tierWar > 2}],
    ["CUP_I_nM1025_Mk19_DF_ION", 1400, "CAR", {tierWar > 2}],
    ["CUP_I_nM1036_TOW_DF_ION", 1500, "CAR", {tierWar > 2}],
    ["CUP_I_FENNEK_ION", 2300, "CAR", {tierWar > 3}],
    ["CUP_I_MATV_ION", 2300, "CAR", {tierWar > 3}],
    ["CUP_I_FENNEK_HMG_ION", 2800, "CAR", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_nM1038_Ammo_DF_ION", 5000, "CAR", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_nM1038_Repair_DF_ION", 5000, "CAR", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_ION_I_Desert_T810_Refuel", 5000, "CAR", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_FENNEK_GMG_ION", 3100, "CAR", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_MATV_HMG_ION", 2800, "CAR", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_MATV_GMG_ION", 3100, "CAR", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_RG31_Mk19_ION", 3300, "CAR", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_RG31_M2_ION", 3200, "CAR", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_RG31E_M2_ION", 3600, "CAR", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_RG31_M2_GC_ION", 3600, "CAR", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_ION_I_Desert_MaxxPro_M2", 3800, "CAR", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_ION_I_Desert_MaxxPro_MK19", 4000, "CAR", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],           

    ["UK3CB_ION_B_Desert_M113_unarmed", 2300, "APC", {true}],
    ["UK3CB_ION_B_Desert_M113_AMB", 2400, "APC", {true}],
    ["UK3CB_ION_B_Desert_M113_M240", 2800, "APC", {tierWar > 3}],
    ["UK3CB_ION_B_Desert_M113_M2_90", 2900, "APC", {tierWar > 3}],
    ["UK3CB_ION_B_Desert_M113_M2", 3200, "APC", {tierWar > 4}],      
    ["UK3CB_ION_B_Desert_M113_supply", 3000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_ION_B_Desert_M113_MK19", 3400, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_BTR80_ION", 3900, "APC", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["CUP_I_BTR80A_ION", 4400, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],          

    ["UK3CB_ION_I_Desert_C400", 2500, "PLANE", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_ION_I_Desert_Cessna_172", 2000, "PLANE", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_ION_I_Desert_Cessna_T41_Armed_M134", 2600, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],        

    ["CUP_I_412_Mil_Transport_PMC", 1300, "HELI", {tierWar > 3 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_412_Mil_Utility_PMC", 1500, "HELI", {tierWar > 3 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_MH6M_ION", 1200, "HELI", {tierWar > 3 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_Merlin_HC3_PMC_Lux_black", 2100, "HELI", {tierWar > 3 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_ION_I_Desert_MELB_AH6M_M", 2000, "HELI", {tierWar > 3 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_412_Military_Armed_PMC", 2100, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_412_Military_Armed_AT_PMC", 2200, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_412_dynamicLoadout_PMC", 2400, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_Ka60_GL_Blk_ION", 2600, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],            
    ["UK3CB_ION_I_Desert_Bell412_Armed_dynamicLoadout", 2500, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_ION_I_Desert_Orca_Armed_AT", 2600, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_Mi24_D_Dynamic_ION", 3000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_Mi24_Mk3_ION", 3500, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_I_Mi24_Mk4_ION", 3800, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "UK3CB_MP5_30Rnd_9x19_Magazine_YT", "UK3CB_MP5_30Rnd_9x19_Magazine_GT", "UK3CB_MP5_30Rnd_9x19_Magazine_WT",
    "UK3CB_MP5K", "CUP_smg_MP5SD6", "CUP_30Rnd_Subsonic_9x19_MP5",
    "rhs_weap_M590_8RD", "rhsusf_8Rnd_00Buck", "rhsusf_8Rnd_Slug", 
    "rhs_weap_M590_5RD", "rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug",
    "CUP_smg_MP7", "CUP_smg_MP7_desert", "CUP_smg_MP7_woodland", "rhsusf_mag_40Rnd_46x30_FMJ", "rhsusf_mag_40Rnd_46x30_JHP", "CUP_40Rnd_46x30_MP7_Red_Tracer", "CUP_40Rnd_46x30_MP7_Green_Tracer", "CUP_40Rnd_46x30_MP7_Yellow_Tracer",
    "CUP_smg_Mac10", "CUP_30Rnd_45ACP_MAC10_M", "CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M", "CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
    "CUP_arifle_Colt727", "CUP_30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green",
    "CUP_arifle_G36C", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36",
    "CUP_arifle_AK102", "CUP_arifle_AK102_top_rail", "CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK",
    "CUP_smg_UZI", "CUP_32Rnd_9x19_UZI_M",
    "CUP_hgun_CZ75", "CUP_16Rnd_9x19_cz75",
    "CUP_hgun_Glock17", "CUP_17Rnd_9x19_glock17", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ",
    "CUP_hgun_M17_Black", "CUP_21Rnd_9x19_M17_Black",
    "hgun_Pistol_heavy_02_F", "6Rnd_45ACP_Cylinder",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "Binocular", "rhs_radio_R169P1", "V_LegStrapBag_coyote_F", "V_LegStrapBag_olive_F", "UK3CB_ION_B_V_LegStrapBag_win", "V_LegStrapBag_black_F",
    "UK3CB_ION_B_B_ASS_BLK_02", "UK3CB_ION_B_B_ASS_BRN_02", "UK3CB_ION_B_B_ASS_DES_02", "UK3CB_ION_B_B_ASS_OLI_02", "UK3CB_ION_B_B_ASS_WIN_02", 
    "CUP_V_O_SLA_M23_1_BRN", "CUP_V_O_SLA_M23_1_OD", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_3", "CUP_V_I_RACS_Carrier_Rig_wdl_2", "CUP_V_I_RACS_Carrier_Rig_wdl_3", "CUP_V_C_Police_Holster",
    "CUP_V_B_RRV_MG", "CUP_V_B_RRV_Medic_CB", "CUP_V_B_RRV_Officer_CB", "CUP_V_B_RRV_TL_CB", "CUP_V_B_RRV_MG_GRN", "CUP_V_B_RRV_Medic", "CUP_V_B_RRV_Officer", "CUP_V_B_RRV_TL"

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
    _civilianBackpacks pushBack ["B_AssaultPack_blk"];
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
    "UK3CB_ION_B_U_PoloShirt_Pants_01_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_02_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_03_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_04_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_05_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_06_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_07_URB",
    "UK3CB_ION_B_U_PoloShirt_Pants_01_DES",
    "UK3CB_ION_B_U_PoloShirt_Pants_02_DES",
    "UK3CB_ION_B_U_PoloShirt_Pants_03_DES",
    "UK3CB_ION_B_U_PoloShirt_Pants_04_DES",
    "UK3CB_ION_B_U_PoloShirt_Pants_05_DES",
    "UK3CB_ION_B_U_PoloShirt_Pants_01_WDL",
    "UK3CB_ION_B_U_PoloShirt_Pants_02_WDL",
    "UK3CB_ION_B_U_PoloShirt_Pants_03_WDL",
    "UK3CB_ION_B_U_PoloShirt_Pants_04_WDL",
    "UK3CB_ION_B_U_PoloShirt_Pants_05_WDL",
    "UK3CB_ION_B_U_PoloShirt_Pants_06_WDL",
    "UK3CB_ION_B_U_Uniform_01_URB",
    "UK3CB_ION_B_U_Uniform_02_URB",
    "UK3CB_ION_B_U_Uniform_03_URB",
    "UK3CB_ION_B_U_Uniform_04_URB",
    "UK3CB_ION_B_U_Uniform_05_URB",
    "UK3CB_ION_B_U_Uniform_06_URB",
    "UK3CB_ION_B_U_Uniform_07_URB",
    "UK3CB_ION_B_U_Uniform_08_URB",
    "UK3CB_ION_B_U_Uniform_01_DES",
    "UK3CB_ION_B_U_Uniform_02_DES",
    "UK3CB_ION_B_U_Uniform_03_DES",
    "UK3CB_ION_B_U_Uniform_04_DES",
    "UK3CB_ION_B_U_Uniform_05_DES",
    "UK3CB_ION_B_U_Uniform_06_DES",
    "UK3CB_ION_B_U_Uniform_07_DES",
    "UK3CB_ION_B_U_Uniform_08_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_01_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_02_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_03_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_04_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_05_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_06_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_07_URB",
    "UK3CB_ION_B_U_Tshirt_Uniform_01_URB",
    "UK3CB_ION_B_U_Tshirt_Uniform_02_URB",
    "UK3CB_ION_B_U_Tshirt_Uniform_03_URB",
    "UK3CB_ION_B_U_Tshirt_Uniform_04_URB",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_01_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_02_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_03_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_04_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_05_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_06_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_07_DES",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_01_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_02_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_03_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_04_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_05_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_06_WDL",
    "UK3CB_ION_B_U_SF_Uniform_SHIRT_07_WDL",
    "UK3CB_ION_B_U_Uniform_01_WIN",
    "UK3CB_ION_B_U_Uniform_02_WIN",
    "UK3CB_ION_B_U_Uniform_03_WIN",
    "UK3CB_ION_B_U_Uniform_04_WIN",
    "UK3CB_ION_B_U_Uniform_01_WDL",
    "UK3CB_ION_B_U_Uniform_02_WDL",
    "UK3CB_ION_B_U_Uniform_03_WDL",
    "UK3CB_ION_B_U_Uniform_04_WDL",
    "UK3CB_ION_B_U_Uniform_05_WDL",
    "UK3CB_ION_B_U_Uniform_06_WDL",
    "UK3CB_ION_B_U_Uniform_07_WDL",
    "UK3CB_ION_B_U_Uniform_08_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_01_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_02_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_03_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_04_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_05_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_06_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_07_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_08_DES",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_01_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_02_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_03_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_04_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_05_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_06_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_07_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_08_URB",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_01_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_02_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_03_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_04_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_05_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_06_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_07_WDL",
    "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_08_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_04_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_05_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_06_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_01_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_02_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_03_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_04_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_05_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_06_DES",
    "UK3CB_ION_B_U_Tshirt_Uniform_01_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_02_WDL",
    "UK3CB_ION_B_U_Tshirt_Uniform_03_WDL",
    "UK3CB_ION_B_U_H_Pilot_Uniform_01_URB",
    "UK3CB_ION_B_U_H_Pilot_Uniform_02_URB",
    "UK3CB_ION_B_U_H_Pilot_Uniform_01_DES",
    "UK3CB_ION_B_U_H_Pilot_Uniform_02_DES",
    "UK3CB_ION_B_U_H_Pilot_Uniform_01_WDL",
    "UK3CB_ION_B_U_H_Pilot_Uniform_02_WDL",
    "UK3CB_ION_B_U_H_Pilot_Uniform_01_WIN",
    "UK3CB_ION_B_U_H_Pilot_Uniform_02_WIN",
    "UK3CB_ION_B_Uniform_Jumper_U_01_WIN",
    "UK3CB_ION_B_Uniform_Jumper_U_02_WIN",
    "UK3CB_ION_B_Uniform_Jumper_U_03_WIN",
    "UK3CB_ION_B_Uniform_Jumper_U_04_WIN",
    "CUP_I_B_PMC_Unit_1",
    "CUP_I_B_PMC_Unit_2",
    "CUP_I_B_PMC_Unit_3",
    "CUP_I_B_PMC_Unit_4",
    "CUP_I_B_PMC_Unit_5",
    "CUP_I_B_PMC_Unit_6",
    "CUP_I_B_PMC_Unit_7",
    "CUP_I_B_PMC_Unit_8",
    "CUP_I_B_PMC_Unit_9",
    "CUP_I_B_PMC_Unit_10",
    "CUP_I_B_PMC_Unit_11",
    "CUP_I_B_PMC_Unit_12",
    "CUP_I_B_PMC_Unit_13",
    "CUP_I_B_PMC_Unit_14",
    "CUP_I_B_PMC_Unit_15",
    "CUP_I_B_PMC_Unit_16",
    "CUP_I_B_PMC_Unit_17",
    "CUP_I_B_PMC_Unit_18",
    "CUP_I_B_PMC_Unit_19",
    "CUP_I_B_PMC_Unit_20",
    "CUP_I_B_PMC_Unit_21",
    "CUP_I_B_PMC_Unit_22",
    "CUP_I_B_PMC_Unit_23",
    "CUP_I_B_PMC_Unit_24",
    "CUP_I_B_PMC_Unit_25",
    "CUP_I_B_PMC_Unit_26",
    "CUP_I_B_PMC_Unit_27",
    "CUP_I_B_PMC_Unit_28",
    "CUP_I_B_PMC_Unit_29",
    "CUP_I_B_PMC_Unit_30",
    "CUP_I_B_PMC_Unit_31",
    "CUP_I_B_PMC_Unit_32",
    "CUP_I_B_PMC_Unit_33",
    "CUP_I_B_PMC_Unit_34",
    "CUP_I_B_PMC_Unit_35",
    "CUP_I_B_PMC_Unit_36",
    "CUP_I_B_PMC_Unit_37",
    "CUP_I_B_PMC_Unit_38",
    "CUP_I_B_PMC_Unit_39",
    "CUP_I_B_PMC_Unit_40",
    "CUP_I_B_PMC_Unit_41",
    "CUP_I_B_PMC_Unit_42",
    "CUP_I_B_PMC_Unit_43"

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
    "rhs_zsh7a_mike_green",
    "rhs_zsh7a_mike_green_alt",
    "rhs_zsh7a_alt",
    "rhsgref_bcap_specter",
    "rhs_balaclava",
    "rhs_balaclava1_olive",
    "rhs_scarf"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "WhiteHead_09", "WhiteHead_08", "WhiteHead_03", "WhiteHead_20", "Barklem", "WhiteHead_12", "AfricanHead_03", "GreekHead_A3_05", "LivonianHead_6", "RussianHead_1", "RussianHead_2", "RussianHead_3" 

]] call _fnc_saveToTemplate;
["voices", ["male05eng", "male04engb", "male03eng", "male05eng", "male01engfre", "male04eng", "male07eng", "male02eng", "male04engb"]] call _fnc_saveToTemplate;

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
_loadoutData set ["facemask", []];

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

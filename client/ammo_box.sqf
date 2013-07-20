// by Xeno

private "_vec";

#define __awc(wtype,wcount) _vec addWeaponCargo [#wtype,wcount];
#define __amc(mtype,mcount) _vec addMagazineCargo [#mtype,mcount];

_vec = _this select 0;


clearMagazineCargo _vec;
clearWeaponCargo _vec;

// Rucks

	__awc(ACE_ParachutePack,20)
	__awc(ACE_Rucksack_RD90,5)
	__awc(ACE_Rucksack_RD91,5)
	__awc(ACE_Rucksack_RD92,5)
	__awc(ACE_Rucksack_RD54,5)
	__awc(ACE_Rucksack_RD99,5)
	__awc(ACE_Rucksack_EAST,5)
	__awc(ACE_Rucksack_EAST_Medic,5)
	__awc(ACE_AssaultPack_BAF,5)
	__awc(ACE_Backpack_TT,5)
	__awc(ACE_Backpack_FL,5)
	__awc(ACE_Backpack_US,5)
	__awc(ACE_Backpack_CivAssault,5)
	__awc(ACE_ALICE_Backpack,5)
	__awc(ACE_BackPack_ACR_MTP,5)
	__awc(ACE_BackPack_ACR_DDPM,5)
	__awc(ACE_BackPack_ACR_DPM,5)
	__awc(ACE_BackPack_ACR_TT,5)
	__awc(ACE_BackPack_ACR_FL,5)
	__awc(ACE_BackPack_ACR,5)
	__awc(ACE_Coyote_Pack_Black,5)
	__awc(ACE_Coyote_Pack,5)
	__awc(ACE_FAST_PackEDC_ACU,5)
	__awc(ACE_FAST_PackEDC,5)
	__awc(ACE_CharliePack_ACU_Medic,5)
	__awc(ACE_CharliePack_ACU,5)
	__awc(ACE_CharliePack_WMARPAT,5)
	__awc(ACE_CharliePack,5)
	__awc(ACE_VTAC_RUSH72_FT_MEDIC,5)
	__awc(ACE_VTAC_RUSH72_TT_MEDIC,5)
	__awc(ACE_VTAC_RUSH72_ACU,5)
	__awc(ACE_VTAC_RUSH72,5)
	__awc(ACE_Rucksack_MOLLE_DMARPAT_Medic,5)
	__awc(ACE_Rucksack_MOLLE_WMARPAT_Medic,5)
	__awc(ACE_Rucksack_MOLLE_ACU_Medic,5)
	__awc(ACE_Rucksack_MOLLE_Brown_Medic,5)
	__awc(ACE_Rucksack_MOLLE_Green_Medic,5)
	__awc(ACE_Rucksack_MOLLE_WMARPAT,5)
	__awc(ACE_Rucksack_MOLLE_ACU,5)
	__awc(ACE_Rucksack_MOLLE_Wood,5)
	__awc(ACE_Rucksack_MOLLE_Brown,5)
	__awc(ACE_Rucksack_MOLLE_Green,5)


// ACRE

	__awc(ACRE_PRC117F,5)
	__awc(ACRE_PRC119,5)
	__awc(ACRE_PRC148,5)
	__awc(ACRE_PRC152,5)



// Pistols

	__awc(M9,1)
	__awc(M9SD,1)
	__awc(Colt1911,1)
	__awc(ACE_Glock17,1)
	__awc(ACE_Glock18,1)
	__awc(ACE_P226,1)
	__awc(ACE_L9A1,1)
	__awc(ACE_MugLite,1)
	__awc(ACE_P8,1)
	__awc(ACE_TT,1)
	__awc(ACE_USP,1)
	__awc(ACE_USPSD,1)
	__awc(revolver_gold_EP1,1)

	__amc(ACE_13Rnd_9x19_L9A1,30)
	__amc(ACE_15Rnd_9x19_S_M9,30)
	__amc(ACE_SSGreen_FG,30)
	__amc(ACE_SSRed_FG,30)
	__amc(ACE_SSWhite_FG,30)
	__amc(ACE_SSYellow_FG,30)
	__amc(17Rnd_9x19_glock17,30)
	__amc(ACE_33Rnd_9x19_G18,30)
	__amc(ACE_15Rnd_9x19_P8,30)
	__amc(ACE_8Rnd_762x25_B_Tokarev,30)
	__amc(ACE_12Rnd_45ACP_USP,30)
	__amc(ACE_12Rnd_45ACP_USPSD,30)
	__amc(6Rnd_45ACP,30)
	__amc(7Rnd_45ACP_1911,30)
	__amc(15Rnd_9x19_M9,30)
	__amc(15Rnd_9x19_M9SD,30)
	__amc(ACE_17Rnd_9x19_G17,30)
	__amc(ACE_15Rnd_9x19_P226,50)


	//Machine Pistols

	__awc(Sa61_EP1,1)
	__awc(UZI_EP1,1)
	__awc(ACE_KAC_PDW,1)
	__awc(ACE_MP5A4,1)
	__awc(ACE_MP5A5,1)
	__awc(ACE_MP5SD,1)
	__awc(ACE_MP7,1)
	__awc(ACE_MP7_RSAS,1)
	__awc(ACE_UMP45,1)
	__awc(ACE_UMP45_AIM,1)
	__awc(ACE_UMP45_AIM_SD,1)
	__awc(ACE_UMP45_SD,1)


	__amc(20Rnd_B_765x17_Ball,30)
	__amc(ACE_30Rnd_9x19_S_UZI,30)
	__amc(ACE_30Rnd_6x35_B_PDW,30)
	__amc(30Rnd_9x19_MP5SD,30)
	__amc(ACE_30Rnd_9x19_S_MP5,30)
	__amc(ACE_40Rnd_B_46x30_MP7,30)
	__amc(ACE_25Rnd_1143x23_B_UMP45,30)



// Rifles


	// M4 Family
	
	__awc(M16A2,1)
	__awc(M16A2GL,1)
	__awc(M16A4,1)
	__awc(M16A4_GL,1)
	__awc(M16A4_ACG,1)
	__awc(M16A4_ACG_GL,1)
	__awc(ACE_M16A4_Iron,1)
	
	__awc(M4A1,1)
	__awc(ACE_M4A1_GL,1)
	__awc(ACE_M4A1_GL_SD,1)
	__awc(M4A1_HWS_GL,1)
	__awc(M4A1_HWS_GL_camo,1)
	__awc(M4A1_HWS_GL_SD_Camo,1)
	__awc(M4A1_RCO_GL,1)
	__awc(M4A1_Aim,1)
	__awc(M4A1_Aim_camo,1)
	__awc(M4A1_AIM_SD_camo,1)
	
	__awc(ACE_SOC_M4A1_Aim,1)
	__awc(ACE_SOC_M4A1_AIM_SD,1)
	__awc(ACE_SOC_M4A1_GL,1)
	__awc(ACE_SOC_M4A1,1)
	__awc(ACE_SOC_M4A1_GL_SD,1)
	__awc(ACE_SOC_M4A1_Eotech,1)
	__awc(ACE_SOC_M4A1_GL_13,1)
	__awc(ACE_SOC_M4A1_GL_EOTECH,1)
	__awc(ACE_SOC_M4A1_SD_9,1)
	__awc(ACE_SOC_M4A1_SHORTDOT,1)
	__awc(ACE_SOC_M4A1_SHORTDOT_SD,1)
	__awc(ACE_SOC_M4A1_RCO_GL,1)
	__awc(ACE_SOC_M4A1_GL_AIMPOINT,1)
	
	__awc(ACE_M4A1_ACOG,1)
	__awc(ACE_M4A1_ACOG_SD,1)
	__awc(ACE_M4A1_Aim_SD,1)
	__awc(ACE_M4A1_Eotech,1)

	// M4 Ammo

	__amc(20Rnd_556x45_Stanag,30)
	__amc(30Rnd_556x45_Stanag,100)
	__amc(ACE_30Rnd_556x45_T_Stanag,50)
	__amc(30Rnd_556x45_StanagSD,50)
	__amc(ACE_30Rnd_556x45_SB_Stanag,50)


	// M14
	__awc(M14_EP1,1)
	__awc(ACE_M14_ACOG,1)

	

	// HK 416's

	__awc(ACE_HK416_D10,1)
	__awc(ACE_HK416_D10_SD,1)
	__awc(ACE_HK416_D10_COMPM3,1)
	__awc(ACE_HK416_D10_COMPM3_SD,1)
	__awc(ACE_HK416_D14,1)
	__awc(ACE_HK416_D14_SD,1)
	__awc(ACE_HK416_D14_COMPM3,1)
	__awc(ACE_HK416_D14_COMPM3_M320,1)
	
	__awc(ACE_HK416_D10_M320,1)


	// HK 417's

	__awc(ACE_HK417_micro,1)
	__awc(ACE_HK417_Eotech_4x,1)
	__awc(ACE_HK417_Shortdot,1)

	__amc(ACE_20Rnd_762x51_S_HK417,50)
	__amc(ACE_20Rnd_762x51_B_HK417,50)
	__amc(ACE_20Rnd_762x51_SB_S_HK417,50)
	__amc(ACE_20Rnd_762x51_T_HK417,50)


	// Scar Family

	__awc(SCAR_L_CQC_EGLM_Holo,1)
	__awc(SCAR_L_STD_EGLM_RCO,1)
	__awc(SCAR_L_CQC,1)
	__awc(SCAR_L_CQC_Holo,1)
	__awc(ACE_SCAR_H_STD_Spect,1)
	__awc(SCAR_H_STD_EGLM_Spect,1)
	__awc(SCAR_H_CQC_CCO,1)

	__amc(20Rnd_762x51_B_SCAR,50)
	__amc(ACE_20Rnd_762x51_S_SCAR,50)
	__amc(ACE_20Rnd_762x51_SB_SCAR,50)
	__amc(ACE_20Rnd_762x51_SB_S_SCAR,50)
	__amc(20Rnd_762x51_SB_SCAR,50)
	__amc(ACE_20Rnd_762x51_T_SCAR,50)


	
	// L85

	__awc(BAF_L85A2_RIS_ACOG,1)
	__awc(BAF_L85A2_RIS_Holo,1)
	__awc(BAF_L85A2_RIS_SUSAT,1)
	__awc(BAF_L85A2_UGL_ACOG,1)
	__awc(BAF_L85A2_UGL_Holo,1)
	__awc(BAF_L85A2_UGL_SUSAT,1)


	// Fal

	
	__awc(ACE_FAL_Para,1)

	__amc(ACE_20Rnd_762x51_B_FAL,50)
	__amc(ACE_30Rnd_762x51_B_FAL,50)


	// G36's
	
	__awc(G36a,1)
	__awc(G36c,1)
	__awc(G36_C_SD_eotech,1)
	__awc(G36k,1)	
	__awc(ACE_G36A1_AG36A1,1)
	__awc(ACE_G36A2_Bipod_D,1)
	__awc(ACE_G36A2_D,1)
	__awc(ACE_G36K_EOTech_D,1)
	__awc(ACE_G36K_iron_D,1)

	__amc(30Rnd_556x45_G36,50)



	//Shotguns

	__awc(M1014,1)
	__awc(AA12_PMC,1)
	__awc(ACE_M1014_Eotech,1)
	__awc(ACE_SPAS12,1)
	__awc(ACE_M3A1,1)

	__amc(8Rnd_B_Beneli_74Slug,30)
	__amc(ACE_8Rnd_12Ga_Slug,30)
	__amc(ACE_8Rnd_12Ga_Buck00,30)
	__amc(ACE_9Rnd_12Ga_Slug,30)
	__amc(ACE_9Rnd_12Ga_Buck00,30)
	__amc(20Rnd_B_AA12_Pellets,30)
	__amc(20Rnd_B_AA12_HE,30)
	__amc(20Rnd_B_AA12_74Slug,30)

	
	// M8's
	
	__awc(M8_carbine,1)
	__awc(M8_carbineGL,1)
	__awc(M8_compact,1)
	__awc(m8_holo_sd,1)
	__awc(m8_carbine_pmc,1)
	__awc(m8_compact_pmc,1)
	

	// Czech Weapons

	__awc(ACE_SA58,1)
	__awc(Sa58P_EP1,1)
	__awc(Sa58V_CCO_EP1,1)
	__awc(Sa58V_EP1,1)
	__awc(Sa58V_RCO_EP1,1)

	__amc(30Rnd_762x39_SA58,50)
	__amc(ACE_30Rnd_762x39_T_SA58,50)

	// G3's

	__awc(ACE_G3A3_RSAS,1)
	__awc(ACE_G3A3,1)
	__awc(ACE_G3SG1,1)

	__amc(ACE_20Rnd_762x51_B_G3,50)


// LMG's & MG's

	__awc(MG36,1)
	__awc(Mk_48,1)
	__awc(Mk_48_DES_EP1,1)
	__awc(M240,1)
	__awc(ACE_M240G_M145,1)
	__awc(ACE_M240L_M145,1)
	__awc(ACE_M60,1)
	__awc(M249,1)
	__awc(M249_EP1,1)
	__awc(ACE_M249_PIP_ACOG,1)
	__awc(ACE_M249Para,1)
	__awc(ACE_M249Para_M145,1)
	__awc(M8_SAW,1)
	__awc(ACE_M27_IAR,1)
	__awc(ACE_M27_IAR_ACOG,1)
	__awc(m240_scoped_EP1,1)
	__awc(BAF_L7A2_GPMG,1)
	__awc(ACE_BAF_L7A2_GPMG,1)
	__awc(M60A4_EP1,1)
	__awc(ACE_M60,1)


	__amc(200Rnd_556x45_M249,50)
	__amc(ACE_200Rnd_556x45_T_M249,50)
	__amc(100Rnd_556x45_BetaCMag,50)
	__amc(100Rnd_762x51_M240,50)

	


	// Sniper Rifles
	
	__awc(M24,1)
	__awc(DMR,1)
	__awc(M107,1)
	__awc(M40A3,1)
	__awc(M4SPR,1)
	__awc(ACE_M4SPR_SD,1)
	__awc(M8_sharpshooter,1)
	__awc(ACE_M109,1)
	__awc(ACE_M110,1)
	__awc(ACE_M110_SD,1)
	__awc(ACE_TAC50,1)
	__awc(ACE_TAC50_SD,1)
	__awc(BAF_L86A2_ACOG,1)
	__awc(ACE_Mk12mod1,1)


	__amc(5Rnd_762x51_M24,50)
	__amc(ACE_5Rnd_762x51_T_M24,50)
	__amc(20Rnd_762x51_DMR,50)
	__amc(ACE_20Rnd_762x51_T_DMR,50)
	__amc(10Rnd_127x99_M107,30)
	__amc(ACE_10Rnd_127x99_T_m107,30)
	__amc(ACE_10Rnd_127x99_Raufoss_m107,30)
	__amc(ACE_5Rnd_25x59_HEDP_Barrett,30)
	__amc(ACE_20Rnd_762x51_SB_M110,30)
	__amc(ACE_20Rnd_762x51_S_M110,30)
	__amc(ACE_20Rnd_762x51_T_M110,30)
	__amc(ACE_5Rnd_127x99_B_TAC50,30)
	__amc(ACE_5Rnd_127x99_S_TAC50,30)
	__amc(ACE_5Rnd_127x99_T_TAC50,30)



	// AT Launchers
	
	__awc(M136,10)
	__awc(ACE_M136_CSRS,10)
	__awc(ACE_M72A2,1)
	__awc(SMAW,3)

	__awc(ACE_M72A2,1)
	
	__awc(ACE_M32,1)
	__awc(ACE_M79,1)


	__amc(6Rnd_HE_M203_heli,30)
	__amc(6Rnd_HE_M203,30)
	__amc(6Rnd_FlareWhite_M203,30)
	__amc(ACE_1Rnd_CS_M203,30)
	__amc(6Rnd_FlareGreen_M203,30)
	__amc(6Rnd_FlareRed_M203,30)
	__amc(6Rnd_FlareYellow_M203,30)
	__amc(6Rnd_Smoke_M203,30)
	__amc(6Rnd_SmokeRed_M203,30)
	__amc(6Rnd_SmokeGreen_M203,30)
	__amc(6Rnd_SmokeYellow_M203,30)


	__amc(SMAW_HEAA,30)
	__amc(SMAW_HEDP,30)
	__amc(ACE_SMAW_Spotting,30)
	__amc(ACE_MAAWS_HE,30)
	__amc(MAAWS_HEDP,30)
	__amc(MAAWS_HEAT,30)


	// Misc...

	__awc(ACE_GlassesSpectacles,1)
	__awc(ACE_GlassesRoundGlasses,1)
	__awc(ACE_GlassesSunglasses,1)
	__awc(ACE_GlassesBlackSun,1)
	__awc(ACE_GlassesBlueSun,1)
	__awc(ACE_GlassesRedSun,1)
	__awc(ACE_GlassesGreenSun,1)
	__awc(ACE_GlassesLHD_glasses,1)
	__awc(ACE_GlassesTactical,1)
	__awc(ACE_GlassesGasMask_US,1)
	__awc(ACE_GlassesBalaklava,1)
	__awc(ACE_Earplugs,5)
	__awc(ACE_Kestrel4500,1)
	__awc(ACE_Map_Tools,1)
	__awc(ACE_KeyCuffs,10)

	__amc(ACE_Knicklicht_R,50)
	__amc(ACE_Knicklicht_W,50)
	__amc(ACE_Knicklicht_Y,50)
	__amc(ACE_Knicklicht_B,50)
	__amc(ACE_Knicklicht_IR,50)
	__amc(ACE_VS17Panel_M,50)

	__amc(ACE_Rope_M_50,2)
	__amc(ACE_Rope_M_60,2)
	__amc(ACE_Rope_M_90,2)
	__amc(ACE_Rope_M_120,2)
	
	__awc(Laserdesignator,1)
	__awc(ACE_Rangefinder_OD,1)
	__awc(Binocular,1)
	__awc(NVGoggles,1)
	__awc(ACE_SpottingScope,1)
	__awc(ACE_WireCutter,1)
	__awc(ACE_DAGR,1)
	__awc(JAVELIN,1)
	__awc(STINGER,1)	
	__amc(ACE_Battery_Rangefinder,50)
	__amc(Laserbatteries,50)
	__amc(ACE_SandBag_Magazine,50)




	// Granades & Smoke

	__amc(HandGrenade_West,50)
	__amc(HandGrenade_Stone,50)
	__amc(Smokeshell,50)
	__amc(Smokeshellred,50)
	__amc(Smokeshellgreen,50)
	__amc(SmokeShellYellow,50)
	__amc(SmokeShellOrange,50)
	__amc(SmokeShellPurple,50)
	
	__amc(ace_flashbang,50)
	__amc(ace_m84,50)
	__amc(ace_m7a3,50)
	__amc(ace_m34,50)
	__amc(ACE_IRStrobe,50)


	// Granades & Smoke for weapons

	__amc(1Rnd_HE_M203,50)
	__amc(ACE_1Rnd_HE_M203,50)
	__amc(ace_1rnd_cs_m203,50)
	__amc(ACE_6Rnd_40mm_M32,50)
	__amc(ACE_6Rnd_CS_M32,50)
	__amc(FlareWhite_M203,50)
	__amc(FlareGreen_M203,50)
	__amc(FlareRed_M203,50)
	__amc(ACE_SSWhite_M203,50)
	__amc(ACE_SSGreen_M203,50)
	__amc(ACE_SSRed_M203,50)
	__amc(ACE_SSYellow_M203,50)
	__amc(1Rnd_SmokeRed_M203,50)
	__amc(1Rnd_SmokeGreen_M203,50)
	__amc(1Rnd_SmokeYellow_M203,50)
	__amc(1Rnd_Smoke_M203,50)
	__amc(ACE_SSWhite_FG,50)
	__amc(ACE_SSRed_FG,50)
	__amc(ACE_SSGreen_FG,50)
	__amc(ACE_SSYellow_FG,50)


	// Explosoves

	__amc(ACE_M86PDM,50)
	__amc(ACE_M2SLAM_M,50)
	__amc(Pipebomb,5)
	__amc(Mine,30)
	__amc(ACE_Claymore_M,5)
	__amc(ACE_C4_M,5)
	__amc(ACE_BBetty_M,5)
	__amc(ACE_TripFlare_M,5)


	// Unknown...







	// Ace Medical Stuff

	__amc(ACE_Bandage,50)
	__amc(ACE_LargeBandage,50)
	__amc(ACE_Morphine,50)
	__amc(ACE_Epinephrine,50)
	__amc(ACE_Medkit,50)
	__amc(ACE_Plasma,50)
	__amc(ACE_Splint,50)
	__amc(ACE_Tourniquet,50)
	__amc(ACE_Bodybag,50)


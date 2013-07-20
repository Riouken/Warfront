/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/
/** * List of class names of vehicles which can tow towable objects. */

R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
	"GRAD_Base",
	"Ural_Base",
	"Ural_ZU23_Base",
	"V3S_Base"
];

/** * List of class names of towables objects. */

R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
	"CSJ_Quad50",
	"AFR_Pinz_police",
	"ukf_110_des",
	"ukf_110_wld",
	"uns_truck_open",
	"uns_truck_closed",
	"uns_m37b1",
	"M113_RACS",
	"Chenowth",
	"vil_m113a2",
	"vil_m113a3",
	"RE_landrover6x6",
	"RE_landrover",
	"ukf_wmik_des",
	"ukf_wmik_gmg_des",
	"UKF_WMIK_GPMG_des",
	"ukf_wmik_wld",
	"ukf_wmik_gmg_wld",
	"UKF_WMIK_GPMG_WLD",
	"ukf_jackal_mwmik",
	"ukf_jackal_mwmik_gmg",
	"ukf_jackal_mwmik_gpmg",
	"ukf_jackal_wd_mwmik",
	"ukf_jackal_wd_mwmik_gmg",
	"ukf_jackal_wd_mwmik_gpmg",
	"rhs_gaz66_vdv",
	"rhs_gaz66o_vdv",
	"rhs_9k79",
	"rhs_btr70_vdv",
	"rhs_bmd1",
	"rhs_bmd1k",
	"rhs_bmd1p",
	"rhs_bmd1pk",
	"rhs_bmd1r",
	"rhs_bmd2",
	"rhs_bmd2k",
	"rhs_bmd2m",
	"rhs_bmp1_vdv",
	"rhs_bmp1p_vdv",
	"rhs_bmp1k_vdv",
	"rhs_bmp1d_vdv",
	"rhs_bmp2e_vdv",
	"rhs_bmp2vdv",
	"rhs_bmp2k_vdv",
	"rhs_bmp2d_vdv",
	"BRDM2IMP2M",
	"BRDM2MAGS",
	"BRDM2IMPAT5",
	"BRDM2IMPAT2",
	"BRDM2IMPAT3",
	"BRDM2IMPAT3c",
	"BRDM2IMPTOW",
	"BRDM2IMPM2",
	"BRDM2IMPMk19",
	"BRDM2IMPM240",
	"BRDM2IMPm134",
	"BRDM2IMPPolice",
	"BRDM2IMPHQ",
	"BRDM2IMPHQcomm",
	"BRDM2IMPPKM",
	"BRDM2IMPrkt",
	"BRDM2IMPAA_INS",
	"BRDM2IMPRKT_INS",
	"BRDM2IMPM240_PMCwest"

];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */

//NOTE EGGBEAST disabling lifting so mando hitch can function

R3F_LOG_CFG_heliporteurs = [];

/*
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
	"MH6_RACS",
	"AH6_racs",
	"AH6J_EP1",
	"MH6J_EP1",
	"ffaa_famet_tigre_AT",
	"ffaa_famet_tigre",
	"ibr_as350",
	"ibr_as350_armed",
	"ibr_as350_specops",
	"ibr_gazelle_armed",
	"ibr_as350_jungle",
	"RAF_Chin47",
	"CH_47F_EP1",
	"UH60M_EP1",
	"TIG_UH1H",
	"ad_hh60g",
	"ad_mh60k",
	"ad_mh60k_black",
	"ad_mh60k_erfs",
	"ad_mh60k_erfs_black",
	"CSJ_oh6",
	"CSJ_oh6a",
	"CSJ_UH1Slick",
	"CSJ_UH1supply",
	"CSJ_UH1Gun",
	"CSJ_GHornet",
	"CSJ_UH1transport",
	"CSJ_UH1med",
	"rksl_lynx_ah7_gpmg",
	"rksl_lynx_ah7_1gpmg",
	"rksl_lynx_ah7_4tow",
	"rksl_lynx_ah9_1",
	"rksl_lynx_ah7se_gpmg"
];
*/

/**
 * List of class names of liftable objects.
 * Liste des noms de classes des objets héliportables.
 */

R3F_LOG_CFG_objets_heliportables = [];
/*
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
	"uns_m2",
	"uns_m2_2",
	"uns_m2_3",
	"CSJ_Quad50"
];
*/


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/
/** * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects). */

R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	["ibr_LEO1A5", 10],
	["AFR_Pinz_police", 20],
	["ukf_110_des", 20],
	["ukf_110_wld", 20],
	["uns_truck_open", 40],
	["uns_truck_closed", 40],
	["uns_m37b1", 40],
	["M113_RACS", 30],
	["Chenowth", 6],
	["vil_m113a2", 30],
	["vil_m113a3", 30],
	["RE_landrover6x6", 22],
	["RE_landrover", 16],
	["ukf_wmik_des", 16],
	["ukf_wmik_gmg_des", 16],
	["UKF_WMIK_GPMG_des", 16],
	["ukf_wmik_wld", 16],
	["ukf_wmik_gmg_wld", 16],
	["UKF_WMIK_GPMG_WLD", 16],
	["ukf_jackal_mwmik", 21],
	["ukf_jackal_mwmik_gmg", 21],
	["ukf_jackal_mwmik_gpmg", 21],
	["ukf_jackal_wd_mwmik", 21],
	["ukf_jackal_wd_mwmik_gmg", 21],
	["ukf_jackal_wd_mwmik_gpmg", 21],
	["vil_bradley_a1", 20],
	["vil_bradley_gr", 20],
	["vil_bradley_a2D", 20],
	["vil_bradley_a2", 20],
	["vil_m109_sph", 10],
	["sa_bmd2_cdf", 12],
	["sa_bmd2_chdkz", 12],
	["uns_m60a1", 12],
	["uns_m48a3", 12],
	["uns_m48a3_1", 12],
	["uns_m48a3_2", 12],
	["Vulcan", 14],
	["Vulcan_RACS", 14],
	["uns_m163", 14],
	["ffaa_famet_tigre_AT", 4],
	["ffaa_famet_tigre", 4],
	["rksl_lynx_ah7_gpmg", 35],
	["rksl_lynx_ah7_1gpmg", 35],
	["rksl_lynx_ah7_4tow", 35],
	["rksl_lynx_ah9_1", 35],
	["rksl_lynx_ah7se_gpmg", 35],
	["ibr_as350", 35],
	["ibr_as350_armed", 35],
	["ibr_as350_specops", 35],
	["ibr_gazelle_armed", 35],
	["ibr_as350_jungle", 35],
	["TIG_UH1H", 45],
	["UH1H_TK_EP1", 45],
	["UH1H_TK_GUE_EP1", 45],
	["CSJ_UH1Slick", 45],
	["CSJ_UH1supply", 45],
	["CSJ_UH1Gun", 45],
	["CSJ_GHornet", 45],
	["CSJ_UH1transport", 75],
	["CSJ_UH1med", 75],
	["ad_hh60g", 75],
	["ad_mh60k", 75],
	["ad_mh60k_black", 75],
	["ad_mh60k_erfs", 75],
	["ad_mh60k_erfs_black", 75],
	["UH60MGRACS", 75],
	["UH60Racs", 75],
	["UH60M_EP1", 75],
	["RAF_Chin47", 100],
	["CSJ_oh6", 90],
	["CSJ_oh6a", 90],
	["rhs_gaz66_vdv", 90],
	["rhs_gaz66o_vdv", 90],
	["rhs_9k79", 30],
	["rhs_btr70_vdv", 30],
	["rhs_bmd1", 20],
	["rhs_bmd1k", 20],
	["rhs_bmd1p", 20],
	["rhs_bmd1pk", 20],
	["rhs_bmd1r", 20],
	["rhs_bmd2", 20],
	["rhs_bmd2k", 20],
	["rhs_bmd2m", 20],
	["rhs_bmp1_vdv", 20],
	["rhs_bmp1p_vdv", 20],
	["rhs_bmp1k_vdv", 20],
	["rhs_bmp1d_vdv", 20],
	["rhs_bmp2e_vdv", 20],
	["rhs_bmp2vdv", 20],
	["rhs_bmp2k_vdv", 20],
	["rhs_bmp2d_vdv", 20],
	["rhs_t80", 10],
	["rhs_t80a", 10],
	["rhs_t80b", 10],
	["rhs_t80bk", 10],
	["rhs_t80bv", 10],
	["rhs_t80bvk", 10],
	["BRDM2IMP2M", 30],
	["BRDM2MAGS", 30],
	["BRDM2IMPAT5", 30],
	["BRDM2IMPAT2", 30],
	["BRDM2IMPAT3", 30],
	["BRDM2IMPAT3c", 30],
	["BRDM2IMPTOW", 30],
	["BRDM2IMPM2", 30],
	["BRDM2IMPMk19", 30],
	["BRDM2IMPM240", 30],
	["BRDM2IMPm134", 30],
	["BRDM2IMPPolice", 30],
	["BRDM2IMPHQ", 30],
	["BRDM2IMPHQcomm", 30],
	["BRDM2IMPPKM", 30],
	["BRDM2IMPrkt", 30],
	["BRDM2IMPAA_INS", 30],
	["BRDM2IMPRKT_INS", 30],
	["BRDM2IMPM240_PMCwest", 30]
];

/**
 * List of class names of transportable objects. */

R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	["ibr_LEO1A5", 200],
	["AFR_Pinz_police", 50],
	["ukf_110_des", 50],
	["ukf_110_wld", 50],
	["uns_truck_open", 100],
	["uns_truck_closed", 100],
	["uns_m37b1", 100],
	["M113_RACS", 100],
	["Chenowth", 40],
	["vil_m113a2", 100],
	["vil_m113a3", 100],
	["RE_landrover6x6", 100],
	["RE_landrover", 100],
	["ukf_wmik_des", 100],
	["ukf_wmik_gmg_des", 100],
	["UKF_WMIK_GPMG_des", 100],
	["ukf_wmik_wld", 100],
	["ukf_wmik_gmg_wld", 100],
	["UKF_WMIK_GPMG_WLD", 100],
	["ukf_jackal_mwmik", 100],
	["ukf_jackal_mwmik_gmg", 100],
	["ukf_jackal_mwmik_gpmg", 100],
	["ukf_jackal_wd_mwmik", 100],
	["ukf_jackal_wd_mwmik_gmg", 100],
	["ukf_jackal_wd_mwmik_gpmg", 100],
	["vil_bradley_a1", 100],
	["vil_bradley_gr", 100],
	["vil_bradley_a2D", 100],
	["vil_bradley_a2", 100],
	["vil_m109_sph", 200],
	["uns_m60a1", 200],
	["uns_m48a3", 200],
	["uns_m48a3_1", 200],
	["uns_m48a3_2", 200],
	["Vulcan", 100],
	["Vulcan_RACS", 100],
	["uns_m163", 100],
	["uns_m2", 4],
	["uns_m2_2", 4],
	["uns_m2_3", 4],
	["rhs_gaz66_vdv", 100],
	["rhs_gaz66o_vdv", 100],
	["rhs_9k79", 100],
	["rhs_btr70_vdv", 100],
	["rhs_bmd1", 100],
	["rhs_bmd1k", 100],
	["rhs_bmd1p", 100],
	["rhs_bmd1pk", 100],
	["rhs_bmd1r", 100],
	["rhs_bmd2", 100],
	["rhs_bmd2k", 100],
	["rhs_bmd2m", 100],
	["rhs_bmp1_vdv", 100],
	["rhs_bmp1p_vdv", 100],
	["rhs_bmp1k_vdv", 100],
	["rhs_bmp1d_vdv", 100],
	["rhs_bmp2e_vdv", 100],
	["rhs_bmp2vdv", 100],
	["rhs_bmp2k_vdv", 100],
	["rhs_bmp2d_vdv", 100],
	["rhs_t80", 100],
	["rhs_t80a", 100],
	["rhs_t80b", 100],
	["rhs_t80bk", 100],
	["rhs_t80bv", 100],
	["rhs_t80bvk", 100],
	["BRDM2IMP2M", 100],
	["BRDM2MAGS", 100],
	["BRDM2IMPAT5", 100],
	["BRDM2IMPAT2", 100],
	["BRDM2IMPAT3", 100],
	["BRDM2IMPAT3c", 100],
	["BRDM2IMPTOW", 100],
	["BRDM2IMPM2", 100],
	["BRDM2IMPMk19", 100],
	["BRDM2IMPM240", 100],
	["BRDM2IMPm134", 100],
	["BRDM2IMPPolice", 100],
	["BRDM2IMPHQ", 100],
	["BRDM2IMPHQcomm", 100],
	["BRDM2IMPPKM", 100],
	["BRDM2IMPrkt", 100],
	["BRDM2IMPAA_INS", 100],
	["BRDM2IMPRKT_INS", 100],
	["BRDM2IMP_Fagot_Base", 8],
	["BRDM2IMP_9M14P_Base", 8],
	["BRDM2IMP_9M14_Base", 8],
	["BRDM2IMP_Konkurs_West_Des", 8],
	["BRDM2IMP_9M14P_West_Des", 8],
	["BRDM2IMPM240_PMCwest", 100]

];


/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player. Already includes all classes of static weapon */

R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[
	"BRDM2IMP_Fagot_Base",
	"BRDM2IMP_9M14P_Base",
	"BRDM2IMP_9M14_Base",
	"BRDM2IMP_Konkurs_West_Des",
	"BRDM2IMP_9M14P_West_Des"
];
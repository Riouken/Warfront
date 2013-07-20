/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file adds the "British Armed Forces" objetcs in the configuration variables of the logistics system.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 */

// TODO : list all the BAF objects in the configuration

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of vehicles which can tow towable objects.
 */
R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
	"MTVR_DES_EP1",
	"MtvrReammo_DES_EP1",
	"MtvrRefuel_DES_EP1",
	"MtvrRepair_DES_EP1",
	"BMP2_Des_ACR",
	"BRDM2_Desert_ACR",
	"Dingo_GL_DST_ACR",
	"Dingo_DST_ACR",
	"dingo_2_cz_mg",
	"BMP2_ACR",
	"BRDM2_ACR",
	"Dingo_GL_Wdl_ACR",
	"Dingo_WDL_ACR",
	"Pandur2_ACR",
	"RM70_ACR",
	"T810_ACR",
	"T810A_MG_ACR",
	"T810_Open_ACR",
	"T810Reammo_Des_ACR",
	"T810Refuel_Des_ACR",
	"t810_repair",
	"T810Reammo_ACR",
	"T810Refuel_ACR",
	"T810Repair_ACR",
	"BAF_FV510_D",
	"BAF_FV510_W",
	"BAF_Jackal2_GMG_D",
	"BAF_Jackal2_L2A1_D",
	"BAF_Jackal2_GMG_W",
	"BAF_Jackal2_L2A1_W",
	"BAF_Jackal2_L2A1_2_W"
];

/**
 * List of class names of towable objects.
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
	"BMP2_Des_ACR",
	"BRDM2_Desert_ACR",
	"Dingo_GL_DST_ACR",
	"Dingo_DST_ACR",
	"dingo_2_cz_mg",
	"BMP2_ACR",
	"BRDM2_ACR",
	"Dingo_GL_Wdl_ACR",
	"Dingo_WDL_ACR",
	"Pandur2_ACR",
	"RM70_ACR",
	"T810_ACR",
	"T810A_MG_ACR",
	"T810_Open_ACR",
	"T810Reammo_Des_ACR",
	"T810Refuel_Des_ACR",
	"t810_repair",
	"T810Reammo_ACR",
	"T810Refuel_ACR",
	"T810Repair_ACR",
	"M1114_AGS_ACR",
	"M1114_DSK_ACR",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"LandRover_ACR",
	"Octavia_ACR",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_Ambulance",
	"LandRover_Ambulance_Des_ACR",
	"LandRover_Ambulance_ACR",
	"BAF_ATV_D",
	"BAF_Offroad_D",
	"BAF_Offroad_W",
	"BAF_FV510_D",
	"BAF_FV510_W",
	"BAF_Jackal2_GMG_D",
	"BAF_Jackal2_L2A1_D",
	"BAF_Jackal2_GMG_W",
	"BAF_Jackal2_L2A1_W",
	"BAF_Jackal2_L2A1_2_W",
	"LandRover_Special_CZ_EP1",
	"LandRover_CZ_EP1",
	"SUV_PMC_BAF",
	"SUV_UN_EP1",
	"ArmoredSUV_PMC"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 */
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
	"Mi171Sh_CZ_EP1",
	"Mi171Sh_rockets_CZ_EP1",
	"Mi24_D_CZ_ACR"
];

/**
 * List of class names of liftable objects.
 */
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
	"BAF_ATV_D",
	"BAF_Offroad_D",
	"BAF_Jackal2_GMG_W",
	"BAF_Jackal2_L2A1_W",
	"BAF_Jackal2_GMG_D",
	"BAF_Jackal2_L2A1_D",
	"ATV_US_EP1",
	"MTVR_DES_EP1",
	"MtvrReammo_DES_EP1",
	"MtvrRefuel_DES_EP1",
	"MtvrRepair_DES_EP1",
	"M1133_MEV_EP1",
	"SUV_PMC_BAF",
	"SUV_UN_EP1",
	"ArmoredSUV_PMC",
	"M1030_US_DES_EP1",
	"BMP2_Des_ACR",
	"BRDM2_Desert_ACR",
	"Dingo_GL_DST_ACR",
	"Dingo_DST_ACR",
	"dingo_2_cz_mg",
	"BMP2_ACR",
	"BRDM2_ACR",
	"Dingo_GL_Wdl_ACR",
	"Dingo_WDL_ACR",
	"Pandur2_ACR",
	"RM70_ACR",
	"T810_ACR",
	"T810A_MG_ACR",
	"T810_Open_ACR",
	"T810Reammo_Des_ACR",
	"T810Refuel_Des_ACR",
	"t810_repair",
	"T810Reammo_ACR",
	"T810Refuel_ACR",
	"T810Repair_ACR",
	"M1114_AGS_ACR",
	"M1114_DSK_ACR",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"LandRover_ACR",
	"Octavia_ACR",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_Ambulance",
	"LandRover_Ambulance_Des_ACR",
	"LandRover_Ambulance_ACR",
	"ATV_CZ_EP1",
	"T72_ACR",
	"PBX_ACR",
	"AGS_CZ_EP1",
	"DSHKM_CZ_EP1",
	"2b14_82mm_CZ_EP1",
	"Rbs70_ACR"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * 
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	["BMP2_Des_ACR", 16],
	["BRDM2_Desert_ACR", 22],
	["Dingo_GL_DST_ACR", 30],
	["Dingo_DST_ACR", 30],
	["dingo_2_cz_mg", 30],
	["BMP2_ACR", 16],
	["BRDM2_ACR", 22],
	["Dingo_GL_Wdl_ACR", 30],
	["Dingo_WDL_ACR", 30],
	["Pandur2_ACR", 20],
	["RM70_ACR", 6],
	["T810_ACR", 90],
	["T810A_MG_ACR", 90],
	["T810_Open_ACR", 70],
	["T810Reammo_Des_ACR", 40],
	["T810Refuel_Des_ACR", 40],
	["t810_repair", 40],
	["T810Reammo_ACR", 40],
	["T810Refuel_ACR", 40],
	["T810Repair_ACR", 40],
	["M1114_AGS_ACR", 16],
	["M1114_DSK_ACR", 16],
	["HMMWV_M1151_M2_CZ_DES_EP1", 16],
	["LandRover_ACR", 25],
	["Octavia_ACR", 10],
	["HMMWV_Ambulance_CZ_DES_EP1", 20],
	["HMMWV_Ambulance", 20],
	["LandRover_Ambulance_Des_ACR", 25],
	["LandRover_Ambulance_ACR", 25],
	["ATV_CZ_EP1", 6],
	["T72_ACR", 6],
	["PBX_ACR", 6],
	["Mi24_D_CZ_ACR", 50],
	["BAF_Offroad_D", 30],
	["BAF_Jackal2_GMG_D", 25],
	["BAF_Jackal2_L2A1_D", 25],
	["BAF_FV510_D", 40],
	["BAF_FV510_W", 40],
	["BAF_ATV_D", 5],
	["BAF_Offroad_W", 30],
	["BAF_Jackal2_GMG_W", 25],
	["BAF_Jackal2_L2A1_W", 25],
	["BAF_Jackal2_L2A1_2_W", 25],
	["CH_47F_BAF", 150],
	["BAF_Merlin_HC3_D", 120],
	["AW159_Lynx_BAF", 30],
	["LandRover_Special_CZ_EP1", 30],
	["SUV_PMC_BAF", 15],
	["SUV_UN_EP1", 15],
	["ArmoredSUV_PMC", 10]
];

/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	["BMP2_Des_ACR", 100],
	["BRDM2_Desert_ACR", 100],
	["Dingo_GL_DST_ACR", 100],
	["Dingo_DST_ACR", 100],
	["dingo_2_cz_mg", 100],
	["BMP2_ACR", 100],
	["BRDM2_ACR", 100],
	["Dingo_GL_Wdl_ACR", 100],
	["Dingo_WDL_ACR", 100],
	["Pandur2_ACR", 100],
	["RM70_ACR", 100],
	["T810_ACR", 100],
	["T810A_MG_ACR", 100],
	["T810_Open_ACR", 100],
	["T810Reammo_Des_ACR", 100],
	["T810Refuel_Des_ACR", 100],
	["t810_repair", 100],
	["T810Reammo_ACR", 100],
	["T810Refuel_ACR", 100],
	["T810Repair_ACR", 100],
	["M1114_AGS_ACR", 100],
	["M1114_DSK_ACR", 100],
	["HMMWV_M1151_M2_CZ_DES_EP1", 100],
	["LandRover_ACR", 100],
	["Octavia_ACR", 100],
	["HMMWV_Ambulance_CZ_DES_EP1", 100],
	["HMMWV_Ambulance", 100],
	["LandRover_Ambulance_Des_ACR", 100],
	["LandRover_Ambulance_ACR", 100],
	["ATV_CZ_EP1", 20],
	["T72_ACR", 200],
	["PBX_ACR", 25],
	["AGS_CZ_EP1", 8],
	["DSHKM_CZ_EP1", 5],
	["2b14_82mm_CZ_EP1", 6],
	["Rbs70_ACR", 10],
	["BAF_Offroad_D", 70],
	["BAF_Jackal2_GMG_D", 70],
	["BAF_Jackal2_L2A1_D", 70],
	["BAF_FV510_D", 200],
	["BAF_FV510_W", 200],
	["BAF_ATV_D", 25],
	["BAF_Offroad_W", 70],
	["BAF_Jackal2_GMG_W", 70],
	["BAF_Jackal2_L2A1_W", 70],
	["BAF_Jackal2_L2A1_2_W", 70],
	["BAF_GMG_Tripod_D", 6],
	["BAF_GPMG_Minitripod_D", 3],
	["BAF_L2A1_Tripod_D", 5],
	["BAF_L2A1_Minitripod_D", 4],
	["BAF_GMG_Tripod_W", 6],
	["BAF_GPMG_Minitripod_W", 3],
	["BAF_L2A1_Tripod_W", 5],
	["BAF_L2A1_Minitripod_W", 4],
	["LandRover_Special_CZ_EP1", 100],
	["SUV_PMC_BAF", 50],
	["SUV_UN_EP1", 50],
	["ArmoredSUV_PMC", 50]
];


/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[
	"AGS_CZ_EP1",
	"DSHKM_CZ_EP1",
	"2b14_82mm_CZ_EP1",
	"Rbs70_ACR",
	"BAF_GMG_Tripod_D",
	"BAF_GPMG_Minitripod_D",
	"BAF_L2A1_Tripod_D",
	"BAF_L2A1_Minitripod_D",
	"BAF_GMG_Tripod_W",
	"BAF_GPMG_Minitripod_W",
	"BAF_L2A1_Tripod_W",
	"BAF_L2A1_Minitripod_W"
];
/**
 * English and French comments
 * This file adds the "Arma3" objects in the configuration variables of the logistics system.
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 */

/*
//master list

"B_Mk6",
"O_Mk6",
"I_G_Mk6",
//"B_Mk6Mortar_Support",
//"B_Mk6Mortar_Wpn",

"c_offroad",
"B_Quadbike_F",
"B_Hunter_F",
"B_Hunter_HMG_F",
"B_Hunter_RCWS_F",

"O_Galkin_F",
"O_Galkin_GMG_F",
"O_Galkin_MG_F",

"O_Ifrit_F",
"O_Ifrit_GMG_F",
"O_Ifrit_MG_F",

"B_Lifeboat",
"B_SpeedBoat",
"B_Assaultboat",
"O_SpeedBoat",
"O_assaultboat",

"B_MH9_F",
"C_M900_F",
"B_AH9_F",
"B_RH9_F",
"O_Ka60_Unarmed_F",
"O_Ka60_F",

"Box_NATO_Wps_F",
"Box_East_Wps_F",
"Box_NATO_WpsSpecial_F",
"Box_NATO_AmmoOrd_F",
"B_supplyCrate_F",

"Land_Bricks_V1_F",
"Land_CncBarrier_F",
"Land_Cargo_HQ_V2_F",
"Land_Cargo_HQ_V1_F",
"Land_Cargo_Patrol_V2_F",
"Land_Cargo_Patrol_V1_F",
"Land_Cargo_House_V2_F",
"Land_Cargo_House_V1_F",
"Land_Razorwire_F",
"Land_Cargo20_military_F",
"Land_Cargo40_military_F",

*/


/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/
/**
 * List of class names of vehicles which can tow towable objects.
 */
R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
	"B_Hunter_F",
	"B_Hunter_HMG_F",
	"B_Hunter_RCWS_F",
	"O_Galkin_F",
	"O_Galkin_GMG_F",
	"O_Galkin_MG_F",
	"O_Ifrit_F",
	"O_Ifrit_GMG_F",
	"O_Ifrit_MG_F"
];
/**
 * List of class names of towable objects.
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
	"c_offroad",
	"B_Quadbike_F",
	"B_Hunter_F",
	"B_Hunter_HMG_F",
	"B_Hunter_RCWS_F",
	"O_Galkin_F",
	"O_Galkin_GMG_F",
	"O_Galkin_MG_F",
	"O_Ifrit_F",
	"O_Ifrit_GMG_F",
	"O_Ifrit_MG_F",
	"B_Lifeboat",
	"B_SpeedBoat",
	"B_Assaultboat",
	"O_SpeedBoat",
	"O_assaultboat",
	"Land_Cargo20_military_F",
	"Land_Cargo40_military_F"

];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 */

//R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
//[
//	"B_MH9_F",
//	"C_M900_F",
//	"B_AH9_F",
//	"B_RH9_F",
//	"O_Ka60_Unarmed_F",
//	"O_Ka60_F"
//];
/**
 * List of class names of liftable objects.
 */

/*
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
	"B_Mk6",
	"O_Mk6",
	"I_G_Mk6",
//	"B_Mk6Mortar_Support",
//	"B_Mk6Mortar_Wpn",
	"c_offroad",
	"B_Quadbike_F",
	"B_Hunter_F",
	"B_Hunter_HMG_F",
	"B_Hunter_RCWS_F",
	"O_Galkin_F",
	"O_Galkin_GMG_F",
	"O_Galkin_MG_F",
	"O_Ifrit_F",
	"O_Ifrit_GMG_F",
	"O_Ifrit_MG_F",
	"B_Lifeboat",
	"B_SpeedBoat",
	"B_Assaultboat",
	"O_SpeedBoat",
	"O_assaultboat"
];
*/

/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/
/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	["c_offroad", 20],
	["B_Quadbike_F", 15],
	["B_Hunter_F", 35],
	["B_Hunter_HMG_F", 20],
	["B_Hunter_RCWS_F", 20],
	["O_Galkin_F", 35],
	["O_Galkin_GMG_F", 20],
	["O_Galkin_MG_F", 20],
	["O_Ifrit_F", 35],
	["O_Ifrit_GMG_F", 20],
	["O_Ifrit_MG_F", 20],
	["B_Lifeboat", 10],
	["B_SpeedBoat", 15],
	["B_Assaultboat", 25],
	["O_SpeedBoat", 15],
	["O_assaultboat", 25],
	["B_MH9_F", 15],
	["C_M900_F", 100],
	["B_AH9_F", 10],
	["B_RH9_F", 50],
	["O_Ka60_Unarmed_F", 50],
	["O_Ka60_F", 40],
	["Land_Cargo20_military_F", 60],
	["Land_Cargo40_military_F", 120]

];
/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	["c_offroad", 40],
	["B_Quadbike_F", 25],
	["B_Hunter_F", 50],
	["B_Hunter_HMG_F", 50],
	["B_Hunter_RCWS_F", 50],
	["O_Galkin_F", 50],
	["O_Galkin_GMG_F", 50],
	["O_Galkin_MG_F", 50],
	["O_Ifrit_F", 50],
	["O_Ifrit_GMG_F", 50],
	["O_Ifrit_MG_F", 50],
	["B_Lifeboat", 50],
	["B_SpeedBoat", 50],
	["B_Assaultboat", 100],
	["O_SpeedBoat", 50],
	["O_assaultboat", 100],
	["B_Mk6", 5],
	["O_Mk6", 5],
	["I_G_Mk6", 5],
//	["B_Mk6Mortar_Support", 5],
//	["B_Mk6Mortar_Wpn", 5],
	["Box_NATO_Wps_F", 5],
	["Box_East_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	["Box_NATO_AmmoOrd_F", 5],
	["Land_FieldToilet_F", 10],
	["B_supplyCrate_F", 5],
	["Land_Bricks_V1_F", 4],
	["Land_CncBarrier_F", 2],
	["Land_Cargo_HQ_V2_F", 100],
	["Land_Cargo_HQ_V1_F", 100],
	["Land_Cargo_Patrol_V2_F", 60],
	["Land_Cargo_Patrol_V1_F", 60],
	["Land_Cargo_House_V2_F", 60],
	["Land_Cargo_House_V1_F", 60],
	["Land_Razorwire_F", 4],
	["Land_Cargo20_military_F", 50],
	["Land_Cargo40_military_F", 100]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[
	"B_Mk6",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BagBunker_Small_F",
	"O_Mk6",
	"I_G_Mk6",
	"Box_NATO_Wps_F",
	"Box_East_Wps_F",
	"Box_NATO_WpsSpecial_F",
	"Box_NATO_AmmoOrd_F",
	"Land_FieldToilet_F",
	"B_supplyCrate_F",
	"Land_Bricks_V1_F",
	"Land_CncBarrier_F",
	"Land_Razorwire_F"
];
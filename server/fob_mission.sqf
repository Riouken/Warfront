if (!isServer) exitWith {};
wf_mission_complete = false;
wf_fob_setup = true;

wf_fob_wop = false;  // Waiting on players var.

_loc = locationPosition (wf_locs call BIS_fnc_selectRandom);

wf_active_fob_loc = _loc;

_starttime = time;
missionNamespace setVariable ["wf_fob_starttime",_starttime];
["wf_newfobmission", ["We need to get a new FOB set up at the following location to help secure the area for opperations!",_loc]] call CBA_fnc_globalEvent;

wf_current_mission = ["fob","We need to get a new FOB set up at the following location to help secure the area for opperations!",_loc];
publicVariable "wf_current_mission";

wf_fob_supplies = [

["Land_HBarrier_1_F","H-barrier (Block)",30],
["Land_HBarrier_3_F","H-barrier (3 Blocks)",30],
["Land_HBarrier_5_F","H-barrier (5 Blocks)",30],
["Land_HBarrierBig_F","H-barrier (Big, 4 Blocks)",30],
["Land_BagFence_Corner_F","Bag fence Corner",30],
["Land_BagFence_End_F","Bag Fence End",30],
["Land_BagFence_Long_F","Bag Long Fence",30],
["Land_BagFence_Round_F","Bag Round Fence",20],
["Land_BagFence_Short_F","Bag Fence Short",20],
["Land_BagBunker_Small_F","Small Bunker",8],
["B_supplyCrate_F","Ammo Box",1]  

];
publicVariable "wf_fob_supplies";

["wf_addAction",[atv1,"WF- FOB Supplies","client\gui\wf_gui_supply_start.sqf"]] call CBA_fnc_globalEvent;

_trg = createTrigger["EmptyDetector",_loc];
_trg setTriggerType "NONE";
_trg setTriggerArea[250,250,0,false];
_trg setTriggerActivation["WEST","PRESENT",false];
_trg setTriggerStatements["this", "hint 'Test Trigger - Waiting for players in zone';wf_fob_wop = true;", ""];
//_trg setTriggerTimeout [180, 360, 720, true];

waitUntil {wf_fob_wop}; 

_nul = [_loc,"Land_Cargo40_military_green_F"] spawn wf_fnc_fob_air_drop;

//["wf_addAction",[atv1,"WF- FOB Supplies","client\gui\wf_gui_supply_start.sqf"]] call CBA_fnc_globalEvent;

waitUntil {(call wf_fnc_fobtime) > 1500}; 

_nul = [_loc] spawn wf_fnc_waved_assault;

_trg = createTrigger["EmptyDetector",_loc];
_trg setTriggerType "NONE";
_trg setTriggerArea[250,250,0,false];
_trg setTriggerActivation["EAST SEIZED","PRESENT",true];
_trg setTriggerStatements["this", "wf_fob_mission_failed = true;wf_fob_setup = false;['wf_mission_fail', ['You have lost control of the FOB location, we will need to set up a new one in a diffrent location!']] call CBA_fnc_globalEvent;", ""];
_trg setTriggerTimeout [180, 360, 720, true];

waitUntil {wf_fob_mission_failed};

deleteVehicle _trg;


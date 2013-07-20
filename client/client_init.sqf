WaitUntil {time > 1};
if !(local player) exitWith {};

//["wf_globalchat", ["Warfront is setting up."]] call CBA_fnc_globalEvent;

wp_msn_marker = false;
wf_rally_point_set = false;
//wf_crates_action_list = [];
wf_armr_list = [];
wf_trans_list = [];
wf_air_list = [];

wf_fnc_rearm = compile preprocessFileLineNumbers "client\fnc\wf_fnc_rearm.sqf";
wf_fnc_distance_to = compile preprocessFileLineNumbers "server\fnc\wf_fnc_distance_to.sqf";
wf_fnc_random_loc_around = compile preprocessFileLineNumbers "server\fnc\wf_fnc_random_loc_around.sqf";
//wf_fnc_rally_halo = compile preprocessFileLineNumbers "client\fnc\wf_rally_halo.sqf";

//_ammobox = "TKVehicleBox_EP1" createVehicleLocal getMarkerPos "ammo_box_1";
//_pmcammobox = "TKVehicleBox_EP1" createVehicleLocal getMarkerPos "ammo_box_2";

//_mDir = markerDir "ammo_box_1";
//_ammobox setDir _mDir;

//_nill = [_ammobox] execVM "client\ammo_box.sqf";
//_nill = [_pmcammobox] execVM "client\ammo_box.sqf";
_cba = [] execVM "client\client_cba.sqf";

//_ammobox setVariable ["R3F_LOG_disabled", true];
//_pmcammobox setVariable ["R3F_LOG_disabled", true];

_nul = [[("<t color=""#FF0000"">" + "WARFRONT" + "</t>"), "client\gui\wf_gui_start.sqf"]] call CBA_fnc_addPlayerAction;










client_init_ran = true;

//["wf_globalchat", ["Client Init ran."]] call CBA_fnc_globalEvent;

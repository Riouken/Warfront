if (!isServer) exitWith {};
if isserver then {
  private "_t";
  _t = paramsarray select 2;
  if (_t == 99) then { _t = random 24 };
  skiptime ((_t - daytime + 24) % 24);
};  

wf_Param_Ai_Aim = paramsarray select 0;

WaitUntil {time > 1};
waituntil {!isnil "bis_fnc_init"};

wf_armr_active = false;
wf_lightarmr_active = false;
wf_airtrans_active = false;
wf_difficulty = 1;
wf_fob_setup = false;
wf_mission_complete = true;
wf_fob_mission_failed = false;
//wf_debug = true;
wf_enemy_class = "";
wf_fob_mission_complete = false;
wf_sec_mission_complete = true;
wf_crates_action_list = [];
wf_armr_list = [];
wf_trans_list = [];
wf_air_list = [];
wf_re_assault = false;

//rip_debug = true;
_cba = [] execVM "server\server_cba.sqf";

_nul = [] execVM "server\wf_remove_dead.sqf";

if (IsServer) then {
ace_sys_tracking_markers_enabled = false;
publicVariable "ace_sys_tracking_markers_enabled";
	
		};

wf_fnc_playermon = compile preprocessFileLineNumbers "server\fnc\wf_fnc_playermon.sqf";
wf_fnc_fobtime = compile preprocessFileLineNumbers "server\fnc\wf_fnc_fobtime.sqf";
wf_fnc_supply_drop = compile preprocessFileLineNumbers "server\fnc\wf_fnc_supply_drop.sqf";
wf_fnc_supply_smoke = compile preprocessFileLineNumbers "server\fnc\wf_fnc_supply_smoke.sqf";
wf_fnc_distance_to = compile preprocessFileLineNumbers "server\fnc\wf_fnc_distance_to.sqf";
wf_fnc_fob_air_drop = compile preprocessFileLineNumbers "server\fnc\wf_fnc_fob_air_drop.sqf";
wf_fnc_waved_assault = compile preprocessFileLineNumbers "server\fnc\wf_fnc_waved_assault.sqf";
wf_fnc_random_loc_around = compile preprocessFileLineNumbers "server\fnc\wf_fnc_random_loc_around.sqf";
wf_fnc_placeInBuilding = compile preprocessFileLineNumbers "server\fnc\wf_fnc_placeInBuilding.sqf";

wf_fnc_re_assault = compile preprocessFileLineNumbers "server\fnc\wf_fnc_waved_assault.sqf";



_nul = [] spawn {
	While {true} do
		{
			_nul = [] call wf_fnc_playermon;
			sleep 30;
		};
	};

wf_locs = nearestLocations [getMarkerPos "map_center", ["Strategic","StrongpointArea","FlatArea","Hill","ViewPoint","RockArea"], 180000];

wf_bad_locs = nearestLocations [getMarkerPos "respawn_west", ["Strategic","StrongpointArea","FlatArea","Hill","ViewPoint","RockArea"], 250];

wf_locs = wf_locs - wf_bad_locs;
_ripgo = [15,11,1,6] execVM "server\rip\rip_init.sqf";



waitUntil {time > 1};
["wf_globalchat", ["Warfront is setting up."]] call CBA_fnc_globalEvent;


_nul = [] spawn {
	While {true} do
		{
			_nul = [] execVM "server\mission_control.sqf";
			sleep 30;

		};
	};





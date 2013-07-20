_loc = _this select 0;
_cargo = _this select 1;

// Temporay until planes are added to A3...

_drop = createVehicle [_cargo, _loc,[],0,"NONE"]; 

if (_cargo == "Land_Cargo40_military_green_F") then {

	["wf_addAction",[_drop,"WF- FOB Supplies","client\gui\wf_gui_supply_start.sqf"]] call CBA_fnc_globalEvent;

};
/*
_spwnpos = [(getMarkerPos "air_spawn") select 0, (getMarkerPos "air_spawn") select 1,600];

_dir = [_spwnpos, _loc] call BIS_fnc_dirTo;

_c130array = [_spwnpos, _dir, "I_Heli_Transport_02_F", WEST] call bis_fnc_spawnvehicle;
_c130 = _c130array select 0;
_c130 allowDamage false;

(_c130array select 2) setBehaviour "CARELESS";

_transgrp = group _c130;
 
_wp = _transgrp addWaypoint [_loc, 0];
[_transgrp, 0] setWaypointType "MOVE";
_c130 flyinHeight 300;

_dropcargo = false;
while {! _dropcargo} do
	{
		_dist = [getPosAsl _c130,_loc] call wf_fnc_distance_to;
		
		if (_dist < 300) then 
			{
				_dropcargo = true;
			};
	sleep 1;
	};

waitUntil {_dropcargo};

_c130 flyinHeight 600;

if (_cargo == "Land_Cargo40_military_green_F") then
	{
		_dropcargo = [_c130,_cargo] spawn wf_fnc_supply_drop;
		sleep .07;
		_dropcargo = [_c130,_cargo] spawn wf_fnc_supply_drop;
	}else
	{
			
		_dropcargo = [_c130,_cargo] spawn wf_fnc_supply_drop;
};

sleep 3;
_wp = _transgrp addWaypoint [_spwnpos, 1];
[_transgrp, 1] setWaypointType "MOVE";

_backtobase = false;
while {! _backtobase} do
	{
		_dist = [getPosAsl _c130,_spwnpos] call wf_fnc_distance_to;
		
		if (_dist < 500) then 
			{
				deleteVehicle _c130;
			};
	sleep 5;
	};
	
	
*/
	
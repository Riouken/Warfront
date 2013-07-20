
_loc = _this select 0;
_spwnpos = [_loc,500,750] call wf_fnc_random_loc_around;

_relDirection = [_spawnPos,_loc] call BIS_fnc_dirTo;

_dir = [_spwnpos, _loc] call BIS_fnc_dirTo;

_tankarray = [_spwnpos, _dir, "B_APC_Wheeled_01_cannon_F", WEST] call bis_fnc_spawnvehicle;
_tank = _tankarray select 0;
_armorGrp = group _tank;

_null = [_armorGrp, _loc] call BIS_fnc_taskAttack;



_inAO = false;
while {! _inAO} do
	{
		_dist = [getPosAsl _tank,_loc] call wf_fnc_distance_to;
		
		if (_dist < 200) then 
			{
				_inAO = true;
			};
	sleep 1;
	};

waitUntil {_inAO};



sleep 300;

_wp = __armorGrp addWaypoint [_spwnpos, 0];
[_armorGrp, 0] setWaypointType "MOVE";

_backtobase = false;
while {! _backtobase} do
	{
		_dist = [getPosAsl _tank,_spwnpos] call wf_fnc_distance_to;
		
		if (_dist < 200) then 
			{
				deleteVehicle _tank;
			};
	sleep 5;
	};
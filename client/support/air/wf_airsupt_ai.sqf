_loc = _this select 0;
_spwnpos = [(getMarkerPos "air_spawn") select 0, (getMarkerPos "air_spawn") select 1,600];

_relDirection = [_spawnPos,_loc] call BIS_fnc_dirTo;

_dir = [_spwnpos, _loc] call BIS_fnc_dirTo;

_a10array = [_spwnpos, _dir, "B_Heli_Attack_01_F", WEST] call bis_fnc_spawnvehicle;
_a10 = _a10array select 0;
_airGrp = group _a10;

_null = [_airGrp, _loc] call BIS_fnc_taskAttack;



_inAO = false;
while {! _inAO} do
	{
		_dist = [getPosAsl _a10,_loc] call wf_fnc_distance_to;
		
		if (_dist < 500) then 
			{
				_inAO = true;
			};
	sleep 1;
	};

waitUntil {_inAO};



sleep 300;

_wp = _airGrp addWaypoint [_spwnpos, 0];
[_airGrp, 0] setWaypointType "MOVE";

_backtobase = false;
while {! _backtobase} do
	{
		_dist = [getPosAsl _a10,_spwnpos] call wf_fnc_distance_to;
		
		if (_dist < 500) then 
			{
				deleteVehicle _a10;
			};
	sleep 5;
	};
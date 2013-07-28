/*
==========================================================================
Place infantry groups in buildings script 
==========================================================================
Credits:
Original idea is by DaveP.
Improved, reworked into SQF and changed to group positioning by [MB]  DiRaven
You can use, rework, change and enjoy this script anyhow you want.
Still credit is appreciated.
==========================================================================
Description:
This script places desired group of infantry units into the nearest available buildings.
==========================================================================
HowTo:

 Place group leader near building of choice, then:
 	syntax for scripts:
		group execVM "PlaceInBuilding.sqf"

 	syntax for init field for the leader of the desired group:
		_script = group this execVM "PlaceInBuilding.sqf"

Extra info:
- Removes hand grenades, otherwise dumb infantry try and throw a grenade from inside a building and frag themselves
- Will delete group if no building position is found
- Buildings id being searched near group leader's position
- All members of the group are each joined into another newly created groups to prevent them from getting back into formation
- You can change _check_distance variable to change search distance for entrable buildings
==========================================================================
History:
v0.1 - First version of the script.
==========================================================================
*/

Private ["_group","_leader","_check_distance","_arr_buildings","_buildingcount","_arr_positions"];

_group = _this select 0;

_leader = leader _group;

_check_distance = 100; // Change this to tweak building searching distance

_arr_buildings = nearestObjects [_leader, ["HOUSE"], _check_distance];
_buildingcount = count _arr_buildings;

_arr_positions = [];
{
	Private ["_i","_positions_checked","_position","_coord_x","_coord_y","_coord_z","_coord_sum"];
	_i = 0;
	_positions_checked = FALSE;
	while {not _positions_checked} do {
		_position = _x buildingPos _i;
		_coord_x = _position select 0;
		_coord_y = _position select 1;
		_coord_z = _position select 2;
		_coord_sum = _coord_x + _coord_y + _coord_z;
		if (_coord_sum == 0) then {
			_positions_checked = TRUE;
		} else {
			_arr_positions = _arr_positions + [_position];
			_i = _i + 1;
		};
	};
} foreach _arr_buildings;

{
	Private ["_newgroup","_position"];
	_newgroup = createGroup east;
	
	[_x] join _newgroup;
	
	if (count _arr_positions == 0) then {
		deleteVehicle _x;
	};
	
	_position = _arr_positions select random count _arr_positions;
	
	_x setPos _position;
	_x setDir random 360;

	_x removeWeapon "HandGrenade_East"; _x removeMagazines "HandGrenade_East";
	_x removeWeapon "HandGrenade_West"; _x removeMagazines "HandGrenade_West";
	_x removeWeapon "HandGrenade"; _x removeMagazines "HandGrenade";
	_x setUnitPos "UP";
} foreach units _group;
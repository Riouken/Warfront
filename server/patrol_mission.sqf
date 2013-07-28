if (!isServer) exitWith {};

wf_mission_complete = false;
wf_sec_mission_complete = false;

Private ["_loc","_nearbyLocations","_rand","_loops","_trg"];

_loc = wf_active_fob_loc;
_nearbyLocations = nearestLocations [_loc, ["Strategic","FlatArea","NameMarine","ViewPoint","RockArea","BorderCrossing"], 3000];

_loc = locationPosition (_nearbyLocations call BIS_fnc_selectRandom);
["wf_newpatmission", ["There has been an increase in enemy activity in the area noted... Patrol the area and attack any enemy you encounter",_loc]] call CBA_fnc_globalEvent;

wf_current_mission = ["pat","There has been an increase in enemy activity in the area noted... Patrol the area and attack any enemy you encounter",_loc];

publicVariable "wf_current_mission";

_rand = (floor (random 3)) + 1;

_loops = wf_difficulty * 3;

for [{_i=0}, {_i <= _loops}, {_i=_i+1}] do 
	{
	
		for [{_j=0}, {_j <= _rand}, {_j=_j+1}] do 
			{
				Private ["_pos","_grp","_nul"];
				_pos = [_loc,1000,100] call wf_fnc_random_loc_around;
				_grp = [_pos, EAST, ["O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_F"]] call BIS_fnc_spawnGroup;
				_nul = [_grp, _pos, 1000] call bis_fnc_taskPatrol;
				
				if (wf_Param_Ai_Aim != 0) then {

    					{_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _grp;
    					{_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _grp;


				};

			};

	sleep 1;

	};


if (wf_lightarmr_active) then 
	{
		Private ["_ligtarmorloc","_vehlist","_veh","_veharray","_nul"];
		_ligtarmorloc = [_loc,1500,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [_ligtarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,500] call BIS_fnc_taskPatrol;
	};


if (wf_armr_active) then 
	{
		Private ["_hvyarmorloc","_vehlist","_veh","_veharray","_nul"];
		_hvyarmorloc = [_loc,1500,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_APC_Wheeled_02_rcws_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [_hvyarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,750] call BIS_fnc_taskPatrol;
	};


if (wf_air_active) then 
	{
		Private ["_airloc","_vehlist","_veh","_veharray","_nul"];
		_airloc = [_loc,1500,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_Heli_Attack_02_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [[_airloc select 0,_airloc select 1, 1000], 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,2500] call BIS_fnc_taskPatrol;
	};


_trg = createTrigger["EmptyDetector",_loc];
_trg setTriggerType "NONE";
_trg setTriggerArea[1000,1000,0,false];
_trg setTriggerActivation["WEST SEIZED","PRESENT",true];
_trg setTriggerStatements["this", "hint 'Test Patrol Trigger';wf_mission_complete = true;wf_fob_setup = false;wf_sec_mission_complete = true;", ""];
_trg setTriggerTimeout [180, 360, 720, true];
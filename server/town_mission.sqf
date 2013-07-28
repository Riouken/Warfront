if (!isServer) exitWith {};

wf_mission_complete = false;
wf_sec_mission_complete = false;

//_loc = wf_active_fob_loc;
/_nearbyLocations = nearestLocations [_loc, ["FlatAreaCity","FlatAreaCitySmall","CityCenter","NameCityCapital","NameCity","NameVillage","NameLocal"], 3000];

//_loc = locationPosition (_nearbyLocations call BIS_fnc_selectRandom);

_loc = getMarkerPos "big_town";

["wf_newtownmission", ["Local contacts have reported enemy combatants have taken over a nearby town... Move to the town and enguage any enemy combatants.",_loc]] call CBA_fnc_globalEvent;

wf_current_mission = ["town","There has been an increase in enemy activity in the area noted... Patrol the area and attack any enemy you encounter",_loc];

publicVariable "wf_current_mission";

_rand = (floor (random 3)) + 1;

_loops = wf_difficulty * 2;

for [{_i=0}, {_i <= _loops}, {_i=_i+1}] do 
	{
	
		for [{_j=0}, {_j <= _rand}, {_j=_j+1}] do 
			{

				_pos = [_loc,150,10] call wf_fnc_random_loc_around;
				_grp = [_pos, EAST, ["O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_F"]] call BIS_fnc_spawnGroup;
				_coinflip = floor random 10;

				if (_coinflip >=5) then
				{
					_nul = [_grp, _pos, 1000] call bis_fnc_taskPatrol;
				} else
				{
					_nul = [_grp] spawn wf_fnc_placeInBuilding;
				};

				if (wf_Param_Ai_Aim != 0) then {

    					{_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _grp;
    					{_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _grp;


				};

			};

	sleep 1;

	};


if (wf_lightarmr_active) then 
	{
		
		_ligtarmorloc = [_loc,375,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [_ligtarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,500] call BIS_fnc_taskPatrol;
	};


if (wf_armr_active) then 
	{
		
		_hvyarmorloc = [_loc,500,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_APC_Wheeled_02_rcws_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [_hvyarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,750] call BIS_fnc_taskPatrol;
	};


if (wf_air_active) then 
	{
		
		_airloc = [_loc,500,100] call wf_fnc_random_loc_around;
		_vehlist = ["O_Heli_Attack_02_F"];
		_veh = _vehlist select (floor (random (count _vehlist))); 
		_veharray = [[_airloc select 0,_airloc select 1, 1000], 0, _veh, EAST] call bis_fnc_spawnvehicle;
		_nul = [_veharray select 2,_attackLoc,2500] call BIS_fnc_taskPatrol;
	};


_trg = createTrigger["EmptyDetector",_loc];
_trg setTriggerType "NONE";
_trg setTriggerArea[650,650,0,false];
_trg setTriggerActivation["WEST SEIZED","PRESENT",true];
_trg setTriggerStatements["this", "hint 'Test Patrol Trigger';wf_mission_complete = true;wf_sec_mission_complete = true;", ""];
_trg setTriggerTimeout [180, 360, 720, true];
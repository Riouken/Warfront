Private ["_attackLoc","_spawnLoc","_lightarmor","_heavyarmor","_air"];


_attackLoc = _this select 0;
_spawnLoc = [];

_lightarmor = false;
_heavyarmor = false;
_air = false;

/// For testing
//wf_difficulty = 5;
//wf_lightarmr_active = true;
//wf_armr_active = true; 
//wf_air_active = true;


for [{_i=0}, {_i < 7}, {_i=_i+1}] do 
	{
		/// For testing
		//wf_difficulty = 5;
		//wf_lightarmr_active = true;
		//wf_armr_active = true; 
		//wf_air_active = true;
		
		for [{_j=0}, {_j <= wf_difficulty}, {_j=_j+1}] do 
			{
				Private ["_loc","_grp","_nul"];
				_loc = [_attackLoc] call wf_fnc_random_loc_around;
				_grp = [_loc, EAST, ["O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_F"]] call BIS_fnc_spawnGroup;
				_nul = [_grp,_attackLoc] call BIS_fnc_taskAttack;

				if (wf_Param_Ai_Aim != 0) then {

    					{_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _grp;
    					{_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _grp;


				};

				if (wf_debug) then 
					{
						["wf_globalchat", ["WF - Assault Spawning Group."]] call CBA_fnc_globalEvent;
					};			


			};


		if (! _lightarmor && wf_lightarmr_active && (_i > 0)) then
			{
				Private ["_ligtarmorloc","_vehlist","_veh","_veharray","_nul"];
				_lightarmor = true;
				_ligtarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
				_veh = _vehlist select (floor (random (count _vehlist))); 
				_veharray = [_ligtarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
				_nul = [_veharray select 2,_attackLoc,500] call BIS_fnc_taskPatrol;
				if (wf_debug) then 
					{
						["wf_globalchat", ["WF - Spawning Light Armor Wave"]] call CBA_fnc_globalEvent;
					};


			};

		if (! _heavyarmor && wf_armr_active && (_i >= 2)) then
			{
				Private ["_hvyarmorloc","_vehlist","_veh","_veharray","_nul"];
				_heavyarmor = true;
				_hvyarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["O_APC_Wheeled_02_rcws_F"];
				_veh = _vehlist select (floor (random (count _vehlist))); 
				_veharray = [_hvyarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
				_nul = [_veharray select 2,_attackLoc,750] call BIS_fnc_taskPatrol;
				if (wf_debug) then 
					{
						["wf_globalchat", ["WF - Spawning Heavy Armor Wave"]] call CBA_fnc_globalEvent;
					};

			};

		if (! _air && wf_air_active && (_i >= 4)) then
			{
				Private ["_airloc","_vehlist","_veh","_veharray","_nul"];
				_air = true;
				_airloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["O_Heli_Attack_02_F"];
				_veh = _vehlist select (floor (random (count _vehlist))); 
				_veharray = [[_airloc select 0,_airloc select 1, 1000], 0, _veh, EAST] call bis_fnc_spawnvehicle;
				_nul = [_veharray select 2,_attackLoc,2500] call BIS_fnc_taskPatrol;
				if (wf_debug) then 
					{
						["wf_globalchat", ["WF - Spawning Air Wave"]] call CBA_fnc_globalEvent;
					};

			};					


		
		_randflip = floor random 10;

		if (_randflip >= 5) then
			{
				Private ["_ligtarmorloc","_vehlist","_veh","_veharray","_nul"];
				_ligtarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["O_MRAP_02_hmg_F"];
				_veh = _vehlist select (floor (random (count _vehlist))); 
				_veharray = [_ligtarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
				_nul = [_veharray select 2,_attackLoc,500] call BIS_fnc_taskPatrol;

				if (wf_debug) then 
					{
						hint "Spawning extra veh group";
					};
	
			};





	sleep 300;
	};

sleep 300;
wf_fob_mission_complete = true;

if (wf_debug) then 
	{
		hint "Finished FOB Assault";
	};

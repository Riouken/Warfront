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
				_loc = [_attackLoc] call wf_fnc_random_loc_around;
				_grp = [_loc, EAST, ["TK_Soldier_EP1", "TK_Soldier_B_EP1","TK_Soldier_AR_EP1","TK_Soldier_GL_EP1"]] call BIS_fnc_spawnGroup;
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
				_lightarmor = true;
				_ligtarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["BTR40_MG_TK_INS_EP1","LandRover_MG_TK_INS_EP1","LandRover_SPG9_TK_INS_EP1","Pickup_PK_TK_GUE_EP1","Offroad_DSHKM_TK_GUE_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1"];
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
				_heavyarmor = true;
				_hvyarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["BMP2_TK_EP1","T34_TK_EP1","T55_TK_EP1","T72_TK_EP1","ZSU_TK_EP1"];
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
				_air = true;
				_airloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["L39_TK_EP1","Mi17_TK_EP1","Mi24_D_TK_EP1","UH1H_TK_GUE_EP1"];
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

				_ligtarmorloc = [_attackLoc] call wf_fnc_random_loc_around;
				_vehlist = ["BTR40_MG_TK_INS_EP1","LandRover_MG_TK_INS_EP1","LandRover_SPG9_TK_INS_EP1","Pickup_PK_TK_GUE_EP1","Offroad_DSHKM_TK_GUE_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1"];
				_veh = _vehlist select (floor (random (count _vehlist))); 
				_veharray = [_ligtarmorloc, 0, _veh, EAST] call bis_fnc_spawnvehicle;
				_nul = [_veharray select 2,_attackLoc,500] call BIS_fnc_taskPatrol;

				if (wf_debug) then 
					{
						hint "Spawning extra veh group";
					};
	
			};





	sleep 90;
	};

sleep 300;
//wf_fob_mission_complete = true;

if (wf_debug) then 
	{
		hint "Finished FOB Assault";
	};

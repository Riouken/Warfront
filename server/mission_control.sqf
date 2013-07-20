if (!isServer) exitWith {};
if (time < 15) exitWith {};

if (wf_debug) then
	{
		["wf_globalchat", ["WF - Launching Mission Control"]] call CBA_fnc_globalEvent;
	};

if (!wf_fob_setup) then 
	{
		// New fob mission
		_nul = execVM "server\fob_mission.sqf";
		if (wf_debug) then
			{
				["wf_globalchat", ["WF - Launching FOB Mission"]] call CBA_fnc_globalEvent;
			};

	};

if (wf_fob_mission_complete && wf_sec_mission_complete) then
	{
		// Pick random patrol or assault mission.

		_coinflip = floor random 10;

		if (_coinflip >=5) then
		{
			_nul = execVM "server\patrol_mission.sqf";
			hint "spawning Patrol mission";
		} else
		{
			_nul = execVM "server\town_mission.sqf";
			hint "spawning Town mission";
		};
		
	};


_fobtime = [] call wf_fnc_fobtime;
if (wf_fob_mission_complete && !wf_re_assault && _fobtime > 3200) then
	{
		// Re-assault on FOB.
		_nul = [wf_active_fob_loc] spawn wf_fnc_waved_assault;

		//wf_fob_setup = false;
		//wf_mission_complete = true;
	};
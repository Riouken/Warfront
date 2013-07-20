_loc = getMarkerPos "wf_airsupt_marker";

if (ctrlEnabled 1003) then
{

	// Start up AI airsupport

	_nul = [_loc] execVM "client\support\air\wf_airsupt_ai.sqf";

	hint "Radio Message sent!... Air Support is on its way.";  

}else
{

	_index = lbCurSel 1500;
	_unit = wf_air_list select _index;
	hint "Radio Message sent!... Air Support is on its way."; 
	["wf_airsupt_mission", [_unit,_loc,name player]] call CBA_fnc_whereLocalEvent;

	if (local _unit) then
		{
			["wf_airsupt_mission", [_unit,_loc,name player]] call CBA_fnc_localEvent;

		};

};




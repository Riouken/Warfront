_loc = getMarkerPos "wf_armorsupt_marker";

if (ctrlEnabled 1003) then
{

	// Start up AI armorsupport

	_nul = [_loc] execVM "client\support\armor\wf_armorsupt_ai.sqf";

	hint "Radio Message sent!... Armored Support is on its way.";  

}else
{

	_index = lbCurSel 1500;
	_unit = wf_armr_list select _index;
	hint "Radio Message sent!... Armored Support is on its way."; 
	["wf_airsupt_mission", [_unit,_loc,name player]] call CBA_fnc_whereLocalEvent;

	if (local _unit) then
		{
			["wf_airsupt_mission", [_unit,_loc,name player]] call CBA_fnc_localEvent;

		};

};




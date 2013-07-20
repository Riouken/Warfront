_loc = getMarkerPos "wf_transport_marker";

if (ctrlEnabled 1706) then
{

	["wf_client_supply_drop",[_loc,"MTVR_DES_EP1"]] call CBA_fnc_globalEvent;

	hint "Radio Message sent!... Chopper is on its way.";  

}else
{

	_index = lbCurSel 1500;
	_unit = wf_trans_list select _index;
	hint "Radio Message sent!... Chopper is on its way."; 
	["wf_transport_mission", [_unit,_loc,name player]] call CBA_fnc_whereLocalEvent;

	if (local _unit) then
		{
			["wf_transport_mission", [_unit,_loc,name player]] call CBA_fnc_localEvent;

		};

};




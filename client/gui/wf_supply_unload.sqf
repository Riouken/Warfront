//// Warfront
// 
// Created by: Riouken 
//

//_display = (uiNamespace getVariable "WF_supply_dlg");
//_lb = _display displayCtrl 1500;

_index = lbCurSel 1500;

_item = wf_fob_supplies select _index;
_itmclass = _item select 0;
_itmcount = _item select 2;

if (_itmcount == 0) then
	{

		wf_fob_supplies set [_index,-1];
		wf_fob_supplies = wf_fob_supplies - [-1];
		publicVariable "wf_fob_supplies";
		_nul = [] execVM "client\gui\wf_supply_setup.sqf";
		hint "There are no more of those items left! Please make another selection.";
	};


if (_itmcount > 0) then
	{

		["wf_create_supply_item", [player,_itmclass]] call CBA_fnc_globalEvent;
		_item set [2,_itmcount - 1];
		wf_fob_supplies set [_index,_item];
		publicVariable "wf_fob_supplies";
		_nul = [] execVM "client\gui\wf_supply_setup.sqf";
	};
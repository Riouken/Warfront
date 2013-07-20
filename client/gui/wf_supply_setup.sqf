//// Warfront
// 
// Created by: Riouken 
//

disableSerialization;

//--- Warfront
#define IDC_WARFRONT_WF_CARGOTXT	1018
#define IDC_WARFRONT_WF_ITEMIMG	1200
#define IDC_WARFRONT_WF_CARGOLIST	1500
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_UNLOADBTN	2400
#define IDC_WARFRONT_WF_CANCELBTN	2401

_display = (uiNamespace getVariable "WF_supply_dlg");
_lb = _display displayCtrl IDC_WARFRONT_WF_CARGOLIST;

lbClear _lb;

_supplies = wf_fob_supplies;

{

	_classname = _x select 0;
	_text = _x select 1;
	_count = _x select 2;
	_pic = getText (configFile >> "cfgVehicles" >> _classname >> "icon");

	//_index = _lb lbAdd _text;
	//_lb lbSetValue [_index, _count];
	_index = _lb lnbAddRow ["",_text,(str _count)];
	//_lb lbSetPicture [_index, _pic];
	//lnbSetPicture [1500,[_index,0],_pic];
	//_lb lbSetValue [_index, _count];

} forEach _supplies;




_lb lbSetCurSel 0;

//hint "Test 1";
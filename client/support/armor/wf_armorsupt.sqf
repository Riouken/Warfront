disableSerialization;

#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_HEADERNAME	1001
#define IDC_WARFRONT_RSCTEXT_1002	1002
//Using AI text
#define IDC_WARFRONT_RSCTEXT_1003	1003
#define IDC_WARFRONT_WF_MAP		1200
#define IDC_WARFRONT_RSCLISTBOX_1500	1500
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_AIRBTN		2400
#define IDC_WARFRONT_WF_ARMORBTN	2401
#define IDC_WARFRONT_WF_ARTYBTN		2402
#define IDC_WARFRONT_WF_SUPPLIEBTN	2403
#define IDC_WARFRONT_WF_CLOSEBTN	2404
#define IDC_WARFRONT_WF_TRANSPORTBTN	2405
#define IDC_WARFRONT_WF_CANCELBTN	2406
#define IDC_WARFRONT_WF_CALLSPTBTN	2407

_display = (uiNamespace getVariable "WF_support_dlg");
_awacs = _display displayCtrl IDC_WARFRONT_RSCTEXT_1003;

_action = "execVM 'client\support\armor\wf_armorsupt_call.sqf';";
buttonSetAction [2407,_action];

_transclr = false;

if (count wf_armr_list > 0) then 
{
	{lbAdd[1500,name _x]} forEach wf_armr_list;
	_transclr = true;
	_suppttype = 0;
	
}else
{
	_awacs ctrlSetText "Using AI";
	_transclr = true;
};

waitUntil {_transclr};


if (getMarkerColor "wf_armorsupt_marker" != "") then {deleteMarkerLocal "wf_armorsupt_marker";};

hint "Select the location for your armor support on the map";

wf_armorsupt_pos = [];


onMapSingleClick "wf_armorsupt_pos = _pos;onMapSingleClick '';";

waitUntil {count wf_armorsupt_pos > 0};


_wf_trans = createMarkerLocal["wf_armorsupt_marker",wf_armorsupt_pos];
"wf_armorsupt_marker" setMarkerShapeLocal "ICON";
"wf_armorsupt_marker" setMarkerTypeLocal "b_armor";
"wf_armorsupt_marker" setMarkerColorLocal "ColorBlue";
"wf_armorsupt_marker" setMarkerTextLocal "Armor Support";






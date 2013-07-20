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

_action = "execVM 'client\support\arty\wf_artysupt_call.sqf';";
buttonSetAction [2407,_action];

_transclr = false;

_awacs ctrlSetText "Using AI";
_transclr = true;


waitUntil {_transclr};


if (getMarkerColor "wf_artysupt_marker" != "") then {deleteMarkerLocal "wf_artysupt_marker";};

hint "Select the location on the map for Arty";

wf_artysupt_pos = [];


onMapSingleClick "wf_artysupt_pos = _pos;onMapSingleClick '';";

waitUntil {count wf_artysupt_pos > 0};


_wf_trans = createMarkerLocal["wf_artysupt_marker",wf_artysupt_pos];
"wf_artysupt_marker" setMarkerShapeLocal "ICON";
"wf_artysupt_marker" setMarkerTypeLocal "mil_circle";
"wf_artysupt_marker" setMarkerColorLocal "ColorRed";
"wf_artysupt_marker" setMarkerTextLocal "Arty";






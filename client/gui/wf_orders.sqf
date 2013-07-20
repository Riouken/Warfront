disableSerialization;

#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_INTELTEXT	1100
#define IDC_WARFRONT_WF_MAP		1200
#define IDC_WARFRONT_WF_FRAME		1800
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_ORDERSBTN	2400
#define IDC_WARFRONT_WF_TEAMSTATBTN	2401
#define IDC_WARFRONT_WF_RALLYBTN	2402
#define IDC_WARFRONT_WF_SUPPORTBTN	2403
#define IDC_WARFRONT_WF_CLOSEBTN	2404
#define IDC_WARFRONT_WF_HELPBTN		2405


_uicntrlmap = (uiNamespace getVariable "WF_main_dlg") displayCtrl IDC_WARFRONT_WF_MAP;

_orders = player getVariable ["wf_mission_text","No"];
_loc = player getVariable "wf_mission_loc";

if (_orders == "no") exitWith {hint "No orders have been issued yet...please wait.";};

ctrlMapAnimClear _uicntrlmap;
_uicntrlmap ctrlMapAnimAdd [1, .5,[_loc select 0,_loc select 1]];
ctrlMapAnimCommit _uicntrlmap;


_uicntrl = (uiNamespace getVariable "WF_main_dlg") displayCtrl IDC_WARFRONT_WF_INTELTEXT;

_uicntrl ctrlSetStructuredText parseText _orders;

//player setPosATL _loc; 


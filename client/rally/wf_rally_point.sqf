disableSerialization;

#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_HEADERNAME	1001
#define IDC_WARFRONT_WF_MAP		1200
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_CHECKBTN		2400
#define IDC_WARFRONT_WF_PLACERALLYBTN	2401
#define IDC_WARFRONT_WF_JUMPBTN		2402
#define IDC_WARFRONT_WF_CLOSEBTN		2404

_uicntrlmap = (uiNamespace getVariable "WF_rally_dlg") displayCtrl IDC_WARFRONT_WF_MAP;

_rallyobj = (leader player) getVariable ["wf_rally_point",player];

if (_rallyobj == player) exitWith {hint "Your Squad Leader has not placed a rally point yet!";};  


_loc = getPosAtl _rallyobj;

if (getMarkerColor "wf_rally_marker" != "") then {deleteMarkerLocal "wf_rally_marker";};
_msnmker = createMarkerLocal["wf_rally_marker",_loc];
"wf_rally_marker" setMarkerShapeLocal "ICON";
"wf_rally_marker" setMarkerTypeLocal "Join";
"wf_rally_marker" setMarkerColorLocal "ColorBlue";
"wf_rally_marker" setMarkerTextLocal "Rally Point";

ctrlMapAnimClear _uicntrlmap;
_uicntrlmap ctrlMapAnimAdd [1, .5,[_loc select 0,_loc select 1]];
ctrlMapAnimCommit _uicntrlmap;






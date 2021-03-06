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
_awacs ctrlSetText "";
_awacs ctrlEnable False;

_action = "execVM'client\support\transport\wf_transport_call.sqf'";
buttonSetAction [2407,_action];

_transclr = false;

if (count wf_trans_list > 0) then 
{
	{lbAdd[1500,name _x]} forEach wf_trans_list;
	_transclr = true;
	_suppttype = 0;
	
}else
{
	_awacs ctrlEnable True;
	_awacs ctrlSetText "Using AI";
	_transclr = true;
};

waitUntil {_transclr};


if (getMarkerColor "wf_transport_marker" != "") then {deleteMarkerLocal "wf_transport_marker";};

hint "Select the location for your supply drop on the map";

wf_transport_pos = [];


onMapSingleClick "wf_transport_pos = _pos;onMapSingleClick '';";

waitUntil {count wf_transport_pos > 0};


_wf_trans = createMarkerLocal["wf_transport_marker",wf_transport_pos];
"wf_transport_marker" setMarkerShapeLocal "ICON";
"wf_transport_marker" setMarkerTypeLocal "mil_pickup";
"wf_transport_marker" setMarkerColorLocal "ColorBlue";
"wf_transport_marker" setMarkerTextLocal "Transport Pickup";






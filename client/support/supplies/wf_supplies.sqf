disableSerialization;
_ui = uiNamespace getVariable "WF_support_dlg";
_action = "execVM'client\support\supplies\wf_supplies_call.sqf'";
buttonSetAction [2407,_action];

if (getMarkerColor "wf_supplies_marker" != "") then {deleteMarkerLocal "wf_supplies_marker";};

hint "Select the location for your supply drop on the map";

wf_supply_pos = [];


onMapSingleClick "wf_supply_pos = _pos;onMapSingleClick '';";

waitUntil {count wf_supply_pos > 0};


_wf_supply = createMarkerLocal["wf_supplies_marker",wf_supply_pos];
"wf_supplies_marker" setMarkerShapeLocal "ICON";
"wf_supplies_marker" setMarkerTypeLocal "mil_end";
"wf_supplies_marker" setMarkerColorLocal "ColorBlue";
"wf_supplies_marker" setMarkerTextLocal "Supply Drop";






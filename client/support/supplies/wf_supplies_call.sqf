_loc = getMarkerPos "wf_supplies_marker";

["wf_client_supply_drop",[_loc,"B_supplyCrate_F"]] call CBA_fnc_globalEvent;

hint "Radio Message sent!... A supply crate is on the way."; 
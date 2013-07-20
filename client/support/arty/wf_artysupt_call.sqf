_loc = getMarkerPos "wf_artysupt_marker";

hint "Message received preparing for fire mission!";

sleep 6;

hint "Shot out!";

sleep 15;

["wf_Arty", [0,400,20,80,_loc]] call CBA_fnc_globalEvent;

hint "Splash Down!";








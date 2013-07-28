// wf_fnc_distance_to.sqf
// By Riouken

Private ["_obj1","_obj2","_pos_obj1","_pos_obj2","_result"];
_obj1 = _this select 0;
_obj2 = _this select 1;


_pos_obj1 = [_obj1 select 0,_obj1 select 1];
_pos_obj2 = [_obj2 select 0,_obj2 select 1];

_result = _pos_obj1 distance _pos_obj2;

_result
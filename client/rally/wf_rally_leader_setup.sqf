_unit = _this select 0;
_type = _this select 1;
if (!local _unit) exitWith {};

_unit setVariable ["wf_leader",_type];
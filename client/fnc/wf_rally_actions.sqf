
_unit = _this select 0;

wf_rally_action = _unit addAction [("<t color=""#0000CC"">" + "Place Rally Point" + "</t>"), "client\fnc\wf_rally_build.sqf",[],0];


_unit addEventHandler ["killed", {(_this select 0) removeAction wf_rally_action;}];
_unit addEventHandler ["respawn", {wf_rally_action = (_this select 0) addAction [("<t color=""#0000CC"">" + "Place Rally Point" + "</t>"), "client\fnc\wf_rally_build.sqf",[],0];}];
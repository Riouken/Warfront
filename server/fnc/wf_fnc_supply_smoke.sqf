Private ["_obj","_pos","_smoke"];


_obj = _this select 0;
_pos = getPosAtl _obj;

_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];  

waituntil {(getPosAtl _obj) select 2 < 2};

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];  

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];  

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];  

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];

sleep 15;

_pos = getPosAtl _obj;
_smoke = createVehicle ["SmokeShellBlue", _pos, [], 0, "NONE"];
_smoke attachto [_obj, [0,0,0]];      
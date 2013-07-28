if (isDedicated) exitWith {};
if (true) exitWith {hint "Parajump is disabled right now due to bug in A3... Will be added back soon.";};

closeDialog 0;

_leader = leader (group player);
_jumppoint = (_leader getVariable ["wf_rally_point",player]);
if (_jumppoint == player) exitWith {hint "Your squad leader has not set a rally point yet!";};
_JumpPos = getPosAtl _jumppoint;



titleText ["","Plain"];

_heli = createVehicle ["B_Heli_Transport_01_F", _JumpPos, [], 0, "FLY"];
_heli setpos [_JumpPos select 0,_JumpPos select 1, 2000];
_heli engineon true;
player moveincargo _heli;

if (vehicle player == player) exitWith {};



_ruck = unitBackpack player; 
_class = typeOf _ruck;
_ruckGear = backpackItems player;
player addBackPack "B_Parachute";

hint str _ruckGear;

deleteVehicle _ruck;

//_ruck attachTo [player,[.1,-.3,0]]; 
//_ruck setVectorUp [0, .25, 0];
//_ruck setDir 180;

player setvelocity [0,0,0];

sleep 1;

player action ["EJECT", vehicle player];

//_nul = [_heli, player] execVM "x\ace\addons\sys_eject\jumpout.sqf";

//if !(player hasWeapon "ACE_ParachutePack") then {player addWeapon "ACE_ParachutePack";};

sleep 3;

deleteVehicle _heli;

waitUntil {getPosAtl player select 2 < 1};


deleteVehicle _ruck;

player addBackPack _class;
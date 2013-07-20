if (isDedicated) exitWith {};


_leader = leader (group player);
_JumpPos = getPosAtl (_leader getVariable "wf_rally_point");


hint str _heliPos;

titleText ["","Plain"];

_heli = createVehicle ["CH_47F_EP1", _JumpPos, [], 0, "FLY"];
_heli setpos [_JumpPos select 0,_JumpPos select 1, 2000];
_heli engineon true;
player moveincargo _heli;

if (vehicle player == player) exitWith {};

_plr = player;
_plr setvelocity [0,0,0];

_nul = [_heli, player] execVM "x\ace\addons\sys_eject\jumpout.sqf";

if !(player hasWeapon "ACE_ParachutePack") then {player addWeapon "ACE_ParachutePack";};

sleep 3;

deleteVehicle _heli;
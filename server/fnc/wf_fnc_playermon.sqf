if !(isServer) exitWith {};
wf_armr_active = false;
wf_lightarmr_active = false;
wf_air_active = false;
wf_airtrans_active = false;

_unitlist = playableUnits;
_playerlist = [];
wf_armr_list = [];
wf_air_list = [];
wf_trans_list = [];

//Army stuff:
// MH6J_EP1
// CH47_base_EP1
// UH60_Base
// AH64_base_EP1



{
	if (isPlayer _x) then
	{
		_playerlist = _playerlist + [_x];
		if (vehicle _x isKindOf "Wheeled_APC") then {wf_armr_active = true;wf_armr_list set [count wf_armr_list, _x];};
		if (vehicle _x isKindOf "Truck_F") then {wf_lightarmr_active = true;};
		//if (vehicle _x isKindOf "Plane") then {wf_air_active = true;wf_air_list set [count wf_air_list, _x];};
		if (vehicle _x isKindOf "Heli_Attack_01_base_F") then {wf_air_active = true;wf_air_list set [count wf_air_list, _x];};
		if (vehicle _x isKindOf "Heli_Transport_01_base_F") then {wf_airtrans_active = true;wf_trans_list set [count wf_trans_list, _x];};
		if (vehicle _x isKindOf "B_Heli_Light_01_F") then {wf_airtrans_active = true;wf_trans_list set [count wf_trans_list, _x];};
		//if (vehicle _x isKindOf "UH60_Base") then {wf_airtrans_active = true;wf_trans_list set [count wf_trans_list, _x];};
	};

} forEach _unitlist;

wf_plrcount = count _playerlist;


// Wf Difficulty 1 - 2 - 3 - 4 - 5


if (wf_plrcount <= 5) then {wf_difficulty = 1;};
if ((wf_plrcount > 5) && (wf_plrcount <= 15)) then {wf_difficulty = 2;};
if ((wf_plrcount > 15) && (wf_plrcount <= 25)) then {wf_difficulty = 3;};
if ((wf_plrcount > 25) && (wf_plrcount <= 35)) then {wf_difficulty = 4;};
if (wf_plrcount > 35) then {wf_difficulty = 5;};


if (wf_debug) then {

	_text = format ["Warfront - player monitor working - player count: %1 - Armor: %2 - Air: %3 - Diff Level: 	%4",wf_plrcount,wf_armr_active,wf_air_active,wf_difficulty];

	["wf_globalchat", [_text]] call CBA_fnc_globalEvent;

	_text2 = format ["Warfront - Air Trans: %1 - Light Armor: %2",wf_airtrans_active,wf_lightarmr_active];
	["wf_globalchat", [_text2]] call CBA_fnc_globalEvent;

};

publicVariable "wf_trans_list";
publicVariable "wf_air_list";
publicVariable "wf_armr_list";
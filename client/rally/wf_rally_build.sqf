if (isDedicated) exitWith {};

closeDialog 0;


if (wf_rally_point_set) then
	{
		_oldRP = player getVariable "wf_rally_point";
		deleteVehicle _oldRP;
		hintSilent "Moving Rally Point to new location";
	};

_pos = player modelToWorld [0,1.4,0];

//{_x setVariable ["wf_rally_loc",_pos];} forEach units group player;


player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 3;

//_rallypt = createVehicle ["Misc_Backpackheap_EP1", _pos, [], 0, "CAN_COLLIDE"]; 

_rallypt = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE"]; 


player setVariable ["wf_rally_point",_rallypt,true];

wf_rally_point_set = true;




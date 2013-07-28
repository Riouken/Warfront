//
// Farooq's Revive Script 1.3
//

call compile preprocessFile "FAR_revive\FAR_revive_funcs.sqf";

#define SCRIPT_VERSION "1.3"
#define LATEST_CHANGES "* [Fixed] Revive not working for ADF medics\n* [Fixed] Medic not detected when inside a vehicle"

// Drag fix
FAR_isDragging_EH = [];
publicVariable "FAR_isDragging_EH";

if (isDedicated) exitWith {};

// Global variables
FAR_isDragging = false;
FAR_MedicClasses = ["Medic", "Combat Medic", "Combat Life Saver", "Field Technician" , "Field Medic"];
FAR_Debugging = false;

////////////////////////////////////////////////
// Player Initialization
////////////////////////////////////////////////
[] spawn
{
    waitUntil {!isNull player};
    waitUntil {player == player};

	// Drag public event handler
	"FAR_isDragging_EH" addPublicVariableEventHandler FAR_publicEH;
	
	// Cache player side since it will change when player is a captive
	FAR_PlayerSide = side player;
	
	[] spawn FAR_Player_Init;
	
	// Welcome message
	hint format["Farooq's Revive %1 is initialized.", SCRIPT_VERSION];
	//hint format["FAR-Revive %1 is initialized.\nNew Features:\n%2", SCRIPT_VERSION, LATEST_CHANGES];

	// Event Handlers
	player addEventHandler 
	[
		"Respawn", 
		{ 
			[] spawn FAR_Player_Init;
		}
	];
	
	sleep 10;
	
	hint "";
};

FAR_Player_Init =
{
	player addEventHandler ["HandleDamage", FAR_HandleDamage_EV];
	player addEventHandler 
	[
		"Killed",
		{
			// Remove dead body of player to avoid conflict
			_body = _this select 0;
			
			[_body] spawn {
			
				waitUntil { Alive player };
				_body = _this select 0;
				deleteVehicle _body;
			}
		}
	];
	
	player setVariable ["FAR_isUnconscious", 0, true];
	player setVariable ["FAR_isDragged", 0, true];
	FAR_isDragging = false;
	
	[] spawn FAR_Player_Actions;
};

////////////////////////////////////////////////
// [Debugging] Add revive to AI
////////////////////////////////////////////////
if (!FAR_Debugging) exitWith {};

_allUnits = playableUnits;

if (!isMultiplayer) then
{
	_allUnits = switchableUnits;
};

{
	if (!isPlayer _x) then 
	{
		_x addEventHandler ["HandleDamage", FAR_HandleDamage_EV];
		_x setVariable ["FAR_isUnconscious", 0, true];
		_x setVariable ["FAR_isDragged", 0, true];
	}
	
} forEach _allUnits;
_allUnits = nil;
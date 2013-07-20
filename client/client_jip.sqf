waitUntil {time > 6};
//if (client_init_ran) exitWith {};

//_nul = [] execVM "client\client_init.sqf";

//hint "Client Jip";
//["wf_globalchat", ["Warfront Client Setting Up"]] call CBA_fnc_globalEvent;

//["wf_globalchat", ["Warfront Client Jip"]] call CBA_fnc_globalEvent;

waitUntil {wf_client_cba};

//hint "client cba finished";

//["wf_globalchat", ["Warfront Client CBA finished"]] call CBA_fnc_globalEvent;

//["wf_globalchat", ["New players please read help file on warfront menu, just use Warfont in action menu and then press help."]] call CBA_fnc_globalEvent;

if (count wf_current_mission == 0) exitWith {}; 



_currMissionType = wf_current_mission select 0;
_mission_text = wf_current_mission select 1;
_loc = wf_current_mission select 2;


switch (_currMissionType) do
{
    case "fob":
    {
	Hint "Fob Setup ran";
	COMMAND=[West,"HQ"];
	COMMAND sideChat _mission_text;
	if (! isNil ("wf_fobmission_marker")) then {deleteMarkerLocal "wf_fobmission_marker";};
	_msnmker = createMarkerLocal["wf_fobmission_marker",_loc];
	"wf_fobmission_marker" setMarkerShapeLocal "ICON";
	"wf_fobmission_marker" setMarkerTypeLocal "FOB";
	"wf_fobmission_marker" setMarkerColorLocal "ColorBlue";
	"wf_fobmission_marker" setMarkerTextLocal "Build FOB";

	player setVariable ["wf_mission_text",_mission_text];
	player setVariable ["wf_mission_loc",_loc];

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";

	_StructuredString = _color_red + "New Mission" + _linebreak + _color_white + format[_image,"\ca\ui\data\cursor_getin_ca.paa"] + _linebreak + _color_red + "Check your orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
    };

    case "pat":
    {
	COMMAND=[West,"HQ"];
	COMMAND sideChat _mission_text;
	if (! isNil ("wf_patmission_marker")) then {deleteMarkerLocal "wf_patmission_marker";};
	_msnmker = createMarkerLocal["wf_patmission_marker",_loc];
	"wf_patmission_marker" setMarkerShapeLocal "ELLIPSE";
	"wf_patmission_marker" setMarkerSizeLocal [1000, 1000];
	//"wf_patmission_marker" setMarkerTypeLocal "FOB";
	"wf_patmission_marker" setMarkerBrushLocal "DiagGrid";
	"wf_patmission_marker" setMarkerColorLocal "ColorRed";
	"wf_patmission_marker" setMarkerTextLocal "Patrol Area";

	player setVariable ["wf_mission_text",_mission_text];
	player setVariable ["wf_mission_loc",_loc];

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";

	_StructuredString = _color_red + "New Mission" + _linebreak + _color_white + format[_image,"\ca\ui\data\cursor_getin_ca.paa"] + _linebreak + _color_red + "Check your orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
    };

    case "town":
    {

    };
};

if (count wf_crates_action_list > 0) then
{
	{

		_nul = _x addAction ["WF- FOB Supplies","client\gui\wf_gui_supply_start.sqf"];

	} forEach wf_crates_action_list;

};



client_init_ran = true;
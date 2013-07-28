wf_client_cba = false;

["wf_hqchat", 
  { 
        COMMAND=[West,"HQ"];
	COMMAND sideChat (_this select 0) ;
        
    }
    ] call CBA_fnc_addEventHandler; 

["wf_globalchat", 
  { 
       
	player globalChat (_this select 0) ;
        
    }
    ] call CBA_fnc_addEventHandler; 



["wf_newfobmission", 
  { 
    
	private ["_msnmker","_linebreak","_color_white","_color_red","_color_blue","_text_normal","_image","_StructuredString","_StructuredText"];	
	COMMAND=[West,"HQ"];
	COMMAND sideChat (_this select 0);
	if (getMarkerColor "wf_fobmission_marker" != "") then {deleteMarkerLocal "wf_fobmission_marker";};
	_msnmker = createMarkerLocal["wf_fobmission_marker",(_this select 1)];
	"wf_fobmission_marker" setMarkerShapeLocal "ICON";
	"wf_fobmission_marker" setMarkerTypeLocal "b_hq";
	"wf_fobmission_marker" setMarkerColorLocal "ColorBlue";
	"wf_fobmission_marker" setMarkerTextLocal "FOB";

	player setVariable ["wf_mission_text",(_this select 0)];
	player setVariable ["wf_mission_loc",(_this select 1)];

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";

	_StructuredString = _color_red + "New Mission" + _linebreak + _color_white + format[_image,"\A3\ui_f\data\gui\cfg\Hints\map_ca.paa"] + _linebreak + _color_red + "Check your orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
        
    }
    ] call CBA_fnc_addEventHandler;




["wf_newpatmission", 
  { 
       
	private ["_msnmker","_linebreak","_color_white","_color_red","_color_blue","_text_normal","_image","_StructuredString","_StructuredText"];   
	COMMAND=[West,"HQ"];
	COMMAND sideChat (_this select 0);
	if (getMarkerColor "wf_patmission_marker" != "") then {deleteMarkerLocal "wf_patmission_marker";};
	_msnmker = createMarkerLocal["wf_patmission_marker",(_this select 1)];
	"wf_patmission_marker" setMarkerShapeLocal "ELLIPSE";
	"wf_patmission_marker" setMarkerSizeLocal [1000, 1000];
	//"wf_patmission_marker" setMarkerTypeLocal "FOB";
	"wf_patmission_marker" setMarkerBrushLocal "DiagGrid";
	"wf_patmission_marker" setMarkerColorLocal "ColorRed";
	"wf_patmission_marker" setMarkerTextLocal "Patrol Area";
	"wf_patmission_marker" setMarkerAlphaLocal 0.6;

	player setVariable ["wf_mission_text",(_this select 0)];
	player setVariable ["wf_mission_loc",(_this select 1)];

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";

	_StructuredString = _color_red + "New Mission" + _linebreak + _color_white + format[_image,"\A3\ui_f\data\gui\cfg\Hints\map_ca.paa"] + _linebreak + _color_red + "Check your orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
        
    }
    ] call CBA_fnc_addEventHandler;

["wf_newtownmission", 
  { 
    private ["_msnmker","_linebreak","_color_white","_color_red","_color_blue","_text_normal","_image","_StructuredString","_StructuredText"];   
	COMMAND=[West,"HQ"];
	COMMAND sideChat (_this select 0);
	if (getMarkerColor "wf_townmission_marker" != "") then {deleteMarkerLocal "wf_townmission_marker";};
	_msnmker = createMarkerLocal["wf_townmission_marker",(_this select 1)];
	"wf_townmission_marker" setMarkerShapeLocal "ICON";
	"wf_townmission_marker" setMarkerTypeLocal "Town";
	"wf_townmission_marker" setMarkerColorLocal "ColorRed";
	"wf_townmission_marker" setMarkerTextLocal "Clear Town";


	player setVariable ["wf_mission_text",(_this select 0)];
	player setVariable ["wf_mission_loc",(_this select 1)];

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";

	_StructuredString = _color_red + "New Mission" + _linebreak + _color_white + format[_image,"\A3\ui_f\data\gui\cfg\Hints\map_ca.paa"] + _linebreak + _color_red + "Check your orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
        
    }
    ] call CBA_fnc_addEventHandler;



["wf_addAction", 
  { 
  
	private ["_obj","_text","_scrpt","_params","_actionId"];
	_obj = (_this select 0);
	_text = (_this select 1);
	_scrpt = (_this select 2);
	_params = (_this select 3);
	_actionId = _obj addAction [_text,_scrpt,_params];
	       
    }
    ] call CBA_fnc_addEventHandler; 


["wf_transport_mission", 
	{
		private ["_unit","_loc","_caller","_nop","_newTask","_wf_trans"];
		
		_unit = _this select 0;
		_loc = _this select 1;
		_caller = _this select 2;
		
		_nop = [_unit,_loc,_caller] spawn {
		
			_unit = _this select 0;
			_loc = _this select 1;
			_caller = _this select 2;
			_gridPos = str mapGridPosition _loc;
			_newTask = player createSimpleTask ["Transport"];
			_newTask setSimpleTaskDescription [_caller + " Is requesting pickup and transport from - " + _gridPos,"Team Transport",""];
			_newTask setSimpleTaskDestination _loc;
			_newTask setTaskState "Assigned";
			player setCurrentTask _newTask;
			//taskhint ["New Transport Call!\nMarking location on map", [1, 1, 1, 1], "taskNew"];
			_nop = ["TaskAssigned",["New Task Assigned!",(_caller + " is requesting Transport ...Marking location on map.")]] call bis_fnc_showNotification;
			if (getMarkerColor "wf_transport_marker" != "") then {deleteMarkerLocal "wf_transport_marker";};
			_wf_trans = createMarkerLocal["wf_transport_marker",_loc];
			"wf_transport_marker" setMarkerShapeLocal "ICON";
			"wf_transport_marker" setMarkerTypeLocal "mil_pickup";
			"wf_transport_marker" setMarkerColorLocal "ColorBlue";
			"wf_transport_marker" setMarkerTextLocal "Transport Pickup";

			waitUntil {([getPosAsl player,_loc] call wf_fnc_distance_to) < 250};
			_smoke = createVehicle ["SmokeShellGreen", _loc, [], 0, "NONE"];

			sleep 20;

			player removeSimpleTask _newTask;
			//taskhint ["Nice work! \nThanks for the pickup", [0.600000,0.839215,0.466666,1], "taskDone"];
			_nop = ["TaskSucceeded",["Task Succeeded","Nice work! Thanks for the help...."]] call bis_fnc_showNotification;
		};

	}
	] call CBA_fnc_addLocalEventHandler;


["wf_airsupt_mission", 
	{
		private ["_unit","_loc","_caller","_nop","_newTask","_wf_trans"];
		_unit = _this select 0;
		_loc = _this select 1;
		_caller = _this select 2;
		
		
		_nop = [_unit,_loc,_caller] spawn {
		
			_unit = _this select 0;
			_loc = _this select 1;
			_caller = _this select 2;
			_gridPos = str mapGridPosition _loc;
			//_newTask = ["Airsupport",player,["Airsupport",_caller + " Is requesting Air Support at this location - " + _gridPos,"Team Assistance","Team Assistance"],_loc,"ASSIGNED",1,true,false] call BIS_fnc_setTask;
			_newTask = player createSimpleTask ["Air Support"];
			_newTask setSimpleTaskDescription [_caller + " Is requesting Air Support at this location - " + _gridPos,"Team Assistance",""];
			_newTask setSimpleTaskDestination _loc;
			_newTask setTaskState "Assigned";
			player setCurrentTask _newTask;
			//taskhint ["New Air Support Call!\nMarking location on map", [1, 1, 1, 1], "taskNew"];
			// for arma 3
			_nop = ["TaskAssigned",["New Task Assigned!",(_caller + " is requesting Close Air Support ...Marking location on map.")]] call bis_fnc_showNotification;

			if (getMarkerColor "wf_airsupt_marker" != "") then {deleteMarkerLocal "wf_airsupt_marker";};
			_wf_trans = createMarkerLocal["wf_airsupt_marker",_loc];
			"wf_airsupt_marker" setMarkerShapeLocal "ICON";
			"wf_airsupt_marker" setMarkerTypeLocal "mil_triangle";
			"wf_airsupt_marker" setMarkerColorLocal "ColorRed";
			"wf_airsupt_marker" setMarkerTextLocal "CAS";


			waitUntil {([getPosAsl player,_loc] call wf_fnc_distance_to) < 450};

			sleep 200;

			player removeSimpleTask _newTask;
			//taskhint ["Nice work! \nThat was close...", [0.600000,0.839215,0.466666,1], "taskDone"];
			_nop = ["TaskSucceeded",["Task Succeeded","Nice work! Thanks for the help...."]] call bis_fnc_showNotification;
		};
		

	}
	] call CBA_fnc_addLocalEventHandler;
	
	
	["wf_armorsupt_mission", 
	{
		private ["_unit","_loc","_caller","_nop","_newTask","_wf_trans"];
		_unit = _this select 0;
		_loc = _this select 1;
		_caller = _this select 2;
		
		_nop = [_unit,_loc,_caller] spawn {
		
			_unit = _this select 0;
			_loc = _this select 1;
			_caller = _this select 2;
			_gridPos = str mapGridPosition _loc;
			_newTask = player createSimpleTask ["Armor Support"];
			_newTask setSimpleTaskDescription [_caller + " Is requesting Armor Support at this location - " + _gridPos,"Team Assistance",""];
			_newTask setSimpleTaskDestination _loc;
			_newTask setTaskState "Assigned";
			player setCurrentTask _newTask;
			//taskhint ["New Armor Support Call!\nMarking location on map", [1, 1, 1, 1], "taskNew"];
			_nop = ["TaskAssigned",["New Task Assigned!",(_caller + " is requesting Armor Support ...Marking location on map.")]] call bis_fnc_showNotification;
			if (getMarkerColor "wf_armorsupt_marker" != "") then {deleteMarkerLocal "wf_armorsupt_marker";};
			_wf_trans = createMarkerLocal["wf_armorsupt_marker",_loc];
			"wf_armorsupt_marker" setMarkerShapeLocal "ICON";
			"wf_armorsupt_marker" setMarkerTypeLocal "mil_triangle";
			"wf_armorsupt_marker" setMarkerColorLocal "ColorRed";
			"wf_armorsupt_marker" setMarkerTextLocal "Armor Req";


			waitUntil {([getPosAsl player,_loc] call wf_fnc_distance_to) < 450};

			sleep 200;

			player removeSimpleTask _newTask;
			//taskhint ["Nice work! \nThat was close...", [0.600000,0.839215,0.466666,1], "taskDone"];
			_nop = ["TaskSucceeded",["Task Succeeded","Nice work! Thanks for the help...."]] call bis_fnc_showNotification;
		};

	}
	] call CBA_fnc_addLocalEventHandler;

["wf_mission_fail", 
  { 
    private ["_msnmker","_linebreak","_color_white","_color_red","_color_blue","_text_normal","_image","_StructuredString","_StructuredText"];   
	COMMAND=[West,"HQ"];
	COMMAND sideChat (_this select 0);

	_linebreak = "<br/>";
	//_color_black = "<t color='#f0000000'>";
	_color_white = "<t color='#f0ffffff'>";
	_color_red = "<t color='#f0ff0000'>";
	//_color_green = "<t color='#f000ff00'>";
	_color_blue = "<t color='#f00000ff'>";
	//_text_size = "<t size='%1'>";
	_text_normal = "</t>";
	_image = "<img size='4' image='%1'/>";
	

	_StructuredString = _color_red + "Mission Failed" + _linebreak + _color_white + format[_image,"\A3\ui_f\data\gui\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa"] + _linebreak + _color_red + "Regroup and check back later for more orders!" +_text_normal;

	_StructuredText = parseText _StructuredString;
    
	hint _StructuredText;
        
    }
    ] call CBA_fnc_addEventHandler;



wf_client_cba = true;





 
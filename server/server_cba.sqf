if (!isServer) exitWith {};

["wf_create_supply_item", 
  { 
    Private ["_pos","_classnm","_veh"];    
	_pos =(_this select 0) modelToWorld [9,0,0];
	_classnm = (_this select 1);
    _veh = createVehicle [_classnm, _pos, [], 0, "NONE"];
	if (_classnm == "B_supplyCrate_F") then {
		_veh addAction["<t color='#ff1111'>Virtual Ammobox</t>", "VAS\open.sqf"];
		};
  }
    ] call CBA_fnc_addEventHandler;


["wf_client_supply_drop", 
  { 
    Private ["_pos","_classnm","_nul"];    
	_pos =(_this select 0);
	_classnm = (_this select 1);
        _nul = [_pos,_classnm] spawn wf_fnc_fob_air_drop; 
    }
    ] call CBA_fnc_addEventHandler;
	
	
	
["wf_Arty", 
  { 
  
//Thanks F2KSel
// Below is from F2KSel        
if (!isServer) exitWith {};



//Temp disable this till I can get a better version working.

  Private ["_ammotype","_height","_rounds","_spread","_pos"];

_ammotype =  "HelicopterExploSmall";   //(_this select 0); // type of ammo
_height   =  0;     //(_this select 1); // height of drop
_rounds   = (_this select 2); // how many
_spread   = (_this select 3); // area
_pos  = (_this select 4);// land position 

/*
switch (_ammotype) do {
	case 0:{_ammo = "HelicopterExploSmall"};
      case 1:{_ammo = "Sh_120mm_HE"};
      case 2:{_ammo = "Bo_GBU12_LGB"};
      case 3:{_ammo = "M_Stinger_AA"};
      case 4:{_ammo = "R_80mm_HE"};
      case 5:{_ammo = "ARTY_Sh_122_HE"};
      case 6:{_ammo = "Sh_85_AP"};
      case 7:{_ammo = "Bo_FAB_250"};
      case 8:{_ammo = "Grenade"};
            };
      */
	  
	  
	for "_x" from 1 to _rounds do {
		sleep random 4;
		
		Private "_bomb";
		_bomb = _ammotype createVehicle [( _pos select 0)+(random _spread)-_spread/2, (_pos select 1)+(random _spread)-_spread/2,_height];
		_bomb setVectorUp [0, 9, 0.1];
	};
    }
\
    ] call CBA_fnc_addEventHandler;
	
	
	
	
	
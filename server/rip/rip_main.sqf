

for [{_i=0}, {(count ripftcnt) <= ftgrpcnt}, {_i=_i+1}] do {

		Private ["_pos","_grp","_ripgrpi"];
        _pos = (locationPosition(rip_strong_loc select (floor(random strgcnt))));
        _grp = rip_ft;
        _ripgrpi = [_pos, EAST, _grp] call BIS_fnc_spawnGroup;
        ripftcnt = ripftcnt  + [_ripgrpi];
        rip_act_grps = rip_act_grps + [_ripgrpi];
        [_ripgrpi, (getPos leader _ripgrpi), (750 + (random 400))] call BIS_fnc_taskPatrol;
        if (rip_debug) then {
            
			Private ["_markname","_grpsdbg"];
            _markname = "ripgrp" + str (random 999); 
            _grpsdbg = createMarker[_markname,_pos];
            _grpsdbg setMarkerShapeLocal "ICON";
            _grpsdbg setMarkerTypeLocal "DOT";
            _grpsdbg setMarkerColorLocal "ColorRed";
            _grpsdbg setMarkerTextLocal "RIP FT GROUP";
    };

if (wf_Param_Ai_Aim != 0) then {

    {_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _ripgrpi;
    {_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _ripgrpi;


};



};


for [{_j=0}, {(count ripsqdcnt) <= sqdgrpcnt}, {_j=_j+1}] do {
		
		Private ["_pos","_grp","_ripgrpi"];
        _pos = (locationPosition(rip_strong_loc select (floor(random strgcnt))));
        _grp = rip_sqd;
        _ripgrpi = [_pos, EAST, _grp] call BIS_fnc_spawnGroup;
        [_ripgrpi, (getPos leader _ripgrpi), (750 + (random 400))] call BIS_fnc_taskPatrol;
        ripsqdcnt = ripsqdcnt + [_ripgrpi];
        rip_act_grps = rip_act_grps + [_ripgrpi];
        if (rip_debug) then {
            
			Private ["_markname","_grpsdbg"];
            _markname = "ripgrp" + str (random 999); 
            _grpsdbg = createMarker[_markname,_pos];
            _grpsdbg setMarkerShapeLocal "ICON";
            _grpsdbg setMarkerTypeLocal "DOT";
            _grpsdbg setMarkerColorLocal "ColorBlue";
            _grpsdbg setMarkerTextLocal "RIP SQD GROUP";
    };

if (wf_Param_Ai_Aim != 0) then {

    {_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _ripgrpi;
    {_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _ripgrpi;


};

};

for [{_k=0}, {(count ripaacnt) <= aagrpcnt}, {_k=_k+1}] do {
        
		Private ["_pos","_grp","_ripgrpi"];
        _pos = (locationPosition(rip_strong_loc select (floor(random strgcnt))));
        _grp = rip_aa;
        _ripgrpi = [_pos, EAST, _grp] call BIS_fnc_spawnGroup;
        ripaacnt = ripaacnt + [_ripgrpi];
        rip_act_grps = rip_act_grps + [_ripgrpi];
        [_ripgrpi, (getPos leader _ripgrpi), (750 + (random 400))] call BIS_fnc_taskPatrol;
        if (rip_debug) then {
            
			Private ["_markname","_grpsdbg"];
            _markname = "ripgrp" + str (random 999); 
            _grpsdbg = createMarker[_markname,_pos];
            _grpsdbg setMarkerShapeLocal "ICON";
            _grpsdbg setMarkerTypeLocal "DOT";
            _grpsdbg setMarkerColorLocal "ColorGreen";
            _grpsdbg setMarkerTextLocal "RIP AA GROUP";
    };

if (wf_Param_Ai_Aim != 0) then {

    {_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _ripgrpi;
    {_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _ripgrpi;


};

};

for [{_p=0}, {(count ripsniprcnt) <= snipgrpcnt}, {_p=_p+1}] do {
        
		Private ["_pos","_grp","_ripgrpi"];
        _pos = (locationPosition(rip_strong_loc select (floor(random strgcnt))));
        _grp = rip_snipr;
        _ripgrpi = [_pos, EAST, _grp] call BIS_fnc_spawnGroup;
        ripsniprcnt = ripsniprcnt + [_ripgrpi];
        rip_act_grps = rip_act_grps + [_ripgrpi];
        [_ripgrpi, (getPos leader _ripgrpi), (750 + (random 400))] call BIS_fnc_taskPatrol;
        if (rip_debug) then {
            
			Private ["_markname","_grpsdbg"];
            _markname = "ripgrp" + str (random 999); 
            _grpsdbg = createMarker[_markname,_pos];
            _grpsdbg setMarkerShapeLocal "ICON";
            _grpsdbg setMarkerTypeLocal "DOT";
            _grpsdbg setMarkerColorLocal "ColorYellow";
            _grpsdbg setMarkerTextLocal "RIP Sniper GROUP";
    };

if (wf_Param_Ai_Aim != 0) then {

    {_x setskill ["aimingAccuracy",wf_Param_Ai_Aim]} forEach units _ripgrpi;
    {_x setskill ["aimingSpeed",wf_Param_Ai_Aim]} forEach units _ripgrpi;


};

};
        
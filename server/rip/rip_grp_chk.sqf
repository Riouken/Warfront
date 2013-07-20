//waitUntil {scriptDone startripspwn};

while {true} do {
    
    {if ({alive _x} count (units _x) == 0) then {rip_act_grps = rip_act_grps - [_x];ripftcnt = ripftcnt - [_x];};} forEach ripftcnt;
    {if ({alive _x} count (units _x) == 0) then {rip_act_grps = rip_act_grps - [_x];ripsqdcnt = ripsqdcnt - [_x]};} forEach ripsqdcnt;
    {if ({alive _x} count (units _x) == 0) then {rip_act_grps = rip_act_grps - [_x];ripaacnt = ripaacnt - [_x];};} forEach ripaacnt;
    {if ({alive _x} count (units _x) == 0) then {rip_act_grps = rip_act_grps - [_x];ripsniprcnt = ripsniprcnt - [_x];};} forEach ripsniprcnt;
    //hint "checking groups";
    
    sleep 3;
    
    _rip_grp_stgth =((count rip_act_grps) / totalgrps);
    
    if (rip_debug) then { 
        _my2string = str _rip_grp_stgth;
        _text = format ["Warfront - RIP Group Strength: %1",_rip_grp_stgth];
	["wf_globalchat", [_text]] call CBA_fnc_globalEvent;
    };
    
    
    if (_rip_grp_stgth <= .25) then {startripspwn = [] execVM "server\rip\rip_main.sqf";};
    
    sleep 600;
    
};
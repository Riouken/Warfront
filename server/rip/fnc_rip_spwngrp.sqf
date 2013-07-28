Private ["_pos","_grp","_ripgrpi"];


         _pos = (locationPosition(rip_strong_loc select (floor(random strgcnt))));
        _grp = (rip_grps select (floor(random (count rip_grps))));
        _ripgrpi = [_pos, EAST, _grp] call BIS_fnc_spawnGroup;
        [_ripgrpi, (getPos leader _ripgrpi), (750 + (random 400))] call BIS_fnc_taskPatrol;
        if (rip_debug) then {
            
            _markname = "ripgrp" + str (random 999); 
            _grpsdbg = createMarker[_markname,_pos];
            _grpsdbg setMarkerShapeLocal "ICON";
            _grpsdbg setMarkerTypeLocal "DOT";
            _grpsdbg setMarkerColorLocal "ColorRed";
            _grpsdbg setMarkerTextLocal "RIP GROUP";

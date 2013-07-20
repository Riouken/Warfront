_basepoint = _this select 0;
_basenum = 600;
_minnum = 450;
if (count _this > 1) then 
	{
		_basenum = _this select 1;
	};

if (count _this > 2) then 
	{
		_minnum = _this select 2;
	};		

_spawnLoc = [];
_posInWater = true;
while {_posInWater} do
	{ 
		_dist = (floor (random _basenum)) + _minnum;
		_dir = random 360;

		_spawnLoc = [_basepoint,_dist,_dir] call BIS_fnc_relPos;

		_isInWater = surfaceIsWater [_spawnLoc select 0, _spawnLoc select 1];
	
		if (! _isInWater) then {_posInWater = false;};

			if (wf_debug && ! _isInWater) then {
            
            			_markname = "asslt_grp" + str (random 999); 
            			_grpsdbg = createMarker[_markname,_spawnLoc];
            			_grpsdbg setMarkerShapeLocal "ICON";
            			_grpsdbg setMarkerTypeLocal "DOT";
           			_grpsdbg setMarkerColorLocal "ColorRed";
           			_grpsdbg setMarkerTextLocal _markname;
    			};
	};
_spawnLoc
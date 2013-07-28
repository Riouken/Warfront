private ["_currenttimeFnc","_fobtimeFnc","_starttimeFnc"];

_starttimeFnc = missionNamespace getVariable ["wf_fob_starttime",0];
_currenttimeFnc = time;

if (_starttimeFnc == 0 ) then 
	{
		_fobtimeFnc = 0;
	} else
	{
		_fobtimeFnc = _currenttimeFnc - _starttimeFnc;
	};
_fobtimeFnc
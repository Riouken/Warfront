_nul = [] execVM "client\client_init.sqf";
_nul = [] execVM "server\server_init.sqf";

_nul = [] execVM "R3F_ARTY_AND_LOG\init.sqf";

[0,false,false] execFSM "scripts\core_time\core_time.fsm";


ace_wounds_prevtime = 400;
ace_sys_wounds_no_rpunish = true;
ace_sys_wounds_noai = true;

ace_settings_enable_vd_change = true;


Resistance setFriend [East, 1];
East setFriend [Resistance, 1];
WEST setFriend [RESISTANCE, 0];
WEST setFriend [East, 0];    
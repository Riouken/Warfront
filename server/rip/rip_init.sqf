if (!isServer) exitWith {};

//fnc_rip_spwngrp = compile preprocessFile "rip\fnc_rip_spwngrp.sqf";

ftgrpcnt = _this select 0;
sqdgrpcnt = _this select 1;
aagrpcnt = _this select 2;
snipgrpcnt = _this select 3;

totalgrps = (ftgrpcnt + sqdgrpcnt) + (aagrpcnt + snipgrpcnt);

rip_strong_loc = wf_locs;


strgcnt = count rip_strong_loc;
//flatcnt = count rip_flat_loc;
//citycnt = count rip_city_loc;

rip_act_grps = [];

ripftcnt = [];
ripsqdcnt = [];
ripaacnt = [];
ripsniprcnt = [];


rip_ft = ["O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_GL_F"];
rip_sqd = ["O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_GL_F","O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AR_F","O_Soldier_GL_F","O_Soldier_TL_F", "O_Soldier_F","O_Soldier_AT_F"];
rip_aa = ["O_Soldier_lite_F","O_Soldier_AA_F"];
rip_snipr = ["O_sniper_F","O_spotter_F"];

//rip_grps = [rip_sqd,rip_sqd,rip_ft,rip_sqd,rip_aa,rip_snipr,rip_sqd,rip_sqd,rip_sqd,rip_sqd];


startripspwn = [] execVM "server\rip\rip_main.sqf";
grpchk = [] execVM "server\rip\rip_grp_chk.sqf";


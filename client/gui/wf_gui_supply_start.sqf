//// Warfront
// 
// Created by: Riouken 
//

ShowDialog = {
	sleep 0.01;
	_ok = createDialog "WF_supply_dlg";
	waitUntil { !dialog };
};
 
_void = [] call ShowDialog;
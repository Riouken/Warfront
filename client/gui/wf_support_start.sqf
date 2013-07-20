//// Warfront
// 
// Created by: Riouken 
//

closeDialog 0;

ShowDialog = {
	sleep 0.01;
	_ok = createDialog "WF_support_dlg";
	waitUntil { !dialog };
};
 
_void = [] call ShowDialog;
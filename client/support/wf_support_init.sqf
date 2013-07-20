disableSerialization;

#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_HEADERNAME	1001
#define IDC_WARFRONT_RSCTEXT_1002	1002
//Using AI text
#define IDC_WARFRONT_RSCTEXT_1003	1003
#define IDC_WARFRONT_WF_MAP		1200
#define IDC_WARFRONT_RSCLISTBOX_1500	1500
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_AIRBTN		2400
#define IDC_WARFRONT_WF_ARMORBTN	2401
#define IDC_WARFRONT_WF_ARTYBTN		2402
#define IDC_WARFRONT_WF_SUPPLIEBTN	2403
#define IDC_WARFRONT_WF_CLOSEBTN	2404
#define IDC_WARFRONT_WF_TRANSPORTBTN	2405
#define IDC_WARFRONT_WF_CANCELBTN	2406
#define IDC_WARFRONT_WF_CALLSPTBTN	2407

_ui = uiNamespace getVariable "WF_support_dlg";
_airsupt = _ui displayCtrl IDC_WARFRONT_WF_AIRBTN;
_armrsupt = _ui displayCtrl IDC_WARFRONT_WF_ARMORBTN;
_arty = _ui displayCtrl IDC_WARFRONT_WF_ARTYBTN;
_supplies = _ui displayCtrl IDC_WARFRONT_WF_SUPPLIEBTN;
_awacs = _ui displayCtrl IDC_WARFRONT_RSCTEXT_1003;

_awacs ctrlEnable false;

_leader = player getVariable "wf_leader";

if (_leader) then
{
	_airsupt ctrlEnable true;
	_armrsupt ctrlEnable true;
	_arty ctrlEnable true;
	_supplies ctrlEnable true;
}else
{
	_airsupt ctrlEnable false;
	_armrsupt ctrlEnable false;
	_arty ctrlEnable false;
	_supplies ctrlEnable false;
};



disableSerialization;

#define IDC_WARFRONT_WF_PLACERALLYBTN	2401


_ui = uiNamespace getVariable "WF_rally_dlg";
_buildbttn = _ui displayCtrl IDC_WARFRONT_WF_PLACERALLYBTN;

_leader = player getVariable "wf_leader";

if (_leader) then
{
	_buildbttn ctrlEnable true;
}else
{
	_buildbttn ctrlEnable false;
};


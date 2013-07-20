#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_INTELTEXT	1100
#define IDC_WARFRONT_WF_MAP		1200
#define IDC_WARFRONT_WF_FRAME		1800
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_ORDERSBTN	2400
#define IDC_WARFRONT_WF_TEAMSTATBTN	2401
#define IDC_WARFRONT_WF_RALLYBTN	2402
#define IDC_WARFRONT_WF_SUPPORTBTN	2403
#define IDC_WARFRONT_WF_CLOSEBTN	2404
#define IDC_WARFRONT_WF_HELPBTN		2405


class WF_main_dlg {
	idd = 1776;
	movingEnable = true;
	onLoad = "uiNamespace setVariable ['WF_main_dlg', (_this select 0)]";
	objects[] = {};
	class controlsBackground {



	};


	class controls {

			class WF_background: wf_IGUIBack
			{
				idc = IDC_WARFRONT_WF_BACKGROUND;
				x = 0.266146 * safezoneW + safezoneX;
				y = 0.19663 * safezoneH + safezoneY;
				w = 0.470833 * safezoneW;
				h = 0.604815 * safezoneH;
			};
			class WF_ordersbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_ORDERSBTN;
				text = "Orders"; //--- ToDo: Localize;
				x = 0.283958 * safezoneW + safezoneX;
				y = 0.265815 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\gui\wf_orders.sqf';";
				tooltip = "Get information about the current mission";
				default = true;
			};
			class WF_teamstatbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_TEAMSTATBTN;
				text = "Team Status"; //--- ToDo: Localize;
				x = 0.283958 * safezoneW + safezoneX;
				y = 0.327481 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "_nul = [['Page', 'Team'],'AllowPlayerInvites','HideOpposition','DeleteRemovedAI'] execVM 'scripts\TeamStatusDialog\TeamStatusDialog.sqf';";
				tooltip = "Join other players team's";
			};
			class WF_rallybtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_RALLYBTN;
				text = "Rally"; //--- ToDo: Localize;
				x = 0.283958 * safezoneW + safezoneX;
				y = 0.391 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\gui\wf_gui_rally_start.sqf';";
				tooltip = "Link up with fellow squad members";
			};
			class WF_supportbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_SUPPORTBTN;
				text = "Support"; //--- ToDo: Localize;
				x = 0.283437 * safezoneW + safezoneX;
				y = 0.455444 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\gui\wf_support_start.sqf';";
				tooltip = "Call in diffrent support types ... Arty,Supplies,CAS";
			};
			class WF_header: wf_RscText
			{
				idc = IDC_WARFRONT_WF_HEADER;
				text = "Warfront"; //--- ToDo: Localize;
				x = 0.269271 * safezoneW + safezoneX;
				y = 0.191074 * safezoneH + safezoneY;
				w = 0.1575 * safezoneW;
				h = 0.056 * safezoneH;
			};
			class WF_map: WF_RscMapControl
			{
				idc = IDC_WARFRONT_WF_MAP;
				text = "#(argb,8,8,3)color(1,1,1,1)";
				x = 0.458229 * safezoneW + safezoneX;
				y = 0.258074 * safezoneH + safezoneY;
				w = 0.269062 * safezoneW;
				h = 0.462 * safezoneH;
			};
			class WF_closebtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_CLOSEBTN;
				text = "Close"; //--- ToDo: Localize;
				x = 0.619479 * safezoneW + safezoneX;
				y = 0.744593 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "closeDialog 0";
			};
			class WF_helpbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_HELPBTN;
				text = "Help"; //--- ToDo: Localize;
				x = 0.285729 * safezoneW + safezoneX;
				y = 0.744593 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\help.sqf';";
				tooltip = "Press to find out more about Warfront";
			};
			class WF_frame: wf_RscFrame
			{
				idc = IDC_WARFRONT_WF_FRAME;
				text = "Intelligence"; //--- ToDo: Localize;
				x = 0.276875 * safezoneW + safezoneX;
				y = 0.514 * safezoneH + safezoneY;
				w = 0.170625 * safezoneW;
				h = 0.21 * safezoneH;
			};
			class WF_inteltext: wf_RscStructuredText
			{
				idc = IDC_WARFRONT_WF_INTELTEXT;
				x = 0.282916 * safezoneW + safezoneX;
				y = 0.528 * safezoneH + safezoneY;
				w = 0.159792 * safezoneW;
				h = 0.188519 * safezoneH;
			};


		

		};
};












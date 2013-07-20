#define IDC_WARFRONT_WF_HEADER		1000
#define IDC_WARFRONT_WF_HEADERNAME	1001
#define IDC_WARFRONT_RSCTEXT_1002	1002
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

class WF_support_dlg {
	idd = 1775;
	movingEnable = true;
	onLoad = "uiNamespace setVariable ['WF_support_dlg', (_this select 0)];execVM 'client\support\wf_support_init.sqf';";
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
				x = 0.5 * safezoneW + safezoneX;
				y = 0.234 * safezoneH + safezoneY;
				w = 0.229687 * safezoneW;
				h = 0.42 * safezoneH;
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
			class WF_Headername: wf_RscText
			{
				idc = IDC_WARFRONT_WF_HEADERNAME;
				text = "Call Support"; //--- ToDo: Localize;
				x = 0.269271 * safezoneW + safezoneX;
				y = 0.221852 * safezoneH + safezoneY;
				w = 0.1575 * safezoneW;
				h = 0.056 * safezoneH;
			};
			class RscListbox_1500: wf_RscListbox
			{
				idc = IDC_WARFRONT_RSCLISTBOX_1500;
				x = 0.381875 * safezoneW + safezoneX;
				y = 0.29 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.336 * safezoneH;
			};
			class WF_airbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_AIRBTN;
				text = "Air Support"; //--- ToDo: Localize;
				x = 0.271667 * safezoneW + safezoneX;
				y = 0.293704 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM'client\support\air\wf_airsupt.sqf';";
			};
			class WF_armorbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_ARMORBTN;
				text = "Armor Suppt"; //--- ToDo: Localize;
				x = 0.271875 * safezoneW + safezoneX;
				y = 0.348148 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM'client\support\armor\wf_armorsupt.sqf';";
			};
			class WF_artybtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_ARTYBTN;
				text = "Artillery"; //--- ToDo: Localize;
				x = 0.271876 * safezoneW + safezoneX;
				y = 0.402926 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM'client\support\arty\wf_artysupt.sqf';";
			};
			class WF_suppliebtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_SUPPLIEBTN;
				text = "Supplies"; //--- ToDo: Localize;
				x = 0.271875 * safezoneW + safezoneX;
				y = 0.456482 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM'client\support\supplies\wf_supplies.sqf';";
			};
			class WF_transportbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_TRANSPORTBTN;
				text = "Transport"; //--- ToDo: Localize;
				x = 0.271875 * safezoneW + safezoneX;
				y = 0.511111 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM'client\support\transport\wf_transport.sqf';";
			};
			class RscText_1002: wf_RscText
			{
				idc = IDC_WARFRONT_RSCTEXT_1002;
				text = "Availible Units"; //--- ToDo: Localize;
				x = 0.388437 * safezoneW + safezoneX;
				y = 0.248 * safezoneH + safezoneY;
				w = 0.144375 * safezoneW;
				h = 0.028 * safezoneH;
			};
			class RscText_1003: wf_RscText
			{
				idc = IDC_WARFRONT_RSCTEXT_1003;
				text = ""; //--- ToDo: Localize;
				x = 0.401563 * safezoneW + safezoneX;
				y = 0.64 * safezoneH + safezoneY;
				w = 0.0721875 * safezoneW;
				h = 0.028 * safezoneH;
			};
			class WF_cancelbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_CANCELBTN;
				text = "Cancel"; //--- ToDo: Localize;
				x = 0.5 * safezoneW + safezoneX;
				y = 0.668 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
			};
			class WF_callsptbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_CALLSPTBTN;
				text = "Call Support"; //--- ToDo: Localize;
				x = 0.618125 * safezoneW + safezoneX;
				y = 0.668 * safezoneH + safezoneY;
				w = 0.111562 * safezoneW;
				h = 0.042 * safezoneH;
			};




	};

};






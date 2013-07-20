#include <wf_rally_gui_macros.hpp>


class WF_rally_dlg {
	idd = 1732;
	movingEnable = true;
	onLoad = "uiNamespace setVariable ['WF_rally_dlg', (_this select 0)];execVM 'client\rally\wf_rally_init.sqf';";
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
			class WF_checkbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_CHECKBTN;
				text = "Check Rally Point"; //--- ToDo: Localize;
				x = 0.283437 * safezoneW + safezoneX;
				y = 0.29 * safezoneH + safezoneY;
				w = 0.150937 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\rally\wf_rally_point.sqf';";
				tooltip = "Mark your squads rally point on the map";
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
				action = "closeDialog 0;";
			};
			class WF_Headername: wf_RscText
			{
				idc = IDC_WARFRONT_WF_HEADERNAME;
				text = "Rally With Squad"; //--- ToDo: Localize;
				x = 0.269271 * safezoneW + safezoneX;
				y = 0.221852 * safezoneH + safezoneY;
				w = 0.1575 * safezoneW;
				h = 0.056 * safezoneH;
			};
			class WF_placerallybtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_PLACERALLYBTN;
				text = "Place Rally Point"; //--- ToDo: Localize;
				x = 0.283437 * safezoneW + safezoneX;
				y = 0.374 * safezoneH + safezoneY;
				w = 0.150937 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\rally\wf_rally_build.sqf';closeDialog 0;";
				tooltip = "For Team Leaders...Build a new rally point at your location";
			};
			class WF_jumpbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_JUMPBTN;
				text = "Jump to Rally Point"; //--- ToDo: Localize;
				x = 0.283437 * safezoneW + safezoneX;
				y = 0.458 * safezoneH + safezoneY;
				w = 0.150937 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\rally\wf_rally_halo.sqf';closeDialog 0;";
				tooltip = "Paradrop on your squads rally point!";
			};
			



		};
};












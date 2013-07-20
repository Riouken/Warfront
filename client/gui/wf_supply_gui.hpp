//--- Warfront
#define IDC_WARFRONT_WF_CARGOTXT	1018
#define IDC_WARFRONT_WF_ITEMIMG	1200
#define IDC_WARFRONT_WF_CARGOLIST	1500
#define IDC_WARFRONT_WF_BACKGROUND	2200
#define IDC_WARFRONT_WF_UNLOADBTN	2400
#define IDC_WARFRONT_WF_CANCELBTN	2401


class WF_supply_dlg {
	idd = 1734;
	movingEnable = true;
	onLoad = "uiNamespace setVariable ['WF_supply_dlg', (_this select 0)];execVM 'client\gui\wf_supply_setup.sqf';"; 
	objects[] = {};
	class controlsBackground {


	};


	class controls {



			class WF_background: wf_IGUIBack
			{
				idc = IDC_WARFRONT_WF_BACKGROUND;
				x = 0.309687 * safezoneW + safezoneX;
				y = 0.29 * safezoneH + safezoneY;
				w = 0.387187 * safezoneW;
				h = 0.406 * safezoneH;
			};
			class WF_cargotxt: wf_RscText
			{
				idc = IDC_WARFRONT_WF_CARGOTXT;
				text = "Warfront Cargo"; //--- ToDo: Localize;
				x = 0.269271 * safezoneW + safezoneX;
				y = 0.291074 * safezoneH + safezoneY;
				w = 0.1575 * safezoneW;
				h = 0.056 * safezoneH;
			};
			class WF_Cargolist: wf_RscListbox
			{
				//access = 2;
				type = CT_LISTNBOX;
				idc = IDC_WARFRONT_WF_CARGOLIST;
				style = LB_MULTI;
				columns[] = {0.003,0.1,0.8};
				drawSideArrows = 0;
				idcLeft = -1; 
 				idcRight = -1;
				maxHistoryDelay = 1;
				rowHeight = 0;
				//soundSelect[] = {"", 0.1, 1}; 
				x = 0.319794 * safezoneW + safezoneX;
				y = 0.3404 * safezoneH + safezoneY;
				w = 0.216562 * safezoneW;
				h = 0.294 * safezoneH;
			};
			class WF_itemimg: wf_RscPicture
			{
				idc = IDC_WARFRONT_WF_ITEMIMG;
				text = "#(argb,8,8,3)color(1,1,1,1)";
				x = 0.572187 * safezoneW + safezoneX;
				y = 0.346 * safezoneH + safezoneY;
				w = 0.091875 * safezoneW;
				h = 0.14 * safezoneH;
			};
			class WF_unloadbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_UNLOADBTN;
				text = "Unload"; //--- ToDo: Localize;
				x = 0.569687 * safezoneW + safezoneX;
				y = 0.533444 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "execVM 'client\gui\wf_supply_unload.sqf';";
			};
			class WF_cancelbtn: wf_RscShortcutButton
			{
				idc = IDC_WARFRONT_WF_CANCELBTN;
				text = "Cancel"; //--- ToDo: Localize;
				x = 0.592662 * safezoneW + safezoneX;
				y = 0.64364 * safezoneH + safezoneY;
				w = 0.0984375 * safezoneW;
				h = 0.042 * safezoneH;
				action = "closeDialog 0";
			};




			
	};

};
	
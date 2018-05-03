class MRHMissileLauncher
{
	idd=03052018;
	movingenable=true;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Nalome)
////////////////////////////////////////////////////////

class MRHIguiBack: IGUIBack
{
	idc = 2200;
	moving = true;
	x = 0.3425 * safezoneW + safezoneX;
	y = 0.15 * safezoneH + safezoneY;
	w = 0.315 * safezoneW;
	h = 0.672 * safezoneH;
};
class MissilesListBox: RscListbox
{
	idc = 1500;
	moving = true;
	x = 0.355625 * safezoneW + safezoneX;
	y = 0.178 * safezoneH + safezoneY;
	w = 0.13125 * safezoneW;
	h = 0.63 * safezoneH;
};
class MRHLaunchButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "Launch selected missile"; //--- ToDo: Localize;
	action = "call TILK_fnc_launchSelectedMissile";
	x = 0.513125 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.056 * safezoneH;
};
class MRHCancelButton: RscButton
{
	idc = 1601;
	moving = true;
	action = "closedialog 0";
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.513125 * safezoneW + safezoneX;
	y = 0.29 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.056 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
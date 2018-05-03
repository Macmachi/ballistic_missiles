disableSerialization;
_handle = createDialog "MRHMissileLauncher";
_ctrlListBox = ((findDisplay 03052018) disPlayCtrl 1500);
_allMissiles = call TILK_fnc_listMissionMissiles;
{
_index = lbAdd [1500, gettext (ConfigFile >>"cfgVehicles">>typeOf _x>>"displayName")];
lbSetData [1500, _index, str _x];
lbSetPicture [1500, _index, "\Ballistic_missiles\paa\missile.paa"];
} forEach _allMissiles
/*
* launches the missile selected in the interface
*/
disableSerialization;
_index = lbCurSel 1500;
if (_index == -1) ExitWith {systemChat "No missile selected";};

_missileSTR = lbData [1500,_index];
_allMissiles = call TILK_fnc_listMissionMissiles;
_missileToLaunch ="";
{
	if (str _x == _missileSTR) then {_missileToLaunch = _x};
} forEach _allMissiles;
lbDelete [1500, _index]; 
[_missileToLaunch] call TILK_fnc_launchMissile;
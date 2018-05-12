/*
* this function will start given missile's launching sequence
* eg.
* [missile1] call TILK_fnc_launchMissile;
*/
params ["_missile"];
_missile setVariable ["TILK_MissileLaunch",true,true];
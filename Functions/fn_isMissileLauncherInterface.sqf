/* 
makes any object a missile launcher interface
eg
[laptop] call TILK_fnc_isMissileLauncherInterface;
*/
params ["_object"];
_object addAction ["Open missile launcher interface",{call TILK_fnc_LauncherInterface;}];
/*
sets damage and camshake proportionally to the player's distance to the missile, is mp compatible
*/

params ["_missile"];
[[_missile],
{
	params ["_missile"];
	
	
	_hasAce = false;
	if ("ace_common" in activatedAddons) then {_hasAce = true};
	_distance = player distance _missile;
	systemChat str _distance;
	if (_distance >3000) ExitWith {};//no effect felt if beyond 3km
	_damage = 10/_distance;
	_camshakeStrength = 1000/_distance;
	_camshakeduration = 500/ _distance;

		enableCamShake true;
		addCamShake [_camshakeStrength, _camshakeduration, 25];
	
	if (_distance >100) exitWith {}; //no damage received if over 100m
	if (_hasAce) then {[player, "body", _damage, objNull, "vehiclecrash", _damage, objNull] call ace_medical_fnc_handleDamage; } else {player setDamage _damage};


}] RemoteExec ["Spawn",[0,-2] select isDedicated, false];
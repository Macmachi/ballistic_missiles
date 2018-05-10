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
	_camshakeduration = 1000/ _distance;
	if (_distance < 100) then {_camshakeStrength = _camshakeStrength /2; _camshakeduration = _camshakeduration /2};//attenue la force si le joueur est à moins de 100m

		enableCamShake true;
		addCamShake [_camshakeStrength, _camshakeduration, 25];
	
	if (_distance >100) exitWith {}; //no damage received if over 100m
	if(vehicle player != player) then {_damage = _damage /2}; // dommages divisés par 2 si le joueur est dans un véhicule
	if (_hasAce) then {[player, "body", _damage, objNull, "vehiclecrash", _damage, objNull] call ace_medical_fnc_handleDamage; [_damage*10] call ace_hearing_fnc_earRinging;} else {player setDamage _damage}; //ajout d'accouphenes ace


}] RemoteExec ["Spawn",[0,-2] select isDedicated, false];


_allNearEntities = (getPosATL _missile) nearEntities 100;
_allNearObjects = nearestObjects [_missile, [], 100];
_everythingNear = [];
_everythingNear = _allNearObjects + _allNearEntities;
_hasAce = false;
if ("ace_common" in activatedAddons) then {_hasAce = true};
{
_distance = _x distance _missile;
if (_distance == 0) then {_distance = 1};
_damage = 10/_distance;

if (_x isKindOf "Man") then 
	{
		if (isPlayer _x) then {_damage = 0};// pas de redondance des dégats joueur avec l'autre partie du script
		if (_hasAce) then {[_x, "body", _damage, objNull, "vehiclecrash", _damage, objNull] call ace_medical_fnc_handleDamage; } else {_x setDamage _damage};
	} 
else
	{
	_damage = _damage * 2; // pour le show les dommages sont doublés pour les objets et décors faudra ptet voir à le baisser un peu c'est cool mais un poil radical
	if (_x == _missile or _x isKindOf "iskander_launchpad1") then {_damage = 0};//ne pas appliquer de dégats faudra ptet changer ça si tu crées plusieurs launchpads
	_x setDamage _damage;
	};

} forEach _everythingNear;
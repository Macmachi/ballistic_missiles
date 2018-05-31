/*
* this function allow the missile destruction
*/
params ["_missile"];

scriptedExplosion = "Bo_Mk82" createVehicle (position _missile);
deleteVehicle _missile;


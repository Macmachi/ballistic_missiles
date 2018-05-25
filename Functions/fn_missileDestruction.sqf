/*
* this function allow the missile destruction
*/
params ["_missile"];
_missile setVariable ["TILK_missileDestruction",true,true];

//explosion
//null = createVehicle ["Bo_GBU12_LGB_MI10", _position,[], 0, "CAN_COLLIDE"];   
// CHANGER variable dans le  dans le ingition
/* SCRIPT dans ingnition si détruit pas de ignition si pas détruit en call l'animation mais on deétruit le missile
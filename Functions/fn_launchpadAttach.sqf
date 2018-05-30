/*
* Function that allows spawn an missile and attach it to a launcher 
*/
params ["_launcher","_missile"];
_missilespawn = _missile createVehicle (position _launcher);
_launcher disableCollisionWith _missilespawn;
_missilespawn disableCollisionWith _launcher;
_selectPosMissile = _missilespawn selectionPosition "contactlauncher";
_modelToWorldSelectPosMissile = _missilespawn modelToWorld _selectPosMissile;
_offset = _selectPosMissile vectorMultiply -1;
_missilespawn attachTo [_launcher,_offset,"contactmissile"];
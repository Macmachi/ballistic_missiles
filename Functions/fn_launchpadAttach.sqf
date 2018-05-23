/*
* Function that allows spawn an Iskander and attach it to the launcher 1 (for the Iskander)
*/
params ["_launcher","_missile"];
_missile = _missile createVehicle position _launcher;
_launcher disableCollisionWith _missile;
_selectPosMissile = _missile selectionPosition "contactlauncher";
_modelToWorldSelectPosMissile = _missile modelToWorld _selectPosMissile;
_offset = _selectPosMissile vectorMultiply -1;
_missile attachTo [_launcher,_offset,"contactmissile"];
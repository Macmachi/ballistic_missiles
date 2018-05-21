/*
* Function that allows spawn an Iskander and attach it to the launcher 1 (for the Iskander)
*/

_missile = "iskander_9K720" createVehicle position _this;
params ["_launcher","_missile"];
_launcher disableCollisionWith _missile;
_selectPosMissile = _missile selectionPosition "contactlauncher";
_modelToWorldSelectPosMissile = _missile modelToWorld _selectPosMissile;
_offset = _selectPosMissile vectorMultiply -1;
_missile attachTo [_launcher,_offset,"contactmissile"];
/*
* returns all missiles from the mod in the mission
*/
_allCFGMissiles = getarray (configfile>>"cfgVehicles">>"allTILKBallisticMissiles");
_allMissionMissiles =[];
{
	_allMissionMissiles append (allMissionObjects _x);
}forEach _allCFGMissiles;
_allMissionMissiles
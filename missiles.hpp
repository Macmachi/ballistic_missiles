allTILKBallisticMissiles[]={"shahab3","iskander_9K720"};//ajouter les noms de classe de tes missiles ici si tu en crées de nouveaux
class Wreck_base_F;

/* Shahab 3 */

class shahab3: Wreck_base_F {
	author = "TILK";
	mapSize = 7.53;
	class SimpleObject {
		eden = 0;
		animate[] = {};
		hide[] = {};
		verticalOffset = 0.829;
		verticalOffsetWorld = 0;
		init = "''";
	};
	editorPreview = "\Ballistic_missiles\icons\shahab3_icon.paa";
	//_generalMacro = "Land_Wreck_BMP2_F";
	scope = 2;
	scopeCurator = 2;
	displayName = "Shahab 3";
	model = "\Ballistic_missiles\objects\shahab3.p3d";
	icon = "iconObject_1x2";
    editorCategory = "EdCat_missiles";
    editorSubcategory = "EdSubcat_missiles_country_iran";
	destrType = "DestructBuilding";
	cost = 0;
	accuracy = 1000;
	class AttributeValues {
		objectIsSimple = 0;
	};
	
	// Strategic
	side = 3;
	armor = 250;
	ladders[] = {};
	// Building
	nameSound = "obj_building";
	// Static
	reversed = 0;
	hasDriver = 0;
	audible = 0;
	simulation = "house";
	class DestructionEffects {};
	picture = "pictureStaticObject";
	weapons[] = {};
	magazines[] = {};
	irTarget = 0;
	type = 1;
	threat[] = {0, 0, 0};
	maxSpeed = 0;
	coefInside = 2;
	coefInsideHeur = 2;
	coefSpeedInside = 2;
	windSockExist = 0;
	countsForScoreboard = 0;
	class EventHandlers {
		init = "_this call TILK_fnc_ignition;";
		class CBA_Extended_EventHandlers {};
	};
	
};
/* Iskander_9K720 */

class iskander_9K720: Wreck_base_F {
	author = "TILK";
	mapSize = 7.53;
	class SimpleObject {
		eden = 0;
		animate[] = {};
		hide[] = {};
		verticalOffset = 0.829;
		verticalOffsetWorld = 0;
		init = "''";
	};
	editorPreview = "\Ballistic_missiles\icons\iskander_9K720_icon.paa";
	//_generalMacro = "Land_Wreck_BMP2_F";
	scope = 2;
	scopeCurator = 2;
	displayName = "Iskander 9K720 (SS-26 Stone)";
	model = "\Ballistic_missiles\objects\iskander_9K720.p3d";
	icon = "iconObject_1x2";
    editorCategory = "EdCat_missiles";
    editorSubcategory = "EdSubcat_missiles_country_russia";
	destrType = "DestructBuilding";
	cost = 0;
	accuracy = 1000;
	class AttributeValues {
		objectIsSimple = 0;
	};
	
	// Strategic
	side = 3;
	armor = 250;
	ladders[] = {};
	// Building
	nameSound = "obj_building";
	// Static
	reversed = 0;
	hasDriver = 0;
	audible = 0;
	simulation = "house";
	class DestructionEffects {};
	picture = "pictureStaticObject";
	weapons[] = {};
	magazines[] = {};
	irTarget = 0;
	type = 1;
	threat[] = {0, 0, 0};
	maxSpeed = 0;
	coefInside = 2;
	coefInsideHeur = 2;
	coefSpeedInside = 2;
	windSockExist = 0;
	countsForScoreboard = 0;
	class EventHandlers {
		init = "_this call TILK_fnc_ignition;";
		class CBA_Extended_EventHandlers {};
	};
	
};

/*
Name of the script : A simple _missile animation
Author : TILK
Credit : Many thanks to the famous Mr.H who contributed a lot to the code and who developed the missile launch interface
*/

0 = _this spawn {

		
_missile = _this select 0;
systemChat str _missile;
waitUntil {_missile getVariable ["TILK_MissileLaunch",false];};

_missile say3D "missilelaunchsound"; // audio file duration 39 seconds
//gestion degat via un trigger qui reste sur place met ce supprime apres 1ou2 seconde si joueur trop pret = mort

_emiterpos= _missile modelToWorld (_missile selectionPosition "reactor"); 
//smoked particle number 1 on ignition of thrusters
_PS1 = "#particlesource" createVehicleLocal _emiterpos;
systemChat str _PS1;
_PS1 setParticleCircle [0, [0, 0, 0]];
_PS1 setParticleRandom [0, [10, 10, 2], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS1 setParticleParams 
			[

				//[particleShape, /*String*/particleFSNtieth, /*Number*/particleFSIndex, /*Number*/particleFSFrameCount, /*Number*/particleFSLoop /*Optional - Boolean. Default: true*/],
				["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 8, 3, 1],
				//animationName, /*String*/
				"", 
				//particleType, /*String - Enum: Billboard, SpaceObject*/
				"Spaceobject",
				//timerPeriod, /*Number*/
				1,
				//lifeTime, /*Number*/
				25,
				//position, /*3D Array of numbers as relative position to particleSource or (if object at index 18 is set) object. Or (if object at index 18 is set) String as memoryPoint of object.*/
				"Reactor",
				//moveVelocity, /*3D Array of numbers.*/
				[0,0,0],
				//rotationVelocity, /*Number*/
				0.2,
				//weight, /*Number*/
				3,
				//volume, /*Number*/
				2,
				//rubbing, /*Number*/
				1,
				//size, /*Array of Number*/
				[8,8,8,0], 
				//color, /*Array of Array of RGBA Numbers*/
				[[4, 5, 10, 10]],
			   //animationSpeed, /*Array of Number*/
			   [1,0.5],
				//randomDirectionPeriod, /*Number*/
				1,
				//randomDirectionIntensity, /*Number*/
				0,
				//onTimerScript, /*String*/
				"",
				//beforeDestroyScript, /*String*/
				"",
				//this, /*Object*/
				_missile,
				//angle, /*Optional Number - Default: 0*/
				0,
				//onSurface, /*Optional Boolean*/
				true,
				//bounceOnSurface, /*Optional Number*/
				1,
				//emissiveColor /*Optional Array of Array of RGBA Numbers*/
				[[0.1, 0.1, 0.1, 0.75]]
				
			];

_PS1 setDropInterval 0.002;

sleep 2; //2 second break 

_PS2 = "#particlesource" createVehicleLocal _emiterpos;
_PS2 setParticleCircle [0, [0, 0, 0]];
_PS2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS2 setParticleParams [

				//[particleShape, /*String*/particleFSNtieth, /*Number*/particleFSIndex, /*Number*/particleFSFrameCount, /*Number*/particleFSLoop /*Optional - Boolean. Default: true*/],
				["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 8, 3, 1],
				//animationName, /*String*/
				"", 
				//particleType, /*String - Enum: Billboard, SpaceObject*/
				"Spaceobject",
				//timerPeriod, /*Number*/
				1,
				//lifeTime, /*Number*/
				18,
				//position, /*3D Array of numbers as relative position to particleSource or (if object at index 18 is set) object. Or (if object at index 18 is set) String as memoryPoint of object.*/
				"Reactor",
				//moveVelocity, /*3D Array of numbers.*/
				[0,0,0],
				//rotationVelocity, /*Number*/
				0.2,
				//weight, /*Number*/
				3,
				//volume, /*Number*/
				2,
				//rubbing, /*Number*/
				1,
				//size, /*Array of Number*/
				[2,2,2,0], 
				//color, /*Array of Array of RGBA Numbers*/
				[[4, 5, 10, 10]],
			   //animationSpeed, /*Array of Number*/
			   [1,0.5],
				//randomDirectionPeriod, /*Number*/
				0,
				//randomDirectionIntensity, /*Number*/
				0,
				//onTimerScript, /*String*/
				"",
				//beforeDestroyScript, /*String*/
				"",
				//this, /*Object*/
				_missile,
				//angle, /*Optional Number - Default: 0*/
				0,
				//onSurface, /*Optional Boolean*/
				true,
				//bounceOnSurface, /*Optional Number*/
				1,
				//emissiveColor /*Optional Array of Array of RGBA Numbers*/
				[[0.1, 0.1, 0.1, 0.75]]
		];
		
_PS2 setDropInterval 0.002;

_a = 1; //iniatialize our variable allowing to control the animation 

/*Start animation*/
while {_a < 4000} //total duration of the animation (a = a+1 every 0.001 second)

		do { 

		//Camera effect 
		if (_a==2) then {
		deleteVehicle _PS1; //delete smoked particle number 1 on ignition of thrusters 
		addCamShake [2, 5, 25]; // POUR H possible de faire en sorte que la caméra shake seulement pour les joueurs qui sont dans les 500m-1km? du lancement
		};
		//Moves the object on the z axis
		if (_a < 200) then {
		_missile setPos (getPos _missile vectorAdd [0,0,0.01]);
		sleep 0.001;
		_a = _a+1;
		hintSilent str _a; // debug
		};

		if (_a==200) then {
		/*create fire particle*/
		_objfire = "test_EmptyObjectForFireBig" createVehicle getpos _missile;
		_objfire attachTo [_missile, [0, 0, -1] ];
		
		_missile setVariable ["TILK_firesource",_objfire];
		};

		if (_a==250) then {
		addCamShake [10, 2, 25]; // POUR H possible de faire en sorte que la caméra shake seulement pour les joueurs qui sont dans les 500m-1km? du lancement
		};

		if (_a >= 200) then {
		_missile setPos (getPos _missile vectorAdd [0,0,0.12]);
		sleep 0.001;
		_a = _a+1;
		hintSilent str _a; // debug
		};

		/*End animation*/
		if (_a == 4000) then {
		_objfire = _missile getVariable "TILK_firesource";

		//_objfire call fnc_deleteTestObj; // delete object
		deleteVehicle _objfire;
		deleteVehicle _missile; // delete object
		hint "End of animation"; // debug
		};

}; //Close the loop

};
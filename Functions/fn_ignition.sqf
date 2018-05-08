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

//smoked particle number 2 
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

//fire particle 
_PS3 = "#particlesource" createVehicleLocal _emiterpos;
_PS3 setParticleCircle [0, [0, 0, 0]];
_PS3 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0.5], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS3 setParticleParams 
         [
                ["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,10,32], 
                "",
                "billboard",
				//timerPeriod, /*Number*/
				1,
				//lifeTime, /*Number*/
			     0.8,
				//position, /*3D Array of numbers as relative position to particleSource or (if object at index 18 is set) object. Or (if object at index 18 is set) String as memoryPoint of object.*/
                "Reactor",
				//moveVelocity, /*3D Array of numbers.*/
                [0, 0, 0.2],
				//rotationVelocity, /*Number*/
                 1,
				//weight, /*Number*/
                0.0565,
				//volume, /*Number*/
                0.045,
                 //rubbing, /*Number*/
				0.025,
				//size, /*Array of Number*/
				[1.5,1.5,1.5,0], 
				//color, /*Array of Array of RGBA Numbers*/
				[[4, 5, 10, 10]],
			    //animationSpeed, /*Array of Number*/
			    [1,0],
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
				90,
				//onSurface, /*Optional Boolean*/
				false,
				//bounceOnSurface, /*Optional Number*/
				0,
				//emissiveColor /*Optional Array of Array of RGBA Numbers*/
				[[1,1,1,-0],[1,1,1,-1],[1,1,1,-1],[1,1,1,-1],[1,1,1,-1],[1,1,1,-0]]
				
			];

_PS3 setDropInterval 0.02;


_a = 1; //iniatialize our variable allowing to control the animation 

/*Start animation*/
while {_a < 4000} //total duration of the animation (a = a+1 every 0.001 second)

		do { 
		//Camera effect 
		if (_a==2) then {
		deleteVehicle _PS1; //delete smoked particle number 1 on ignition of thrusters 
		addCamShake [5, 2, 25]; // POUR H possible de faire en sorte que la caméra shake seulement pour les joueurs qui sont dans les 500m-1km? du lancement
		};
		//Moves the object on the z axis
		if (_a < 200) then {
		_missile setPos (getPos _missile vectorAdd [0,0,0.01]);
		sleep 0.001;
		_a = _a+1;
		hintSilent str _a; // debug
		};
		//Acceleration	
		if (_a >= 200) then {
		_missile setPos (getPos _missile vectorAdd [0,0,0.12]);
		sleep 0.001;
		_a = _a+1;
		hintSilent str _a; // debug
		};
		/*End animation*/
		if (_a == 4000) then {
		deleteVehicle _missile; // delete missile (that delete particles too)
		hint "End of animation"; // debug
		};

}; //Close the loop

};
/*
generates particles and animates the missile (is mp compatible)
*/

0 = _this spawn {

_missile = _this select 0;
systemChat str _missile;
waitUntil {_missile getVariable ["TILK_MissileLaunch",false];};

//play the sound during takeoff
playSound3D ["ballistic_missiles\media\sounds\missilelaunchsound.ogg", _missile, false, getPosASL _missile, 10, 1, 3000]; //can be heard up to 3km 

_emiterpos= _missile modelToWorld (_missile selectionPosition "reactor"); 
//smoked particle number 1 on ignition of thrusters
_PS1 = "#particlesource" createVehicleLocal _emiterpos;
systemChat str _PS1;
_PS1 setParticleCircle [0, [0, 0, 0]];
_PS1 setParticleRandom [0, [10, 10, 2], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS1 setParticleParams [
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

//fire particle number 1
_PS3 = "#particlesource" createVehicleLocal _emiterpos;
_PS3 setParticleCircle [0, [0, 0, 0]];
_PS3 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0.5], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS3 setParticleParams [
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
                [0, 0, 0],
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
			
//fire particle number 2
_PS4 = "#particlesource" createVehicleLocal _emiterpos;
_PS4 setParticleCircle [0, [0, 0, 0]];
_PS4 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0.5], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS4 setParticleParams [
                ["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,10,32], 
                "",
                "billboard",
				//timerPeriod, /*Number*/
				1,
				//lifeTime, /*Number*/
			    0.5,
				//position, /*3D Array of numbers as relative position to particleSource or (if object at index 18 is set) object. Or (if object at index 18 is set) String as memoryPoint of object.*/
                "Reactor",
				//moveVelocity, /*3D Array of numbers.*/
                [0, 0, 0],
				//rotationVelocity, /*Number*/
                1,
				//weight, /*Number*/
                0.0565,
				//volume, /*Number*/
                0.045,
                 //rubbing, /*Number*/
				0.025,
				//size, /*Array of Number*/
				[4,4,4,0], 
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

		sleep 1; //1 second break 
		
		deleteVehicle _PS1; //delete smoked particle (number 1) on ignition of thrusters
		[_missile] call TILK_fnc_setMissileDamages;
		_PS4 setDropInterval 0.02;

		//animation starts here
		//the following scope is executed in parallel
		_missile setVelocity [0,0,10];
		[_missile] spawn {
		params ["_missile"];
			
			//exponential increase of the velocity of the missile during 200 iterations
			_startVelocity = 1;
			for "_i" from 1 to 200 do 
			{
			_missile setVelocity (velocity _missile vectorAdd [0,0,_startVelocity * _i]);
			sleep 0.1;
			//hint format ["Loop %1 vel %2",str _i, str velocity _missile]; //debug
			};
			
		waitUntil {(getPosATL _missile) select 0 > 2000}; // waits until the missile has reached 2000m above ground level, removes the missile
		deleteVehicle _missile;
		hint "destroyed missile" //debug
		};
		///end of motion scope
		
		//the following scope is executed in parallel and destroyed PS4 when the missile reaches 100m
		[_PS4,_missile] spawn {
		params ["_PS4","_missile"];
		waitUntil {(getPosATL _missile) select 0 > 100};
		deleteVehicle _PS4;
		};
		
///end of function
};
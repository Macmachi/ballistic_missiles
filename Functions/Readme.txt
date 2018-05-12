/*Particle configuration - example*/	

	_PS1 setParticleParams [
		//[particleShape, /*String*/particleFSNtieth, /*Number*/particleFSIndex, /*Number*/particleFSFrameCount, /*Number*/particleFSLoop /*Optional - Boolean. Default: true*/],
		["\A3\data_f\ParticleEffects\Universal\XYZ.p3d", 8, 3, 1],
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
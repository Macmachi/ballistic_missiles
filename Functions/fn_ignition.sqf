systemchat str _this;
0 = _this spawn {
/*
Name of the script : A simple _missile animation
Author : TILK
*/

/*RECOMMENTER + REFAIRE MODELISATION FUSEE AILETTE! */ 

// Variable name of the object in the editor : _missile
// Add H pad with the variable "_particle_emitter" (invisible)
// init of the object or other object (like laptop) in the editor : this addAction ["Touch the object", "simple__missile_animation.sqf"];

_missile = _this select 0;

//_missile removeAction 0; // delete action on the object (after use)

// You can play sound of engine here with play3D
waitUntil {_missile getVariable ["TILK_MissileLaunch",false];};
_OBJ  = _missile;
// créer particle emitter
_particle_emitter = "Land_HelipadEmpty_F" createVehicle (position _missile);
_particle_emitter attachTo [_OBJ, [0, 0, -7] ]; 

/*particule fumée */

_PS = "#particlesource" createVehicleLocal getpos _particle_emitter;
_PS setParticleCircle [0, [0, 0, 0]];
_PS setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS setParticleParams [["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 8, 3, 1], 
"", 
"Spaceobject", //type of animation (Billboard (2D), Spaceobject (3D))
 0.1, //interval of timer (how often is called script defined in parameter onTimerScript)
 5, //life time of particle in seconds
 [0, 0, 1], //direction and speed of movement of particle [x,z,y]
 [0, 0, 3], //direction and speed of rotation of particle [x,z,y]
 1, //weight of particle (kg)aa
 2, //volume of particle (m3)
 1, //how much is particle affected by wind/air resistance
 15, //size of particle during the life
 //color of particle during the life (r,g,b,a)
 [4, 5, 10, 10], 
 [[0.1, 0.1, 0.1, 0.75], 
 [0.4, 0.4, 0.4, 0.5], 
 [1, 1, 1, 0.2]], 
 [0], //speed of animation (number of animation cycles in 1s)
 1, //interval of random speed change
 1, //intensity of random speed change
 "", 
 "", 
 _particle_emitter
 ];
_PS setDropInterval 0.02;

sleep 2; //2 seconds 

_a = 1; 

while {_a < 2000} // total duration of the animation (a = a+1 every 0.01 second)

do { 

/*Animation - Part 1*/
//Camera effect 
if (_a==2) then {
addCamShake [2, 5, 25];
};
//Moves the object on the z axis
if (_a < 200) then {
_missile setPos (getPos _missile vectorAdd [0,0,0.01]);
sleep 0.001;
_a = _a+1;
hint str _a; // debug
};

if (_a==200) then {
/*particule feu*/
_objfire = "test_EmptyObjectForFireBig" createVehicle getpos _missile;
_objfire attachTo [_missile, [0, 0, -1] ];

};

if (_a==250) then {
addCamShake [10, 2, 25];
};

if (_a >= 200) then {
_missile setPos (getPos _missile vectorAdd [0,0,0.12]);
sleep 0.001;
_a = _a+1;
hint str _a; // debug
};

/*End animation*/
if (_a == 2000) then {
deleteVehicle _missile; // delete object
deleteVehicle _particle_emitter; // delete object
deleteVehicle _objfire;
hint "End of animation"; // debug
};

}; // Close the loop

};
systemchat str _this;
0 = _this spawn {
/*
Name of the script : A simple _missile animation
Author : TILK
Credit : Many thanks to the famous Mr.H who contributed a lot to the code and who developed the missile launch interface
*/

_missile = _this select 0;

waitUntil {_missile getVariable ["TILK_MissileLaunch",false];};
_OBJ  = _missile;

// creates a particle emitter
_particle_emitter = "Land_HelipadEmpty_F" createVehicle (position _missile); // A SUPPRIMER une fois la variable reactor utilisé car taille des missiles différents...
_particle_emitter attachTo [_OBJ, [0, 0, -7] ]; // A SUPPRIMER une fois la variable reactor utilisé car taille des missiles différents...

/*AJOUTER DU CODE ICI pour générer des dégats 
50m de la fusée = mort
100m gravement blessé 
500m blessure légère
*/

//plays a sound as the missile takes off
_this say3D "missilelaunchsound"; // audio file duration 39 seconds
/*PROBLEME car A partir de 50m on entend plus le missile mais de trop prêt ça explose les oreilles si je mets le volume trop haut 
J'ai pour idée de lancer le son en double un de loin et un proche avec deux volumes différents pas solution plus optimale?
*/

//smoked particle number 1 on ignition of thrusters
_PS1 = "#particlesource" createVehicleLocal _missile modelToWorld (_missile selectionPosition "reactor");
_PS1 setParticleCircle [0, [0, 0, 0]];
_PS1 setParticleRandom [0, [10, 10, 5], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS1 setParticleParams [["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 8, 3, 1], 
"", 
"Spaceobject", //type of animation (Billboard (2D), Spaceobject (3D))
 1, //interval of timer (how often is called script defined in parameter onTimerScript)
 20, //life time of particle in seconds 
 [0, 0, 0], //direction and speed of movement of particle [x,z,y]
 [0, 0, 0.5], //direction and speed of rotation of particle [x,z,y]
 1, //weight of particle (kg)
 2, //volume of particle (m3)
 1, //how much is particle affected by wind/air resistance
 50, //size of particle during the life
 //color of particle during the life (r,g,b,a)
 [4, 5, 10, 10], 
 [[0.1, 0.1, 0.1, 0.75], 
 [0.4, 0.4, 0.4, 0.5], 
 [1, 1, 1, 0.2]], 
 [1], //speed of animation (number of animation cycles in 1s)
 1, //interval of random speed change
 1, //intensity of random speed change
 "", 
 "", 
 _particle_emitter //source of particle emission A MODIFIER AVEC REACTOR
 ];
_PS1 setDropInterval 0.002;

sleep 2; //2 second break 

//smoked particle number 2 at missile takeoff
_PS2 = "#particlesource" createVehicleLocal _missile modelToWorld (_missile selectionPosition "reactor");
_PS2 setParticleCircle [0, [0, 0, 0]];
_PS2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_PS2 setParticleParams [["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 8, 3, 1], 
"", 
"Spaceobject", //type of animation (Billboard (2D), Spaceobject (3D))
 1, //interval of timer (how often is called script defined in parameter onTimerScript)
 15, //life time of particle in seconds 
 [0, 0, 0], //direction and speed of movement of particle [x,z,y]
 [0, 0, 0.5], //direction and speed of rotation of particle [x,z,y]
 1, //weight of particle (kg)
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
 _particle_emitter //source of particle emission A MODIFIER AVEC REACTOR
 ];
_PS2 setDropInterval 0.002;

_a = 1; //iniatialize our variable allowing to control the animation 

/*Start animation*/
while {_a < 5000} //total duration of the animation (a = a+1 every 0.001 second)

do { 

//Camera effect 
if (_a==2) then {
addCamShake [2, 5, 25]; // POUR H possible de faire en sorte que la caméra shake seulement pour les joueurs qui sont dans les 500m-1km? du lancement
};
//Moves the object on the z axis
if (_a < 200) then {
_missile setPos (getPos _missile vectorAdd [0,0,0.01]);
sleep 0.001;
_a = _a+1;
hint str _a; // debug
};

if (_a==200) then {
/*create fire particle*/
_objfire = "test_EmptyObjectForFireBig" createVehicle _missile modelToWorld (_missile selectionPosition "reactor");
_objfire attachTo [_missile, [0, 0, -1] ];
deleteVehicle _PS1; //delete smoked particle number 1 on ignition of thrusters 
};

if (_a==250) then {
addCamShake [10, 2, 25]; // POUR H possible de faire en sorte que la caméra shake seulement pour les joueurs qui sont dans les 500m-1km? du lancement
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
deleteVehicle _particle_emitter; // delete object A SUPPRIMER DES QUE REACTOR UTILISE PARTOUT
deleteVehicle _objfire; // delete object
hint "End of animation"; // debug
};

}; //Close the loop

};
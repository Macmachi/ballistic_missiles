***[Ballistic missiles mod for Arma 3]***

[NOTICE] If you use things from this mod you have to credit us!

-----------------------------------------------------------------------
[Authors] 
-----------------------------------------------------------------------
- TILK : Realization of 3D models, import and adaptation of models in arma 3, participation in animation code and particle settings and debugging
- Mr.H : Creator of the missile launch interface, configuration of objects in arma 3, made the majority of the code with many code improvement and debugging
-----------------------------------------------------------------------
[Features]
-----------------------------------------------------------------------
- Use ballistic missiles to create original and impressive missions (missiles cannot be used as a weapon)
- Basic launch interface provided
- Single player and multiplayer compatible (tested on dedicated server)
- Low resource consumption animation
- Risk of injury or death if you are within 100m of the missile during launch (damage also compatible with Ace)
-----------------------------------------------------------------------
[How to use this mod]
-----------------------------------------------------------------------
1. Place one or more missiles on the map
2. Launch the missile(s)
- Method 1 : You can launch the missile with an interface by adding this function in the init of the   object by using its variable name. 
  For example, a laptop object with the variable name laptop1 : 
  [laptop1] call TILK_fnc_isMissileLauncherInterface;
- Method 2 : Launch the missile by giving a variable name to the missile, you can put this function    in a trigger or an addaction.
  For example, a missile object with the variable name missile1 : 
  [missile1] call TILK_fnc_launchMissile;
-----------------------------------------------------------------------
[Credits]
-----------------------------------------------------------------------
- Source of missile sound : universal-soundbank.com
- Thanks to Bohemia Interactive 
-----------------------------------------------------------------------
[Advertising]
-----------------------------------------------------------------------
- You can download Mr.H's famous satellite mod for Arma 3, here :   https://steamcommunity.com/sharedfiles/filedetails/?id=1310581330 
- If you are mission maker my comrade RedBelette develops a mission framework for Arma 3 that you 
  find here: http://steamcommunity.com/sharedfiles/filedetails/?id=1226877632&searchtext=red+framework
-----------------------------------------------------------------------
[Acknowledgements]
-----------------------------------------------------------------------
- Many thanks to the TGV team !

A faire lors de la version 1.1 :
- Ajout du missile V2
- ajout lanceur statique vertical statique 
- Finir configuration du launcher pour le islanker (rajouter points de contact et d'orientation?)
- Ajout d'un silo pour le islanker
- Module pour désactiver les dégats ? 
- Permet de lancer un missile via Zeus ?
- Module de ciblage qui drop missile a 90 degré et le fait péter quand Z = 0?
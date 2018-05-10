***[Ballistic missiles mod for Arma 3]***

[NOTICE] If you use things from this mod you have to credit us!

-----------------------------------------------------------------------
[Authors] 
-----------------------------------------------------------------------
- TILK : Realization of 3D models, import and adaptation of models in arma 3, participation in   animation code and particle settings and debugging
- Mr.H : Creator of the missile launch interface, configuration of objects in arma 3, made the   majority of the code with many code improvement and debugging
-----------------------------------------------------------------------
[Features]
-----------------------------------------------------------------------
- Use ballistic missiles to create original and impressive missions (missiles cannot be used as a   weapon)
- Basic launch interface provided

- Single player and multiplayer compatible (tested on dedicated server)

- Low resource consumption animation
- 
Risk of injury or death if you are within 100m of the missile during launch (damage also   compatible with Ace)


-----------------------------------------------------------------------
[How to use this mod]
-----------------------------------------------------------------------
1. Place one or more missiles on the map
2. Launch the missile(s)
- Method 1 : You can launch the missile with an interface by adding this function in the init of the   object by using its variable name. 
  For example, a laptop object with the variable name laptop1 : 
  [laptop1] call TILK_fnc_isMissileLauncherInterface;
- Method 2 : Launch the missile by giving a variable name to the missile, you can put this function   in a trigger or an addaction.
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
- You can download Mr.H's famous satellite mod for arma 3, here :   https://steamcommunity.com/sharedfiles/filedetails/?id=1310581330 
- If you are mission maker my comrade RedBelette develops a mission framework that you 
  find here: http://steamcommunity.com/sharedfiles/filedetails/?id=1226877632&searchtext=red+framework
-----------------------------------------------------------------------
[Acknowledgements]
-----------------------------------------------------------------------
- Many thanks to the TGV team
-----------------------------------------------------------------------
[List of changes]
-----------------------------------------------------------------------
V1.0 - May 2018 : initial release

Restant à corriger :
*Missiles are not suppressed
*Appliquer degats AI et objet (ca dure cmb de temps ca ? Sachant que la fusee reste pas longtemps au sol)
*Réduire le temps de tremblement de la caméra surtout quand on est prêt ?
*Supression des images et des noms de missiles tirés dans l'interface de lancement
*Remove messages for debugging (shape, nom missile dans l'editeur + "deleted missile" a la fin de l'animation)
*Au moment du lancement remettre le missile droit ou sinon empecher son lancement si rotation superieur a 10° 
*Créer nouvelle branche realease et décommenter ???
-----------------------------------------------------------------------




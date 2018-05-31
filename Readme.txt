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
-----------------------------------------------------------------------
//////////////// RELEASES \\\\\\\\\\\\\\\
-----------------------------------------------------------------------
Version 1.0 - First realease 
-----------------------------------------------------------------------
Version 1.1 :
- Add V2 missile 
- Missiles are now destructible but not targetable
- Flame reduction during launch 
-----------------------------------------------------------------------
Futurs ajouts de la version v1.2 :
- Ajout d'un lanceur statique vertical pour le islanker [DONE]
- Ajout du spawn du Islanker avec attachement dans lanceur statique [DONE] (need to be debug!) 
- Ajout du spawn du V2 avec attachement dans lanceur statique [DONE] (need to be debug!) 
- Modification de la fonction d'animation pour être compatible avec les lanceurs statiques [DONE] 
- Attribuer une variable à un missile qui spawn sur un launcher [?]
- Effacer de l'interface un missile qui a été détruit [?]
-----------------------------------------------------------------------
Futurs ajouts de la version v1.3 :
- Permettre de lancer un missile via Zeus ???
- Module de ciblage qui drop missile a 90 degré et le fait péter quand Z = 0 ???
-----------------------------------------------------------------------
Ideas for the future :
- Ajout de nouveaux missiles
- Animation blender pour le launcher statique du v2
- Ajout d'un silo pour islanker avec animation + spawn du missile
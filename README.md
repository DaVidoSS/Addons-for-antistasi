# Addons-for-antistasi
Set of improvements for Barbolani's Antistasi

This is set of gameplay improvements for Barbolani's Antistasi
 
 
1. copy improvements folder into Scripts folder 


---------------------------------------------------------------------
2. Automatic gear collector for dead corpse and boxes. 
Every dead body will have an action RED for gather every single gear element of dead unit to nearest vehicle.
Every box besides base boxes will have an action (WHITE)for gather box inventory to nearest vehicle.
Vehicle need to be unlocked or his owner in your group. Vehicle also can not be unmobilized.

2a. add at bottom initFuncs.sqf

ROB_fnc_collector = compile preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_collector.sqf";
ROB_fnc_remRobAction = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_remRobAction.sqf";
ROB_fnc_addactions = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_addactions.sqf";
ROB_fnc_getOwner = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_getOwner.sqf";


2b. Add in initPlayerLocal.sqf at very below:

0 = [] spawn  ROB_fnc_addactions;

-------------------------------------------------------------------------------

3. Current client/server/HC performance load displayed on map
This will show your fps count, server load, and hc client constantly on the map in right bottom corner.
Marker text will change color according to current load.
 
3a. Add in init.sqf at very below

0 = [] execVM "Scripts\improvements\show_fps.sqf";

---------------------------------------------------------------------------------

4. TFAR side improvements. Require Task Force Radio mod
By default if you take over enemy vehicle use LR and speak witch your team will be not available.
This will change this behavior on every vehicle in game.
After you add this every vehicle (civilian too) will have a LR radio with proper side coding. MP PVP friendly!


If you want that the players frequency of ch1 for LR and Sw gets automatically set to some number:
 
4a1. Add in init.sqf at very below:

0 = [true] execVM "Scripts\improvements\TFAR_autofreq.sqf";

without auto channel freq but still with proper radio code for captured enemy vehicles

4a2. Add in init.sqf at very below:

0 = [false] execVM "Scripts\improvements\TFAR_autofreq.sqf";

---------------------------------------------------------------------------------

5. Vehicle auto flip. Adds event fired when vehicle is upturned. 
After crew leave vehicle and go about 10m away vehicle will automatically turn back to normal position.
Require CBA for CBA XEH

5a. Add at bottom initFuncs.sqf
VEH_fnc_xehInit = compileFinal preProcessFileLineNumbers "Scripts\improvements\VEH_fnc_xehInit.sqf";

5b. Add in description.ext at very below:

#include "Scripts\improvements\description.hpp"


---------------------------------------------------------------------------------

6. Holster your primary weapon on back. Hands free!
Require CBA for keybindings

6.a Add in initPlayerLocal.sqf at very below:

#include "\a3\editor_f\Data\Scripts\dikCodes.h"
0 = [DIK_MULTIPLY] execVM "Scripts\improvements\holsterWeapon.sqf";

DIK_MULTIPLY is NUM_* key on numeric keyboard
You can change it to any other key: https://community.bistudio.com/wiki/DIK_KeyCodes

------------------------------------------------------------------------------------

7. Disable vehicles randomization (every player will see the same color of vehicle).
Warning!! You will see always the same vehicle for each vehicle type (boring)

7a. Add in description.ext after line  //showGroupIndicator = 1:

disableRandomization[] = {"AllVehicles"}; 

-------------------------------------------------------------------------------------

8. CHVD View and terrain adjustment Require CBA for keybindings

8a.Add in initPlayerLocal.sqf at very below:

CHVD_allowNoGrass = true;
CHVD_maxView = distanciaSPWN1;
CHVD_maxObj = distanciaSPWN1;


8.b Add in description.ext after line  #include "JeroenArsenal\functions.hpp"

#include "Scripts\improvements\CHVD\CfgFunctions.hpp"

8.c Add in description.ext at very below:

#include "Scripts\improvements\CHVD\dialog.hpp"

8.d Copy Scripts\improvements\stringtable.xml to mission root folder (A3-Antistasi.Altis)

--------------------------------------------------------------------------------------------
done

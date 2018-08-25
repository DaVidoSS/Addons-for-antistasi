<p># Addons-for-antistasi</p>
<p>This is set of 8 gameplay improvements for Barbolani's Antistasi.<br />You can use them all or some.</p>
<p>***************************************************************************************</p>
<p>1. copy improvements folder into Scripts folder</p>
<p>***************************************************************************************</p>
<p>2. Automatic gear collector for dead corpse and boxes.</p>
<p>Every dead body will have an action RED for gather every single gear element of dead unit to nearest vehicle.<br /> Every box besides base boxes will have an action (WHITE)for gather box inventory to nearest vehicle.<br /> Vehicle need to be unlocked or his owner in your group. Vehicle also can not be unmobilized.</p>
<p>2a. add at bottom initFuncs.sqf</p>
<p>ROB_fnc_collector = compile preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_collector.sqf";<br /> ROB_fnc_remRobAction = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_remRobAction.sqf";<br /> ROB_fnc_addactions = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_addactions.sqf";<br /> ROB_fnc_getOwner = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_getOwner.sqf";</p>
<p>2b. Add in initPlayerLocal.sqf at very below:</p>
<p>0 = [] spawn ROB_fnc_addactions;</p>
<p>***************************************************************************************</p>
<p>3. Current client/server/HC performance load displayed on map<br /> This will show your fps count, server load, and hc client constantly on the map in right bottom corner.<br /> Marker text will change color according to current load.<br /> <br />3a. Add in init.sqf at very below</p>
<p>0 = [] execVM "Scripts\improvements\show_fps.sqf";</p>
<p>***************************************************************************************</p>
<p>4. TFAR side improvements. Require Task Force Radio mod<br /> By default if you take over enemy vehicle use LR and speak witch your team will be not available.<br /> This will change this behavior on every vehicle in game.<br /> After you add this every vehicle (civilian too) will have a LR radio with proper side coding. MP PVP friendly!</p>
<p><br />4a1. If you want that the players frequency of ch1 for LR and Sw gets automatically set to some number generated by server:<br /> Add in init.sqf at very below:</p>
<p>0 = [true] execVM "Scripts\improvements\TFAR_autofreq.sqf";</p>
<p><br />4a2. Without auto channel freq but still with proper radio code for captured enemy vehicles.<br /> Add in init.sqf at very below:</p>
<p>0 = [false] execVM "Scripts\improvements\TFAR_autofreq.sqf";</p>
<p>***************************************************************************************</p>
<p>5. Vehicle auto flip. Adds event fired when vehicle is upturned. <br />After crew leave vehicle and go about 10m away vehicle will automatically turn back to normal position.<br />Require CBA for CBA XEH</p>
<p>5a. Add at bottom initFuncs.sqf<br /> VEH_fnc_xehInit = compileFinal preProcessFileLineNumbers "Scripts\improvements\VEH_fnc_xehInit.sqf";</p>
<p>5b. Add in description.ext at very below:</p>
<p>#include "Scripts\improvements\description.hpp"</p>
<p>***************************************************************************************<br />6. Holster your primary weapon on back. Hands free!<br />Require CBA for keybindings<br />Add in initPlayerLocal.sqf at very below:</p>
<p>#include "\a3\editor_f\Data\Scripts\dikCodes.h"<br /> 0 = [DIK_MULTIPLY] execVM "Scripts\improvements\holsterWeapon.sqf";</p>
<p>DIK_MULTIPLY is NUM_* key on numeric keyboard<br />You can change it to any other key: https://community.bistudio.com/wiki/DIK_KeyCodes</p>
<p>***************************************************************************************</p>
<p>7. Disable vehicles randomization (every player will see the same color of vehicle).<br />Warning!! You will see always the same vehicle for each vehicle type (boring)<br />Add in description.ext after line //showGroupIndicator = 1:</p>
<p>disableRandomization[] = {"AllVehicles"};</p>
<p>***************************************************************************************</p>
<p>8. CHVD View and terrain adjustment Require CBA for keybindings</p>
<p>8a.Add in initPlayerLocal.sqf at very below:</p>
<p>CHVD_allowNoGrass = true;<br />CHVD_maxView = distanciaSPWN1;<br />CHVD_maxObj = distanciaSPWN1;</p>
<p>8.b Add in description.ext after line #include "JeroenArsenal\functions.hpp"</p>
<p>#include "Scripts\improvements\CHVD\CfgFunctions.hpp"</p>
<p>8.c Add in description.ext at very below:</p>
<p>#include "Scripts\improvements\CHVD\dialog.hpp"</p>
<p>8.d Copy Scripts\improvements\stringtable.xml to mission root folder (A3-Antistasi.Altis)</p>
<p>***************************************************************************************<br />done</p>

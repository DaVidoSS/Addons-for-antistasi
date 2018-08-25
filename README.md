<p><strong># Addons-for-antistasi</strong></p>
<p>This is set of some modular scripted gameplay improvements for Barbolani's Antistasi.<br />You can use them all or some.</p>
<p>***************************************************************************************</p>
<p><strong>1.</strong>&nbsp; Copy improvements directory into Scripts directory in your copy of antistasi mission</p>
<p>***************************************************************************************</p>
<p><strong>2.</strong>&nbsp; Automatic gear collector for dead corpse and boxes.</p>
<p>Every dead body will have an action RED for gather every single gear element of dead unit to nearest vehicle.<br />Every box besides base boxes will have an action (WHITE)for gather box inventory to nearest vehicle.<br />Vehicle need to be unlocked or his owner in your group. Vehicle also can not be unmobilized.</p>
<p>2a. Add at bottom initFuncs.sqf</p>
<p><code>ROB_fnc_collector = compile preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_collector.sqf";</code><br /><code>ROB_fnc_remRobAction = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_remRobAction.sqf";</code><br /><code>ROB_fnc_addactions = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_addactions.sqf";</code><br /><code>ROB_fnc_getOwner = compileFinal preProcessFileLineNumbers "Scripts\improvements\ROB_fnc_getOwner.sqf";</code></p>
<p>2b. Add in initPlayerLocal.sqf at very below:</p>
<p><code>0 = [] spawn ROB_fnc_addactions;</code></p>
<p>***************************************************************************************</p>
<p><strong>3.</strong> Current client/server/HC performance load displayed on map<br />This will show your fps count, server load, and hc client constantly on the map in right bottom corner.<br />Marker text will change color according to current load.<br /><br />3a. Add in init.sqf at very below</p>
<p><code>0 = [] execVM "Scripts\improvements\show_fps.sqf";</code></p>
<p>***************************************************************************************</p>
<p><strong>4.</strong> TFAR side improvements. Require Task Force Radio mod<br />By default if you take over enemy vehicle use LR and speak witch your team will be not available.<br />This will change this behavior on every vehicle in game.<br />After you add this every vehicle (civilian too) will have a LR radio with proper side coding. MP PVP friendly!</p>
<p><br />4a1. If you want that the players frequency of ch1 for LR and Sw gets automatically set to some number generated by server:<br />Add in init.sqf at very below:</p>
<p><code>0 = [true] execVM "Scripts\improvements\TFAR_autofreq.sqf";</code></p>
<p><br />4a2. Without auto channel freq but still with proper radio code for captured enemy vehicles.<br />Add in init.sqf at very below:</p>
<p><code>0 = [false] execVM "Scripts\improvements\TFAR_autofreq.sqf";</code></p>
<p>***************************************************************************************</p>
<p><strong>5.</strong> Vehicle auto flip. Adds event fired when vehicle is upturned. It also adds small screen info when using garage.<br />After crew leave vehicle and go about 10m away vehicle will automatically turn back to normal position.<br /><strong>Require CBA A3</strong> for CBA XEH</p>
<p>5a. Add at bottom initFuncs.sqf</p>
<p><code>VEH_fnc_xehInit = compileFinal preProcessFileLineNumbers "Scripts\improvements\VEH_fnc_xehInit.sqf";</code></p>
<p>5b. Add in description.ext at very below:</p>
<p><code>#include "Scripts\improvements\description.hpp"</code></p>
<p>***************************************************************************************<br /><strong>6.</strong> Holster your primary weapon on back. Hands free!<br /><strong>Require CBA A3</strong> for keybindings<br />Add in initPlayerLocal.sqf at very below:</p>
<p><code>#include "\a3\editor_f\Data\Scripts\dikCodes.h"</code><br /><code>0 = [DIK_MULTIPLY] execVM "Scripts\improvements\holsterWeapon.sqf";</code></p>
<p>DIK_MULTIPLY is NUM_* key on numeric keyboard<br />You can change it to any other key: https://community.bistudio.com/wiki/DIK_KeyCodes</p>
<p>***************************************************************************************</p>
<p><strong>7.</strong> Disable vehicles randomization (every player will see the same color of vehicle).<br />Warning!! You will see always the same vehicle for each vehicle type (boring)<br />Add in description.ext after line //showGroupIndicator = 1:</p>
<p><code>disableRandomization[] = {"AllVehicles"};</code></p>
<p>***************************************************************************************</p>
<p><strong>8.</strong> CHVD View and terrain adjustment by Champ-1.</p>
<p><strong>Require CBA for keybindings</strong></p>
<p>8a.Add in initPlayerLocal.sqf at very below:</p>
<p><code>CHVD_allowNoGrass = true;</code><br /><code>CHVD_maxView = distanciaSPWN1;</code><br /><code>CHVD_maxObj = distanciaSPWN1;</code></p>
<p>8.b Add in description.ext after line #include "JeroenArsenal\functions.hpp"</p>
<p><code>#include "Scripts\improvements\CHVD\CfgFunctions.hpp"</code></p>
<p>8.c Add in description.ext at very below:</p>
<p><code>#include "Scripts\improvements\CHVD\dialog.hpp"</code></p>
<p>8.d Copy Scripts\improvements\stringtable.xml to mission root directory (A3-Antistasi.Altis)</p>
<p>***************************************************************************************</p>
<p><strong>Links:</strong></p>
<p><a href="http://www.armaholic.com/page.php?id=27390"> CH View Distance Script</a></p>
<p><a href="https://github.com/A3Antistasi/A3-Antistasi">Barbolani's Antistasi</a></p>
<p>***************************************************************************************<br />done</p>

/*
file: fireplace.sqf
by DaVidoSS
adds ability to create fireplace
created for Barbolani's Antistasi
parameters none
return VOID
*/
if !(hasInterface) exitWith {};
player addAction [
	"<t>Set Up Fireplace</t><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\Obsolete\ui_action_fire_in_flame_ca'/>",
	{
		params [["_target",objNull,[objNull]],["_unit",objNull,[objNull]]];
		
		_unit playMove "AinvPknlMstpSnonWnonDnon_medicUp3";
		sleep 6;
		private _campFire = createVehicle ["FirePlace_burning_F", (_unit modelToWorldVisual [0,1.5,0]), [], 0, "CAN_COLLIDE"];
		_unit setVariable ["mycampfire",_campFire,false];
		0 = [_campFire,
			[
				"<t>Remove Fireplace</t><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\Obsolete\ui_action_fire_put_down_ca'/>",
				{
					params [["_target",objNull,[objNull]],["_unit",objNull,[objNull]]];
					_unit playMove "AinvPknlMstpSnonWnonDnon_medicUp3";
					sleep 6;
					deleteVehicle _target;
				},nil,0,true,true,"","true",3,false,"",""
			]
		] remoteExec ["addAction", [0,-2] select isDedicated,_campFire];	
	},nil,0,false,true,"","isNull (_this getVariable ['mycampfire',objNull]) && {isNull (objectParent _this)}",-1, false, "", ""];
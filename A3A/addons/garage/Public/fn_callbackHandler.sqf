/*
    Author: [Håkon]
    Description:
        Meant to handle outside use of placement code, will trigger callbacks for event _callback passed, for the internal actions of the placement code.

        Important, always default to false.

        Actions:            | Return    | Description
        invalidPlacement    | Bool      | If can place, return false for can place
        Placed              | Nil       | Vehicle placed, gives you chance to do custom stuff


    Arguments:
    0. <Object> Vehicle
    1. <Array> Callback owner, and the callback arguments
    2. <String> Callback action

    Return Value:
    <Bool/Nil> Callback succesfull

    Scope: Any
    Environment: Any
    Public: No
    Dependencies:

    Example:

    License: MIT
*/
params [["_vehicle", objNull, [objNull]], ["_callback",[], [[]]], ["_action", ""]];
_callback params [["_callBackName", "", [""]], ["_arguments", []] ];

switch _callBackName do {
    case "BUYFIA": {
        switch _action do {

            case "Placed": {
				private _factionMoney = server getVariable "resourcesFIA";

				if (player == theBoss && {vehiclePurchase_cost <= _factionMoney}) then {
					[0,(-1 * vehiclePurchase_cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
				}
				else {
					[-1 * vehiclePurchase_cost] call A3A_fnc_resourcesPlayer;
					_vehicle setVariable ["ownerX",getPlayerUID player,true];
					playSound "A3AP_UiSuccess";
				};

                player reveal _vehicle;
	            petros directSay "SentGenBaseUnlockVehicle";

                vehiclePurchase_cost = 0;

                if (!HR_GRG_hasFuelSource) then { 
                    _vehicle setFuel random [0.15, 0.3, 0.45];
                }; 
            };

            default {false};
        };
    };

    case "BUYBLACKMARKET": {
        switch _action do {
            case "invalidPlacement": {
                [(player distance2d traderX > 50), localize "STR_veh_callback_arms_dealer_close"];
            };
            case "Placed": {
				private _factionMoney = server getVariable "resourcesFIA";

				if (player == theBoss && {vehiclePurchase_cost <= _factionMoney}) then {
					[0,(-1 * vehiclePurchase_cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
				}
				else {
					[-1 * vehiclePurchase_cost] call A3A_fnc_resourcesPlayer;
					_vehicle setVariable ["ownerX",getPlayerUID player,true];
					playSound "A3AP_UiSuccess";
				};

                player reveal _vehicle;
                vehiclePurchase_cost = 0;
            };

            default {false};
        };
    };

    case "BUILDSTRUCTURE": {
        switch _action do {
            case "invalidPlacement": {
                switch (construction_type) do { //return inverted here so true = cant place
                    case "LIGHT_BUNKER";
                    case "HEAVY_BUNKER": {
                        [(isOnRoad _vehicle) || {!(_vehicle inArea construction_nearestFriendlyMarker)}, localize "STR_veh_callback_constructions"];
                    };
                    default { false };
                };
            };

            case "Placed": {
                private _type = typeOf _vehicle;
                private _pos = getPosASL _vehicle;
                private _dir = getDir _vehicle;
                deleteVehicle _vehicle;
                [_type, _pos, _dir] spawn A3A_fnc_buildCreateVehicleCallback;
            };
            default {false};
        };
    };

    case "HCSquadVehicle": {
        switch _action do {
            case "invalidPlacement": {
                [getMarkerPos respawnTeamPlayer distance _vehicle > 50, format [localize "STR_veh_callback_close_to_flag", str 50]];
            };
            case "Placed": {
                (_arguments + [_vehicle]) spawn A3A_fnc_spawnHCGroup;
            };
            default {false};
        };
    };

    case "LARGEITEM":{
        switch _action do {
            case "Placed":
            {
                _arguments params  [
                    ["_unit", objNull, [objNull]],
                    ["_spawnItem", "", [""]],       // easier to keep the format from the buyitem then writing a new one
                    ["_price", -1, [0]],
                    ["_callbacks", [], [[]]],
                    ["_object", objNull, [objNull]]
                ];

                private _lastTimePurchase = _unit getVariable["A3A_spawnItem_cooldown",time];
                if (_lastTimePurchase > time) exitwith {[localize "STR_A3A_Utility_Items_Purchase_Title", format [localize "STR_A3A_Utility_Items_Last_Time_Purchase", ceil (_lastTimePurchase - time)]] call A3A_fnc_customHint; deleteVehicle _vehicle;};

                if (_price != 0) then {
                    //try to take money away 😞
                    private _insufficientFunds = isNil {
                        if (_unit == theBoss && (server getVariable ["resourcesFIA", 0]) >= _price) then {
                            [0,(-_price)] remoteExec ["A3A_fnc_resourcesFIA",2];
                            true;
                        } else {
                            if ((_unit getVariable ["moneyX", 0]) >= _price) then {
                                [-_price] call A3A_fnc_resourcesPlayer;
                                true;
                            };
                        };
                    };
                    if (_insufficientFunds) exitwith {[localize "STR_A3A_Utility_Items_Purchase_Title", localize "STR_A3A_Utility_Items_Insufficient_Funds"] call A3A_fnc_customHint; deleteVehicle _vehicle;};
                };

                _unit setVariable ["A3A_spawnItem_cooldown", time + 15];

                //object globals
                _vehicle setVariable ["A3A_canGarage", true, true];
                _vehicle setVariable ["A3A_itemPrice", _price, true];

                if(!isNull _object) then
                {
                    private _price = _object getVariable ["A3A_itemPrice", 0];
                    private _canOpenDoors = _object getVariable ["A3A_canOpenDoor", false];
                    private _itemClassName = _object getVariable ["A3A_packedObject", ""];

                    _vehicle setVariable ["A3A_canGarage", true, true];
                    _vehicle setVariable ["A3A_itemPrice", _price, true];
                    _vehicle setVariable ["A3A_canOpenDoor", _canOpenDoors, true]; 
                    deleteVehicle _object;
                };

                if(_callbacks isEqualTo []) exitWith {};

                // callbacks
                {
                    private _func_name = (_x #0);
                    if (_x #1) then {
                            private _jipKey = "A3A_utilityItems_item_" + _func_name + "_" + ((str _vehicle splitString ":") joinString "");
                            [_vehicle, _jipKey] remoteExecCall [_func_name, 0, _jipKey];
                    } else {
                        [_vehicle] call (missionNamespace getVariable _func_name);
                    };
                } foreach (_callbacks);
            };
            default {false};
        };
    };

    case "CREATELOOTCRATE": {
        switch _action do {
            case "Placed": {
				//Handle Money
				private _factionMoney = server getVariable "resourcesFIA";

                if (player == theBoss && {vehiclePurchase_cost <= _factionMoney}) then {
					[0,(-1 * vehiclePurchase_cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
				}
				else {
					[-1 * vehiclePurchase_cost] call A3A_fnc_resourcesPlayer;
					_vehicle setVariable ["ownerX",getPlayerUID player,true];
				};

                [_vehicle] call SCRT_fnc_loot_addLootCrateActions;

                _vehicle addEventHandler ["Killed", { [_this#0] spawn { sleep 10; deleteVehicle (_this#0) } }];

                clearItemCargoGlobal _vehicle;
                clearMagazineCargoGlobal _vehicle;
                clearWeaponCargoGlobal _vehicle;
                clearBackpackCargoGlobal _vehicle;
                vehiclePurchase_cost = 0;
            };

            default {false};
        };
    };

    case "CREATEREVIVEKITBOX": {
        switch _action do {
            case "Placed": {
				//Handle Money
				private _factionMoney = server getVariable "resourcesFIA";

                if (player == theBoss && {vehiclePurchase_cost <= _factionMoney}) then {
					[0,(-1 * vehiclePurchase_cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
				}
				else {
					[-1 * vehiclePurchase_cost] call A3A_fnc_resourcesPlayer;
					_vehicle setVariable ["ownerX",getPlayerUID player,true];
				};

                _vehicle addEventHandler ["Killed", { [_this#0] spawn { sleep 10; deleteVehicle (_this#0) } }];

                clearItemCargoGlobal _vehicle;
                clearMagazineCargoGlobal _vehicle;
                clearWeaponCargoGlobal _vehicle;
                clearBackpackCargoGlobal _vehicle;
                vehiclePurchase_cost = 0;

                _vehicle addItemCargoGlobal ["A3AP_SelfReviveKit", 3];
                [_vehicle] call A3A_Logistics_fnc_addLoadAction;
            };

            default {false};
        };
    };

    case "CREATERALLYPOINT": {
        switch _action do {
            case "invalidPlacement": {
                [[(position player), 50] call A3A_fnc_enemyNearCheck, localize "STR_dialogs_RP_enemies_near_placement_fail"];
            };
            case "Placed": {
				//Handle Money
				private _factionMoney = server getVariable "resourcesFIA";

                if (player == theBoss && {vehiclePurchase_cost <= _factionMoney}) then {
					[0,(-1 * vehiclePurchase_cost)] remoteExec ["A3A_fnc_resourcesFIA",2];
				}
				else {
					[-1 * vehiclePurchase_cost] call A3A_fnc_resourcesPlayer;
					_vehicle setVariable ["ownerX",getPlayerUID player,true];
				};

                private _posWorld = getPosWorld _vehicle;
                deleteVehicle _vehicle;
                [_posWorld] call SCRT_fnc_rally_placeRallyPoint;

                isRallyPointPlaced = true;
    			publicVariable "isRallyPointPlaced";
				petros sideRadio "SentGenBaseUnlockRespawn";
    			[petros, "support", localize "STR_dialogs_RP_success"] remoteExec ["A3A_fnc_commsMP", 0];

                vehiclePurchase_cost = 0;
            };

            default {false};
        };
    };

    default {false};
};

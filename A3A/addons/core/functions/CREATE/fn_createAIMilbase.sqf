#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
if (!isServer and hasInterface) exitWith{};

params ["_markerX"];

//Not sure if that ever happens, but it reduces redundance
if(spawner getVariable _markerX == 2) exitWith {};

Info_1("Spawning Military Base %1", _markerX);

private _vehiclesX = [];
private ["_markerX","_groups","_soldiers","_positionX","_num","_dataX","_prestigeOPFOR","_prestigeBLUFOR","_isAAF","_params","_frontierX","_array","_countX","_groupX","_dog","_grp","_sideX"];
private _markerX = _this select 0;
private _groups = [];
private _soldiers = [];
private _props = [];
private _dogs = []; //dogs are used in fn_location_createPatrols, removing this variable will break spawn

private _positionX = getMarkerPos (_markerX);

private _size = [_markerX] call A3A_fnc_sizeMarker;
//_garrison = garrison getVariable _markerX;

private _frontierX = [_markerX] call A3A_fnc_isFrontline;
private _busy = if (dateToNumber date > server getVariable _markerX) then {false} else {true};
private _nVeh = round (_size/60);

private _sideX = sidesX getVariable [_markerX,sideUnknown];
private _faction = Faction(_sideX);

/////////////////////////////
// SPAWNING AA ELEMENTS	  //
////////////////////////////
private _radarType = _faction getOrDefault ["vehicleRadar", ""];
private _samType = _faction getOrDefault ["vehicleSam", ""];
private _hasAaSpawned = false;

if (_radarType != "" && {_samType != ""}) then {
	private _spawnParameter = [_markerX, "Sam"] call A3A_fnc_findSpawnPosition;
	while {_spawnParameter isEqualType []} do {
		{
			private _aaVehicle = [_x, _spawnParameter select 0, 25, 10, true] call A3A_fnc_safeVehicleSpawn;
			private _crewType = [_sideX, _aaVehicle] call A3A_fnc_crewTypeForVehicle;
			private _aaGroup = createGroup _sideX;

			_aaGroup = [_aaGroup, _aaVehicle, _crewType] call A3A_fnc_createVehicleCrew;

			[_aaVehicle, _sideX] call A3A_fnc_AIVEHinit;

			_soldiers append (units _aaGroup);
            _groups pushBack _aaGroup;
            _vehiclesX pushBack _aaVehicle;		

			//radar rotation
            if(_x isEqualTo _radarType) then {
                _aaVehicle spawn {
                    while {alive _this} do {
                        {
                            _this lookAt (_this getRelPos [100, _x]);
                            sleep 2.45;
                        } forEach [120, 240, 0];
                    };
                };
            };	
		} forEach [_radarType, _samType];
		_spawnParameter = [_markerX, "Sam"] call A3A_fnc_findSpawnPosition;
		_hasAaSpawned = true;
	};
};

/////////////////////////////
// Self-propelled AA 	  //
////////////////////////////

if (!_hasAaSpawned) then {
	private _typeVehX = selectRandom (_faction get "vehiclesAA");
	private _max = if (_frontierX && {[_typeVehX] call A3A_fnc_vehAvailable}) then {2} else {1};
	for "_i" from 1 to _max do {
		private _spawnParameter = [_markerX, "Vehicle"] call A3A_fnc_findSpawnPosition;

		if (_spawnParameter isEqualType []) then {
			private _vehicle = [_spawnParameter select 0, _spawnParameter select 1,_typeVehX, _sideX] call A3A_fnc_spawnVehicle;
			private _veh = _vehicle select 0;
			private _vehCrew = _vehicle select 1;
			{[_x,_markerX] call A3A_fnc_NATOinit} forEach _vehCrew;
			[_veh, _sideX] call A3A_fnc_AIVEHinit;
			private _groupVeh = _vehicle select 2;

			_soldiers append _vehCrew;
			_groups pushBack _groupVeh;
			_vehiclesX pushBack _veh;

			sleep 1;
			[(gunner _veh), 300] spawn SCRT_fnc_common_scanHorizon;
		} else {
			_i = _max;
		};
	};
};

/////////////////////////////
// Heavy Patrol Vehicle   //
////////////////////////////

if (random 100 < (40 + tierWar * 6)) then {
	private _heavyVehPool =  (_faction get "vehiclesTanks") + (_faction get "vehiclesAPCs") + (_faction get "vehiclesIFVs");
	_heavyVehPool = _heavyVehPool call BIS_fnc_arrayShuffle;

	private _availableIndex = _heavyVehPool findIf {[_x] call A3A_fnc_vehAvailable};
	if (_availableIndex == -1) exitWith {};

	private _road = [_positionX] call A3A_fnc_findNearestGoodRoad;
	if (_road distance2D _positionX > 800) exitWith {};

	private _type = _heavyVehPool select _availableIndex;

	private _heavyVehicle = [(_heavyVehPool select _availableIndex), (position _road), 15, 10] call A3A_fnc_safeVehicleSpawn;
	if (isNull _heavyVehicle) exitWith {};

	private _crewType = [_sideX, _heavyVehicle] call A3A_fnc_crewTypeForVehicle;
	private _group = createGroup _sideX;

	_group = [_group, _heavyVehicle, _crewType] call A3A_fnc_createVehicleCrew;

	[_heavyVehicle, _sideX] call A3A_fnc_AIVEHinit;
	{[_x,_markerX] call A3A_fnc_NATOinit} forEach (units _group);

	if (_type in ((_faction get "vehiclesAPCs") + (_faction get "vehiclesIFVs"))) then {
		sleep 1;
		private _troopGroup = [(position _road), _sideX, (selectRandom ([_faction, "groupsTierMedium"] call SCRT_fnc_unit_flattenTier))] call A3A_fnc_spawnGroup;
		{_x assignAsCargo _heavyVehicle;_x moveInCargo _heavyVehicle; _soldiers pushBack _x; [_x] joinSilent _group; [_x,"",false] call A3A_fnc_NATOinit} forEach units _troopGroup;
		deleteGroup _troopGroup;
	};

	_soldiers append (units _group);
	_groups pushBack _group;
	_vehiclesX pushBack _heavyVehicle;		
};

private _boatType = selectRandom (_faction get "vehiclesGunBoats");
if ([_boatType] call A3A_fnc_vehAvailable) then {
	private _mrkMar = seaSpawn inAreaArray [_positionX, 500, 500];
	if(_mrkMar isNotEqualTo []) then {
		private _pos = (getMarkerPos (selectRandom _mrkMar)) findEmptyPosition [0,20,_typeVehX];
		private _vehicle=[_pos, 0, _boatType, _sideX] call A3A_fnc_spawnVehicle;
		private _veh = _vehicle select 0;
		[_veh, _sideX] call A3A_fnc_AIVEHinit;
		private _vehCrew = _vehicle select 1;
		{[_x,_markerX] call A3A_fnc_NATOinit} forEach _vehCrew;
		private _groupVeh = _vehicle select 2;
		_soldiers append _vehCrew;
		_groups pushBack _groupVeh;
		_vehiclesX pushBack _veh;
		sleep 1;
	} else {
		Error_1("Could not find seaSpawn marker on %1!", _markerX);
	};
};

if (_frontierX) then {
	private _roads = _positionX nearRoads _size;
	if (count _roads != 0) then {
		private _groupX = createGroup _sideX;
		_groups pushBack _groupX;

		private _dist = 0;
		private _road = objNull;
		{if ((position _x) distance _positionX > _dist) then {_road = _x;_dist = position _x distance _positionX}} forEach _roads;
		private _roadscon = roadsConnectedto _road;

		private _roadcon = objNull;
		{if ((position _x) distance _positionX > _dist) then {_roadcon = _x}} forEach _roadscon;


		if (_faction getOrDefault ["noSandbag", false]) then {
			private _dirveh = [_roadcon, _road] call BIS_fnc_dirTo;
			private _pos = [getPos _road, 7, _dirveh + 270] call BIS_Fnc_relPos;

			private _typeVehX = selectRandom (_faction get "staticATs");
			private _veh = _typeVehX createVehicle _positionX;

			_vehiclesX pushBack _veh;

			_veh setDir _dirVeh + 180;
			_veh setPos _pos;

			private _typeUnit = [_faction get "unitTierStaticCrew"] call SCRT_fnc_unit_getTiered;
			private _unit = [_groupX, _typeUnit, _positionX, [], 0, "NONE"] call A3A_fnc_createUnit;
			[_unit,_markerX] call A3A_fnc_NATOinit;
			[_veh, _sideX] call A3A_fnc_AIVEHinit;
			_unit moveInGunner _veh;
			_soldiers pushBack _unit;
		} else {
			private _dirveh = [_roadcon, _road] call BIS_fnc_dirTo;
			private _pos = [getPos _road, 7, _dirveh + 270] call BIS_Fnc_relPos;
			private _bunker = (_faction get "sandbag") createVehicle _pos;

			_vehiclesX pushBack _bunker;

			_bunker setDir _dirveh;
			_pos = getPosATL _bunker;

			private _typeVehX = selectRandom (_faction get "staticATs");
			private _veh = _typeVehX createVehicle _positionX;

			_vehiclesX pushBack _veh;

			_veh setDir _dirVeh + 180;
			_veh setPos _pos;

			private _typeUnit = [_faction get "unitTierStaticCrew"] call SCRT_fnc_unit_getTiered;
			private _unit = [_groupX, _typeUnit, _positionX, [], 0, "NONE"] call A3A_fnc_createUnit;
			[_unit,_markerX] call A3A_fnc_NATOinit;
			[_veh, _sideX] call A3A_fnc_AIVEHinit;
			_unit moveInGunner _veh;
			_soldiers pushBack _unit;
		};
	};
};


private _mrk = createMarkerLocal [format ["%1patrolarea", random 100], _positionX];
_mrk setMarkerShapeLocal "RECTANGLE";
_mrk setMarkerSizeLocal [(distanceSPWN/2),(distanceSPWN/2)];
_mrk setMarkerTypeLocal "hd_warning";
_mrk setMarkerColorLocal "ColorRed";
_mrk setMarkerBrushLocal "DiagGrid";
private _ang = markerDir _markerX;
_mrk setMarkerDirLocal _ang;
if (!debug) then {_mrk setMarkerAlphaLocal 0};

//maybe it's no longer needed after all..?
private _additionalGarrison = [_sideX, _markerX] call SCRT_fnc_garrison_rollOversizeGarrison;
if (_additionalGarrison isNotEqualTo []) then {
	for "_i" from 0 to (count _additionalGarrison) - 1 do {
		private _groupTypes = _additionalGarrison select _i;
		private _group = [_positionX, _sideX, _groupTypes, false, true] call A3A_fnc_spawnGroup;
		if !(isNull _group) then {
			sleep 1;
			_nul = [leader _group, _mrk, "LIMITED", "SAFE", "SPAWNED", "RANDOM", "NOVEH2"] spawn UPSMON_fnc_UPSMON;//TODO need delete UPSMON link
			_groups pushBack _group;
			{[_x] call A3A_fnc_NATOinit; _soldiers pushBack _x} forEach units _group;
		};
	};
};

private _garrison = garrison getVariable [_markerX,[]];
_garrison = _garrison call A3A_fnc_garrisonReorg;

private _radiusX = count _garrison;
private _patrol = true;

if (_radiusX < ([_markerX] call A3A_fnc_garrisonSize)) then {
	_patrol = false;
} else {
	//No patrol if patrol area overlaps with an enemy site
	_patrol = ((markersX findIf {(getMarkerPos _x inArea _mrk) && {sidesX getVariable [_x, sideUnknown] != _sideX}}) == -1);
};

if (_patrol) then {
	[_markerX, _positionX, _sideX, _faction, 4] call SCRT_fnc_location_createPatrols;
};
private _countX = 0;

// Mortar spawning
private _groupX = createGroup _sideX;
_groups pushBack _groupX;
private _typeUnit = [_faction get "unitTierStaticCrew"] call SCRT_fnc_unit_getTiered;
while {true} do {
	private _spawnParameter = [_markerX, "Mortar"] call A3A_fnc_findSpawnPosition;
	if (_spawnParameter isEqualType 0) exitWith {};

	private _mortarPos = _spawnParameter select 0;
	if (_mortarPos nearObjects ["StaticWeapon", 5] isNotEqualTo []) then { continue };		// hack, already a (support?) mortar on the point

	private _typeVehX = selectRandom (_faction get "staticMortars");
	private _veh = _typeVehX createVehicle _mortarPos;
	_veh setDir (_spawnParameter select 1);
	_nul=[_veh] spawn UPSMON_fnc_artillery_add;//TODO need delete UPSMON link
	private _unit = [_groupX, _typeUnit, _positionX, [], 0, "CAN_COLLIDE"] call A3A_fnc_createUnit;
	[_unit,_markerX] call A3A_fnc_NATOinit;

	_unit moveInGunner _veh;

	_soldiers pushBack _unit;
	_vehiclesX pushBack _veh;

	[_veh, _sideX] call A3A_fnc_AIVEHinit;
	sleep 1;

	{
		private _relativePosition = [_mortarPos, 4, _x] call BIS_fnc_relPos;
		private _sandbag = createVehicle [_faction get "sandbagRound", _relativePosition, [], 0, "CAN_COLLIDE"];
		_sandbag setDir ([_sandbag, _mortarPos] call BIS_fnc_dirTo);
		_sandbag setVectorUp surfaceNormal position _sandbag;
		_props pushBack _sandbag;
	} forEach [0, 90, 180, 270];
};

private _ret = [_markerX,_size,_sideX,_frontierX] call A3A_fnc_milBuildings;

_groups pushBack (_ret select 0);
_vehiclesX append (_ret select 1);
_soldiers append (_ret select 2);

{[_x, _sideX] call A3A_fnc_AIVEHinit} forEach (_ret select 1);

if(random 100 < (50 + tierWar * 3)) then {
	_large = (random 100 < (40 + tierWar * 2));
	[_markerX, _large] spawn A3A_fnc_placeIntel;
};

private _typeVehX = _faction get "flag";
private _flagX = createVehicle [_typeVehX, _positionX, [],0, "NONE"];

_flagX allowDamage false;
[_flagX,"take"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_flagX];

_vehiclesX pushBack _flagX;
if (flagTexture _flagX != (_faction get "flagTexture")) then {[_flagX,(_faction get "flagTexture")] remoteExec ["setFlagTexture",_flagX]};


private _fnc_createAmmobox = {
	private _ammoBoxType = _faction get "ammobox";
	private _ammoBox = [_ammoBoxType, _positionX, 15, 5, true] call A3A_fnc_safeVehicleSpawn;
	// Otherwise when destroyed, ammoboxes sink 100m underground and are never cleared up
	_ammoBox addEventHandler ["Killed", { [_this#0] spawn { sleep 10; deleteVehicle (_this#0) } }];
	[_ammoBox] spawn A3A_fnc_fillLootCrate;
	[_ammoBox] call A3A_Logistics_fnc_addLoadAction;

	_ammoBox;
};

private _ammobox1 = nil;
private _ammobox2 = nil;

// Only create ammoBox if it's been recharged (see reinforcementsAI)
if (garrison getVariable [_markerX + "_lootCD", 0] == 0) then {
	_ammobox1 = call _fnc_createAmmobox;
	_ammobox2 = call _fnc_createAmmobox;
};

if (!_busy) then {
	for "_i" from 1 to (round (random [1,2,3])) do {
		private _arrayVehAAF = ((_faction get "vehiclesAPCs") + (_faction get "vehiclesLightAPCs") + (_faction get "vehiclesTanks") + (_faction get "vehiclesLightTanks")) select {
			[_x] call A3A_fnc_vehAvailable
		};
		private _spawnParameter = [_markerX, "Vehicle"] call A3A_fnc_findSpawnPosition;
		if (count _arrayVehAAF > 0 && {_spawnParameter isEqualType []}) then
		{
			_veh = createVehicle [selectRandom _arrayVehAAF, (_spawnParameter select 0), [], 0, "CAN_COLLIDE"];
			_veh setDir (_spawnParameter select 1);
			_veh setFuel 0;
			_vehiclesX pushBack _veh;
			[_veh, _sideX] call A3A_fnc_AIVEHinit;
			_nVeh = _nVeh -1;
			sleep 1;
		};
	};
};

private _arrayVehAAF = 
	(_faction get "vehiclesLightArmed") + 
	(_faction get "vehiclesLightUnarmed") + 
	(_faction get "vehiclesTrucks") + 
	(_faction get "vehiclesAmmoTrucks") + 
	(_faction get "vehiclesRepairTrucks") + 
	(_faction get "vehiclesFuelTrucks") + 
	(_faction get "vehiclesMedical");
_countX = 0;

while {_countX < _nVeh && {_countX < 3}} do {
	private _typeVehX = selectRandom _arrayVehAAF;
	private _spawnParameter = [_markerX, "Vehicle"] call A3A_fnc_findSpawnPosition;
	if(_spawnParameter isEqualType []) then
	{
		_veh = createVehicle [_typeVehX, (_spawnParameter select 0), [], 0, "NONE"];
		_veh setDir (_spawnParameter select 1);
		_vehiclesX pushBack _veh;
		[_veh, _sideX] call A3A_fnc_AIVEHinit;
		sleep 1;
		_countX = _countX + 1;
	}
	else
	{
		//No further spaces to spawn vehicle
		_countX = _nVeh;
	};
};

{ _x setVariable ["originalPos", getPos _x] } forEach _vehiclesX;

private _array = [];
private _subArray = [];
_countX = 0;
_radiusX = _radiusX -1;
while {_countX <= _radiusX} do {
	_array pushBack (_garrison select [_countX,7]);
	_countX = _countX + 8;
};
for "_i" from 0 to (count _array - 1) do {
	private _groupX = if (_i == 0) then {
		[_positionX, _sideX, (_array select _i), true, false] call A3A_fnc_spawnGroup;
	} else {
		private _spawnPosition = [_positionX, 50, 100, 5, 0, -1, 0] call A3A_fnc_getSafePos;
		[_spawnPosition, _sideX, (_array select _i), false, true] call A3A_fnc_spawnGroup;
		};
	_groups pushBack _groupX;
	{
		[_x, _markerX] call A3A_fnc_NATOinit; 
		_soldiers pushBack _x;
	} forEach units _groupX;
	if (_i == 0) then {
		// Sets first loop as garrison, returns additional defense groups if not enough positions found.
		private _additionalGroups = [_groupX, getMarkerPos _markerX, _size] call A3A_fnc_patrolGroupGarrison;
		_groups append _additionalGroups;
	} else {
		[_groupX, "Patrol_Defend", 0, 200, -1, true, _positionX, false] call A3A_fnc_patrolLoop;
	};
};

["locationSpawned", [_markerX, "Milbase", true]] call EFUNC(Events,triggerEvent);


waitUntil {sleep 1; (spawner getVariable _markerX == 2)};

[_markerX] call A3A_fnc_freeSpawnPositions;

deleteMarker _mrk;
{ if (alive _x) then { deleteVehicle _x } } forEach _soldiers;
{ deleteGroup _x } forEach _groups;

{
	// delete all vehicles that haven't been stolen
	if (_x getVariable ["ownerSide", _sideX] == _sideX) then {
		if (_x distance2d (_x getVariable "originalPos") < 100) then { deleteVehicle _x }
		else { if !(_x isKindOf "StaticWeapon") then { [_x] spawn A3A_fnc_VEHdespawner } };
	};
} forEach _vehiclesX;

{ deleteVehicle _x } forEach _props;
{ deleteVehicle _x } forEach _dogs;

// If loot crate was stolen, set the cooldown
if (!isNil "_ammoBox1") then {
	if ((alive _ammoBox1) and (_ammoBox1 distance2d _positionX < 100)) exitWith { deleteVehicle _ammoBox1 };
	if (alive _ammoBox1) then { [_ammoBox1] spawn A3A_fnc_VEHdespawner };
	private _lootCD = 120*16 / ([_markerX] call A3A_fnc_garrisonSize);
	garrison setVariable [_markerX + "_lootCD", _lootCD, true];
};
if (!isNil "_ammoBox2") then {
	if ((alive _ammoBox2) and (_ammoBox2 distance2d _positionX < 100)) exitWith { deleteVehicle _ammoBox2 };
	if (alive _ammoBox2) then { [_ammoBox2] spawn A3A_fnc_VEHdespawner };
	private _lootCD = 120*16 / ([_markerX] call A3A_fnc_garrisonSize);
	garrison setVariable [_markerX + "_lootCD", _lootCD, true];
};

["locationSpawned", [_markerX, "Milbase", false]] call EFUNC(Events,triggerEvent);

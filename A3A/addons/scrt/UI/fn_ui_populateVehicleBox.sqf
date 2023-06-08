private _buyableVehiclesList = [];

// Add civ vehicles to the list
private _civilianVehicles = 
        (A3A_faction_reb get 'vehiclesCivCar') +
        (A3A_faction_reb get 'vehiclesCivTruck') +
        (A3A_faction_reb get 'vehiclesCivHeli') +
        (A3A_faction_reb get 'vehiclesCivPlane') +
        (A3A_faction_reb get 'vehiclesCivBoat');

    {
        private _vehiclePrice = [_x] call A3A_fnc_vehiclePrice;
        _buyableVehiclesList pushBack [_x, _vehiclePrice, true];
    } forEach _civilianVehicles;

// Add military vehicles to the list
private _militaryVehicles = 
        (A3A_faction_reb get 'vehiclesBasic') +
        (A3A_faction_reb get 'vehiclesLightUnarmed') +
        (A3A_faction_reb get 'vehiclesTruck') +
        (A3A_faction_reb get 'vehiclesLightArmed') +
        (A3A_faction_reb get 'vehiclesMedical') +
        (A3A_faction_reb get 'vehiclesAA') +
        (A3A_faction_reb get 'vehiclesBoat') +
        (A3A_faction_reb get 'vehiclesPlane') + 
        (A3A_faction_reb get 'staticMGs') +
        (A3A_faction_reb get 'staticMortars') +
        (A3A_faction_reb get 'staticAT') +
        (A3A_faction_reb get 'staticAA');

    {
        private _vehiclePrice = [_x] call A3A_fnc_vehiclePrice;
        _buyableVehiclesList pushBack [_x, _vehiclePrice, false];
    } forEach _militaryVehicles;

_buyableVehiclesList;
player addAction ["Disable AI prone", {   { _x disableAI "MOVE"; } forEach allUnits;   hint "AI prone movement disabled.";}];
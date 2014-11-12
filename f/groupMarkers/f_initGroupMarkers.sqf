
// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
_unitfaction = "";
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};

// ====================================================================================
// init

f_grpMkr_groups = [];
f_grpMkr_data = [];
f_grpMkr_id = 0;
f_grpMkr_drawmap = compile preprocessFileLineNumbers "f\groupMarkers\fn_drawGroupMarker.sqf";
f_grpMkr_addGroup = compile preprocessFileLineNumbers "f\groupMarkers\f_addGroupMarker.sqf";
f_grpMkr_getStyle = compile preprocessFileLineNumbers "f\groupMarkers\fn_getStyle.sqf";
// ====================================================================================
// add the handlers to catch the map.
[] spawn {
	if(isServer) then
	{
		waitUntil {!isNull (findDisplay 52)};
		 ((findDisplay 52) displayctrl 51) ctrlAddEventHandler ["draw",{_this call f_grpMkr_drawmap}];

	}
	else
	{
		waitUntil {!isNull (findDisplay 53)};
		 ((findDisplay 53) displayctrl 51) ctrlAddEventHandler ["draw",{_this call f_grpMkr_drawmap}];
	};
};
[] spawn {
	waitUntil {!isNull (findDisplay 12)};
	((findDisplay 12) displayctrl 51) ctrlAddEventHandler ["draw",{_this call f_grpMkr_drawmap}];
};

// ====================================================================================
// run for each team

{
	if(faction (leader _x) == _unitfaction) then
	{
		_name = ([groupID _x," "] call BIS_fnc_splitString) select 1;
		_style = [_name] call f_grpMkr_getStyle;
		if((_style select 0) != "") then
		{
			[_x, _name,  _style select 0,_style select 1] call f_grpMkr_addGroup;
		};
	}
} foreach allGroups;

// ====================================================================================
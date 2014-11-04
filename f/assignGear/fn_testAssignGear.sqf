// F3 - F3 Folk ARPS Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
_unit = _this select 0;
_loadout = _this select 1;
_faction = tolower (faction _unit);
_path = missionConfigFile >> "CfgLoadouts" >> _faction >> _loadout;
if(!isClass(_path)) exitWith {systemChat format ["No loadout called %1", _loadout]};

_uniforms = getArray(_path >> "uniform");
_vests = getArray(_path >> "vest");
_headgears = getArray(_path >> "headgear");
_backpack = getArray(_path >> "backpack");
_weapons = getArray(_path >> "weapons");
_launchers = getArray(_path >> "launchers");
_handguns = getArray(_path >> "handguns");
_magazines = getArray(_path >> "magazines");
_items = getArray(_path >> "items");
_linkedItems = getArray(_path >> "linkedItems");
_attachments = getArray(_path >> "attachments");


removeBackpack _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
removeAllItemsWithMagazines _unit;

// ====================================================================================
// Clothes
_unit forceAddUniform (_uniforms call BIS_fnc_selectRandom);
_unit addVest (_vests call BIS_fnc_selectRandom);
_unit addHeadgear (_headgears call BIS_fnc_selectRandom);
_unit addBackpack (_backpack call BIS_fnc_selectRandom);

// ====================================================================================
// Magazines
{
	_arr = [_x,":"] call BIS_fnc_splitString;
	_classname = _arr select 0;
	_amt = 1;
	if(count _arr > 1) then
	{
		_amt = parseNumber (_arr select 1);
	};
	_unit addMagazines [_classname,_amt];
} foreach _magazines;
// ====================================================================================
// Items
{
	_arr = [_x,":"] call BIS_fnc_splitString;
	_classname = _arr select 0;
	_amt = 1;
	if(count _arr > 1) then
	{
		_amt = parseNumber (_arr select 1);
	};
	for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
		_unit additem _classname;
	};
} foreach _items;
{
	_arr = [_x,":"] call BIS_fnc_splitString;
	_classname = _arr select 0;
	_amt = 1;
	if(count _arr > 1) then
	{
		_amt = parseNumber (_arr select 1);
	};
	for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
		_unit linkItem _classname;
	};
} foreach _linkedItems;

// ====================================================================================
// Weapons
_unit addWeapon (_weapons call BIS_fnc_selectRandom);
_unit addWeapon (_launchers call BIS_fnc_selectRandom);
_unit addWeapon (_handguns call BIS_fnc_selectRandom);

// ====================================================================================
// attachments
{
	_arr = [_x,":"] call BIS_fnc_splitString;
	_classname = _arr select 0;
	_amt = 1;
	if(count _arr > 1) then
	{
		_amt = parseNumber (_arr select 1);
	};
	for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
		_unit addPrimaryWeaponItem _classname;
		_unit addSecondaryWeaponItem _classname;
		_unit addHandgunItem _classname;
	};
} foreach _attachments;
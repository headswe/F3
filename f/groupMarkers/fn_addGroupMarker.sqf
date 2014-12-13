private ["_entity","_text","_texture","_color","_time","_myId","_pos","_data"];
// F3 - GroupMarkers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
/*
	Find Group Marker id via group,unit or empty groups
	Paramaters
		0: Group,Object,String
		1: String : Text
		2: String : Texture
		3: RGBA array : Color
		4: [Num,Num] : Size
		5: Number : Replace ID
	Returns
		Return set id, -1 if not set.
*/
// ====================================================================================

_entity = _this select 0;
_text = _this select 1;
_texture = _this select 2;
_color = _this select 3;
_size = _this select 4;
_time = 0;

// ====================================================================================

if(typeName _entity == "STRING" && {isNil _entity}) exitWith {};
if(typeName _entity == "STRING") then
{
	_entity = call compile format ["%1",_entity];
};
if(isNil "_entity") exitWith {};
_myId = -1;

// ====================================================================================

if(count _this > 5) then
{
	_myId = _this select 5;
	if(count f_grpMkr_groups > _myId) then
	{
		(f_grpMkr_groups select _myId) setVariable ["f_grpMkr_id",nil];
	};
}
else
{
	_myId = f_grpMkr_id;
	f_grpMkr_id = f_grpMkr_id +1;
};

// ====================================================================================
if(_myId != -1) then
{
	_entity setVariable ["f_grpMkr_id",_myId];
	_pos = [0,0,0];
	if(typeName _entity == "GROUP") then {_pos = getpos leader _entity};
	if(typeName _entity == "OBJECT") then {_pos = getpos _entity};
	_data = [_entity,_text,_texture,_color,_size,_pos,_time];
	f_grpMkr_groups set [_myId,_entity];
	f_grpMkr_data set [_myId,_data];
};
_myId;

// ====================================================================================
// data values
_red = [1,0,0,1];
_green = [0,1,0,1];
_blue = [0,0,1,1];
_yellow = [1,1,0,1];
_oranage = [1,0.647,0,1];
_black = [0,0,0,1];
_pink = [1,0.753,0.796,1];
_white = [1,1,1,1];
_fireteam = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
_med = "\A3\ui_f\data\map\markers\nato\b_med.paa";
_hq = "\A3\ui_f\data\map\markers\nato\b_hq.paa";

// ====================================================================================

_input = _this select 0;
_texture = "";
_color = [1,1,1,1];
switch (_input) do {
    case "CO": {
    	_texture = _hq;
    	_color = _yellow;
    };
    case "DC": {
    	_texture = _hq;
    	_color = _yellow;
    };
    case "ASL":
    {
    	_texture = _hq;
    	_color = _red;
	};
    case "A1":
    {
    	_texture = _fireteam;
    	_color = _red;
	};
    case "A2":
    {
    	_texture = _fireteam;
    	_color = _red;
	};
    case "A3":
    {
    	_texture = _fireteam;
    	_color = _red;
	};
    case "BSL":
    {
    	_texture = _hq;
    	_color = _blue;
	};
    case "B1":
    {
    	_texture = _fireteam;
    	_color = _blue;
	};
    case "B2":
    {
    	_texture = _fireteam;
    	_color = _blue;
	};
    case "B3":
    {
    	_texture = _fireteam;
    	_color = _blue;
	};
    case "CSL":
    {
    	_texture = _hq;
    	_color = _green;
	};
    case "C1":
    {
    	_texture = _fireteam;
    	_color = _green;
	};
    case "C2":
    {
    	_texture = _fireteam;
    	_color = _green;
	};
    case "C3":
    {
    	_texture = _fireteam;
    	_color = _green;
	};
};
[_texture,_color];
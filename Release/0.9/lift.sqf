//////////////////////////////////////////////////////////////////
// File  : main.sqf
// Lang  : iso::std Script Language sqf
// Info  : Init for Cargo lift/drop Script
// Author: 7xCore
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//define private Vars
private ["_abstand_bwg1_player","_ac2"];
//////////////////////////////////////////////////////////////////
//File
fnc_dist = {
	private["_param_obj1","_param_obj2","_return"];
	_param_obj1 = _this select 0;
	_param_obj2 = _this select 1;
	
	_return = _param_obj1 distance _param_obj2;
	
	_return
};

if ( ([player,bwg1] call fnc_dist) < 3 && !lifted) then
{ 
	_ac2 = bwg1 addAction["Tragen","CS\Source\lift.sqf"];
};

if ( lifted ) then 
{
	_ac2 = bwg1 addAction["Abstellen","CS\Source\drop.sqf"];
};

execVM "CS\main_lift.sqf"; 
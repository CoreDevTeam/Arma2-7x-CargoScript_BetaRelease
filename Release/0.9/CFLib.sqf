//////////////////////////////////////////////////////////////////
// File  : Core Function Lib.sqf
// Lang  : iso::std Script Language sqf
// Info  : Usefull function collection
// Author: 7xCore
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//define private Vars
private [];
//////////////////////////////////////////////////////////////////
//File

fnc_inCargo = 
{
	private["_param_obj","_return"];
	
	_param_obj = _this select 0;
	
	if ( _param_obj in Cargo ) then 
	{
		_return = true;
	}
	else { _return = false; };
	
	_return
};

fnc_isLifted = 
{
	private["_param_obj","_return"];
	
	_param_obj = _this select 0;
	
	if ( _param_obj in Carry ) then 
	{
		_return = true;
	}
	else { _return = false; };
	
	_return
};
//////////////////////////////////////////////////////////////////
// File  : Engine.sqf
// Lang  : iso::std Script Language sqf
// Info  : Entry Point
// Author: 7xCore
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//define private Vars
private ["_debug"];
//////////////////////////////////////////////////////////////////
//define public Vars
Cargo = [0,0,0];
Carry = [0,0,0];
ac1 = 0;
ac2 = 0;
ac3 = 0;
ac11 = 0;
ac22 = 0;
ac33 = 0;
hasAction1 = false;
hasAction2 = false;
hasAction3 = false;
hasAction11 = false;
hasAction22 = false;
hasAction33 = false;
//////////////////////////////////////////////////////////////////
// init Vars
_debug = true; //by default
//////////////////////////////////////////////////////////////////
//File

if ( _debug ) then 
{
	hintC "7xCargo Script is setting up and starts to run";
};

publicVariable "Cargo";
publicVariable "Carry";
publicVariable "ac1";
publicVariable "ac2";
publicVariable "ac3";
publicVariable "ac11";
publicVariable "ac22";
publicVariable "ac33";
publicVariable "hasAction1";
publicVariable "hasAction2";
publicVariable "hasAction3";
publicVariable "hasAction11";
publicVariable "hasAction22";
publicVariable "hasAction33";
execVM "CS\cargo.sqf";

//execVM "CS\lift.sqf";
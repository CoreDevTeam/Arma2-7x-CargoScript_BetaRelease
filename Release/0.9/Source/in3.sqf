//////////////////////////////////////////////////////////////////
// File  : in.sqf
// Lang  : iso::std Script Language sqf
// Info  : put obj into cargo
// Author: 7xCore
//////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//define private Vars
private ["_objekt","_id"];
//////////////////////////////////////////////////////////////////
//File

_objekt = _this select 0;
_id = _this select 2;

_objekt removeAction ac3;

bwg3 attachTo [lkw1,[0,-0.1,0]];

Cargo set [0,bwg3];

publicVariable "Cargo";
publicVariable "ac3";
execVM "CS\cargo.sqf";
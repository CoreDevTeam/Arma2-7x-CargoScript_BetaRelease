//////////////////////////////////////////////////////////////////
// File  : main.sqf
// Lang  : iso::std Script Language sqf
// Info  : Init for Cargo lift/drop Script
// Author: 7xCore
//////////////////////////////////////////////////////////////////
//define private Vars
fnc_inCargo = compile preprocessFileLineNumbers "CS\lib\fnc_inCargo.sqf"; 
//////////////////////////////////////////////////////////////////
//define private Vars
private ["_bwg1_lkw1","_bwg2_lkw1","_bwg3_lkw1","_bwg1_player","_bwg2_player","_bwg3_player","_lkw1_player"];

//////////////////////////////////////////////////////////////////
//File

_bwg1_lkw1 = bwg1 distance lkw1;
_bwg2_lkw1 = bwg2 distance lkw1;
_bwg3_lkw1 = bwg3 distance lkw1;

_bwg1_player = player distance bwg1;
_bwg2_player = player distance bwg2;
_bwg3_player = player distance bwg3;

_lkw1_player = player distance lkw1;

_isInCargo1 = [bwg1] call fnc_inCargo;
_isInCargo2 = [bwg2] call fnc_inCargo;
_isInCargo3 = [bwg3] call fnc_inCargo;

//////////////////////////////////////////////////////////////////
// 1 Einladen
if ( _bwg1_lkw1 < 5 and _bwg1_player < 3 and !_isInCargo1 and !hasAction1) then 
{
	ac1 = bwg1 addAction["Einladen","CS\Source\in.sqf"];
	hasAction1 = true;
	
	publicVariable "ac1";
	publicVariable "hasAction1";
};

if ( _bwg1_lkw1 > 5 and _bwg1_player > 3 ) then 
{	
	bwg1 removeAction ac1;
	hasAction1 = false;
	publicVariable "hasAction1";
};

//////////////////////////////////////////////////////////////////
// 2 Einladen
if ( _bwg2_lkw1 < 5 and _bwg2_player < 3 and !_isInCargo2 and !hasAction2 ) then 
{
	ac2 = bwg2 addAction["Einladen","CS\Source\in2.sqf"];
	hasAction2 = true;
	
	publicVariable "ac2";
	publicVariable "hasAction2";
};

if ( _bwg2_lkw1 > 5 and _bwg2_player > 3 ) then 
{	
	bwg2 removeAction ac2;
	hasAction2 = false;
	publicVariable "hasAction2";
};
//////////////////////////////////////////////////////////////////
// 3 Einladen
if ( _bwg3_lkw1 < 5 and _bwg3_player < 3 and !_isInCargo3 and !hasAction3) then 
{
	ac3 = bwg3 addAction["Einladen","CS\Source\in3.sqf"];
	hasAction3 = true;
	
	publicVariable "ac3";
	publicVariable "hasAction3";
};

if ( _bwg3_lkw1 > 5 and _bwg3_player > 3 ) then 
{	
	bwg3 removeAction ac3;
	hasAction3 = false;
	publicVariable "hasAction3";
};

//////////////////////////////////////////////////////////////////
// 1 Ausladen
if ( _isInCargo1 && !hasAction11 && _lkw1_player < 3) then 
{
	ac11 = lkw1 addAction["Ausladen","CS\Source\out.sqf"];
	hasAction11 = true;
	
	publicVariable "ac11";
	publicVariable "hasAction11";
};

if ( !_isInCargo1 && _lkw1_player > 3 ) then 
{	
	lkw1 removeAction ac11;
	hasAction11 = false;
	publicVariable "hasAction11";
};
//////////////////////////////////////////////////////////////////
// 2 Ausladen
if ( _isInCargo2 && !hasAction22 && _lkw1_player < 3) then 
{
	ac22 = lkw1 addAction["Ausladen","CS\Source\out2.sqf"];
	hasAction22 = true;
	
	publicVariable "ac22";
	publicVariable "hasAction22";
};

if ( !_isInCargo2 && _lkw1_player > 3 ) then 
{	
	lkw1 removeAction ac22;
	hasAction22 = false;
	publicVariable "hasAction22";
};
//////////////////////////////////////////////////////////////////
// 3 Ausladen
if ( _isInCargo3 && !hasAction33 && _lkw1_player < 3) then 
{
	ac33 = lkw1 addAction["Ausladen","CS\Source\out3.sqf"];
	hasAction33 = true;
	
	publicVariable "ac33";
	publicVariable "hasAction33";
};

if ( !_isInCargo3 && _lkw1_player > 3 ) then 
{	
	lkw1 removeAction ac33;
	hasAction33 = false;
	publicVariable "hasAction33";
};
execVM "CS\cargo.sqf";
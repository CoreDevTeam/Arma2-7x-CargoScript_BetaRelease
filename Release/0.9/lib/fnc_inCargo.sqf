private["_param_obj","_return"];
	
_param_obj = _this select 0;
	
if ( _param_obj in Cargo ) then 
{
	_return = true;
}
else { _return = false; };

_return
/// @desc list
/// @arg val...

var _l = ds_list_create();
for (var _i=argument_count-1;_i>=0;_i--) {
	_l[| _i] = argument[_i];
}
return _l;

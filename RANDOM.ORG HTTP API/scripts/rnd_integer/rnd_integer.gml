/// @desc rnd_integer
/// @arg num
/// @arg min
/// @arg max
/// @arg col
/// @arg base
/// @arg format
/// @arg rnd
var _list = global.__rnd_requests[| random_requests.integer];
var _url = _list[| 0];
_url += _list[| 1] + "=" + string(argument[0]) + "&";
_url += _list[| 2] + "=" + string(argument[1]) + "&";
_url += _list[| 3] + "=" + string(argument[2]) + "&";
_url += _list[| 4] + "=" + string(argument[3]) + "&";
_url += _list[| 5] + "=" + string(argument[4]) + "&";
_url += _list[| 6] + "=" + string(argument[5]) + "&";
_url += _list[| 7] + "=" + string(argument[6]);

return http_get(_url);

//list("https://www.random.org/integers/?","num","min","max","col","base","format","rnd");
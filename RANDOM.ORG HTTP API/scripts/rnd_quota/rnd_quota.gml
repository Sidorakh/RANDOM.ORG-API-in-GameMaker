/// @desc rnd_quota
/// @arg format
//list("https://www.random.org/quote/","format");

var _list = global.__rnd_requests[| random_requests.quota];
var _url = _list[| 0];
_url += _list[| 1] + "=" + string(argument[0]);

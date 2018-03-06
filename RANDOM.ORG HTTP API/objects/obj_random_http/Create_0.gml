/// @description 
/*

https://www.random.org/integers/?num=5&min=0&max=100&col=1&base=10&format=plain



*/
enum random_requests {
		integer,
		sequence,
		string,
		quota
}
global.__rnd_requests = ds_list_create();

global.__rnd_requests[| random_requests.integer] = list("https://www.random.org/integers/?","num","min","max","col","base","format","rnd");
global.__rnd_requests[| random_requests.sequence] = list("https://www.random.org/sequences/?","min","max","col","format","rnd");
global.__rnd_requests[| random_requests.string] = list("https://www.random.org/strings/?","num","len","digits","upperalpha","loweralpha","unique","format","rnd");
global.__rnd_requests[| random_requests.quota] = list("https://www.random.org/quote/?","format");

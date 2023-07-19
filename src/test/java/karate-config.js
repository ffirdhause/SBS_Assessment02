function fn(){

var config = {
	baseURL: "https://www.sbs.com.au/"
};


karate.configure('connectTimeout', 5000);
karate.configure('readTimeout', 5000);
return config;
}
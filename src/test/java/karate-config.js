function fn(){
	
	var config = {
		name : "Eduardo",
		baseURL : 'https://reqres.in/api'
	};
	
	
	// variaveis condicionais que altera a URL base.
	// foi comentado para os testes não falharem
	
/*	var env = karate.env
	karate.log('The value of env is:', env);
	
	if(env == 'qa'){
		config.baseURL = 'https://reqres.in/api/qa'
	} 
	else if (env == 'dev'){
		config.baseURL = 'https://reqres.in/api/dev'
	} 
	else {
		config.baseURL = 'https://reqres.in/api/'
	} */
	
	
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000)
	
	return config;
}
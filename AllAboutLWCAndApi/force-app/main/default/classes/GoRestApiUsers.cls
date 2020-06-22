public with sharing class GoRestApiUsers{
	@AuraEnabled
	public static Map<String, Object> getUsers(){
		//token expire every 24hrs, get it from gorest.co.in
		string url = 'https://gorest.co.in/public-api/users?access-token=le2KTrZfXc60xCNQveeBsVQ6bAzs0TnqHJuQ';
		HttpResponse res = HpptRequestService.getUsers(url, 'GET', 'le2KTrZfXc60xCNQveeBsVQ6bAzs0TnqHJuQ', null);
		Map<String, Object> result = (Map<String, Object>)JSON.deserializeUntyped(res.getBody());
		System.debug('result;' + result);
		return result;
	}

	// public static RestGoApiUsersObject getUsers(){
	//     //token expire every 24hrs, get it from gorest.co.in
	//     string url = 'https://gorest.co.in/public-api/users?access-token=le2KTrZfXc60xCNQveeBsVQ6bAzs0TnqHJuQ';
	//     HttpResponse res = HpptRequestService.getUsers(url, 'GET', 'le2KTrZfXc60xCNQveeBsVQ6bAzs0TnqHJuQ', null);
	//     Object result = JSON.deserializeUntyped(res.getBody());
	//     RestGoApiUsersObject go = (RestGoApiUsersObject)result;
	//     System.debug('result;' + go);
	//     return go;
	// }
}
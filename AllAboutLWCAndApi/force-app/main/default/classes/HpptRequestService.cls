public with sharing class HpptRequestService{
	public static HttpResponse getUsers(String endPoint, String method, String token){
		HttpRequestreq = new HttpRequest();
		req.setEndpoint(endPoint);
		req.setMethod(method);
		req.setHeader('Content-Type', 'application/json');
		Http http = new Http();
		HttpResponse res = http.send(req);
		return res;
	}
}
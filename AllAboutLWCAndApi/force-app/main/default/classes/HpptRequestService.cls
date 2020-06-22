public with sharing class HpptRequestService{
	public static HttpResponse getUsers(String endPoint, String httpMethod, String token, String body){
		HttpRequest req = new HttpRequest();
		req.setEndpoint(endPoint);
		req.setMethod(httpMethod);
		req.setHeader('Content-Type', 'application/json');
		if (String.isNotBlank(body)){
			req.setBody(body);
			req.setHeader('Content-Length', string.valueOf(body.length()));
		}
		Http http = new Http();
		HttpResponse res = http.send(req);
		return res;
	}
}
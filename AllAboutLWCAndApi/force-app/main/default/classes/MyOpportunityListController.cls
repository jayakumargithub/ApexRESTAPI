public with sharing class MyOpportunityListController{
	@AuraEnabled
	public static List<Opportunity> fetchOpportunities(string searchKey){


		List<Opportunity> returnList = new List<Opportunity>();
		string searchword = String.isBlank(searchKey) ? '%%' : searchKey + '%';
		return [SELECT Id, Name, Closedate
		        from Opportunity 
		        where Name like :searchword
		        LIMIT 15];
	}
}
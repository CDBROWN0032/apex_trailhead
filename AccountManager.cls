@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        string accId = request.requestURI.substringBetween('Accounts/' , '/contacts');

        Account result = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account 
                          WHERE Id = :accId];
        return result;
    }
}
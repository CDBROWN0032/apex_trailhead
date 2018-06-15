@isTest
private class AccountManagerTest {
	
    @isTest static void testGetAcctById() {
       	Id acctId = createTestRecord();
        string baseurl = url.getSalesforceBaseUrl().toExternalForm();
        RestRequest request = new RestRequest();
        request.requestURI = baseurl + '/services/data/v42.0/sobjects/Accounts/' + acctId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account testAcct = AccountManager.getAccount();
        system.assert(testAcct != null);
    }

	static Id createTestRecord() {
    	Account tAcct = new Account();
        tAcct.Name = 'Test';
        insert tAcct;
          
        return tAcct.Id;
	}
}
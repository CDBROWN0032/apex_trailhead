@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateNewAcctInBulk() {
        List<Account> accts = new List<Account>();
        for (integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i);
            acct.BillingState = 'CA';
            accts.add(acct);
        }
    	Test.startTest();
        insert accts;
        List<Account> verifyAccts = [SELECT Id FROM Account WHERE BillingState = 'CA'];
        System.assertEquals(200, verifyAccts.size());
    }
}
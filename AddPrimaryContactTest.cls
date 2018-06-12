@isTest
public class AddPrimaryContactTest {
    @isTest
    static void accountCreation() {
		List<Account> accList = new List<Account>();
    	for(integer i = 0; i < 100; i++) {
        	Account acc = new Account();
			acc.Name = 'TestName ' + i;
            if (i < 50) {
        		acc.BillingState = 'NY';
            } else {
                acc.BillingState = 'CA';
            }
        	accList.add(acc);
    	}
        insert accList;
		Contact c = new Contact(LastName = 'CA');    
        AddPrimaryContact apc = new AddPrimaryContact(c, 'CA');
        test.startTest();
        system.enqueueJob(apc);
        test.stopTest();
        List<Contact> conList = new List<Contact>([SELECT Id FROM Contact]);
        integer check = conList.size();
        system.assertEquals(50, check);
    }
}

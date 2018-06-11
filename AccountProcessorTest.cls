@isTest
public class AccountProcessorTest {
    @isTest static void accountTest() {
        Account acct = new Account(Name='AutomatedTest1');
        insert acct;
        
        Contact con = new Contact(
        FirstName = 'test',
        LastName = 'test',
        AccountId = acct.Id
        );
        insert con;
        
        List<Id> listId = new List<Id>();
        listId.add(acct.Id);
        
        test.startTest();
        AccountProcessor.countContacts(listId);
        test.stopTest();
        
       	Account result = [SELECT Number_Of_Contacts__c FROM Account 
                          WHERE Id = :acct.Id];
        system.assertEquals(integer.valueOf(result.Number_of_Contacts__c), 1);
    }
    
}
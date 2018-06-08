@isTest
public class TestRestrictContactByName {
    @isTest static void testValidName() {
        Contact c = new Contact(LastName='ValidName');
        insert c;
        Test.startTest();
        List<contact> verification = [SELECT LastName FROM Contact WHERE LastName=:c.LastName];
        Test.stopTest();
        integer verificationNumber = 1;
        integer resultNumber = verification.size();
        system.assertEquals(verificationNumber, resultNumber);
    }
    
    @isTest static void testNameInvalidName() {
        Contact c = new Contact(LastName='INVALIDNAME');
        try {
		insert c;
        } catch (DMLException e) {
            system.debug('Exception handled: ' + e);
        }
        Test.startTest();
        List<contact> verification = [SELECT LastName FROM Contact WHERE LastName=:c.LastName];
        Test.stopTest();
        integer verificationNumber = 0;
        integer resultNumber = verification.size();
        system.assertEquals(verificationNumber, resultNumber);
	}
}
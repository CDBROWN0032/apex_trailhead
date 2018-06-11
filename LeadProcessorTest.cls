@isTest
private class LeadProcessorTest {
    @testSetup 
    static void testSetupHere() {
        List<lead> testList = new List<lead>();
            Lead testLead = new Lead();
            testLead.FirstName = 'Testcase';
            testLead.LeadSource = 'Change Me';
            testLead.LastName = 'name';
            testLead.Company = 'XYZ';
            testList.add(testLead);
        insert testList;
    }
    
    @isTest
    static void theTest() {
        test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Database.executeBatch(lp,200);
        test.stopTest();
        List<lead> result = [SELECT LeadSource FROM Lead 
                    			WHERE LeadSource = 'DreamForce'];

        system.assertEquals(200, result.size());
    }
}
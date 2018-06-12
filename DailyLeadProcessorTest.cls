@isTest
private class DailyLeadProcessorTest {
	public static String CRON_EXP = '0 0 0 * * ? *';
    
    static testmethod void theTest(){
    	List<lead> insertList= new List<Lead>();
    	for(integer i = 0; i < 200; i++) {
        	Lead L = new Lead(LastName='Test'+i, Company='XYZ'+i);
        	insertList.add(L);
    }
    insert insertList;
        
    test.startTest();
    DailyLeadProcessor DLP = new DailyLeadProcessor();
    string jobId = system.schedule('ScheduledApexTest', CRON_EXP, DLP);
    test.stopTest();
    List<lead> check = [SELECT Id FROM Lead WHERE LeadSource = 'DreamForce'];
  	system.assertEquals(200, check.size());
   }
}

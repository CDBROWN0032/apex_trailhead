@isTest
public class TestVerifyDate {
    @isTest static void testCheckDatesfirst() {
        date date1 = Date.newInstance(2000,1,1);
        date date2 = Date.newInstance(2000,1,3);
        date methodResult = VerifyDate.CheckDates(date1, date2);
        system.assertEquals(date2, methodResult);
    }
    
     @isTest static void testCheckDatessSecond() {
     	date date1 = Date.newInstance(2000,1,31);
     	date date2 = Date.newInstance(2001,1,3);
     	date methodResult = VerifyDate.CheckDates(date1, date2);
     	system.assertEquals(date1, methodResult);
    }
    
    @isTest static void testDateWithin30Days() {
		date date1 = Date.newInstance(2000,1,31);
     	date date2 = Date.newInstance(2000,1,3);
        //boolean f = false;
        boolean methodResult = VerifyDate.DateWithin30Days(date1, date2);
		system.assertEquals(false, methodResult);        
    }
    
    @isTest static void testDateWithin30DaysTwo() {
        date date1 = Date.newInstance(2000,1,1);
        date date2 = date.newInstance(2000,3,1);
        boolean methodResult = VerifyDate.DateWithin30Days(date1, date2);
        system.assertEquals(false, methodResult);
    }
	
    @isTest static void testDateWithin30DaysThree() {
        date date1 = Date.newInstance(2000,1,1);
        date date2 = date.newInstance(2000,1,5);
        boolean methodResult = VerifyDate.DateWithin30Days(date1, date2);
        system.assertEquals(true, methodResult);
    }

    @isTest static void testSetEndOfMonthDate() {
        date date1 = Date.newInstance(2000,1,1);
        date expectedDate = Date.newInstance(2000,1,31);
        date methodResult = VerifyDate.SetEndOfMonthDate(date1);
        system.assertEquals(expectedDate, methodResult);
    }    
    
	@isTest static void testSetEndOfMonthDateTwo() {
        date date1 = Date.newInstance(2000,2,1);
        date expectedDate = Date.newInstance(2000,2,29);
        date methodResult = VerifyDate.SetEndOfMonthDate(date1);
        system.assertEquals(expectedDate, methodResult);
    }
    
	@isTest static void testSetEndOfMonthDateThree() {
        date date1 = Date.newInstance(2000,4,1);
        date expectedDate = Date.newInstance(2000,4,30);
        date methodResult = VerifyDate.SetEndOfMonthDate(date1);
        system.assertEquals(expectedDate, methodResult);
    }
	
	@isTest static void testSetEndOfMonthDateFour() {
        date date1 = Date.newInstance(2000,4,15);
        date expectedDate = Date.newInstance(2000,4,30);
        date methodResult = VerifyDate.SetEndOfMonthDate(date1);
        system.assertEquals(expectedDate, methodResult);
    }    
}
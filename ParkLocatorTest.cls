
private class ParkLocatorTest {
    @isTest static void testCallout() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        //Test.setMock(parkService.class, new ParkServiceMock());
        List<String> result = new List<String>();
        result = ParkLocator.country('India');
        System.assertEquals(3, result.size()); 
    }
}
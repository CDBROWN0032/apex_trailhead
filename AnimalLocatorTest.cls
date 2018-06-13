@isTest
private class AnimalLocatorTest {
    @isTest static void AnimalLocatorMock() {
        test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(1);
		system.assertEquals('chicken', result);
    }
}



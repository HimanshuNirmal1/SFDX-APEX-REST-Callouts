@isTest

private class AnimalLocatorTest{
    @isTest static void getAnimalNameByIdTest(){
        //Set Mock Callout Class
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        String response = AnimalLocator.getAnimalNameById(1);

        System.assertEquals('chicken', response);
    }
}
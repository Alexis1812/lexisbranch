@isTest
private class FIELO_ContactTriggerHandlerTest {
	
    @isTest
    static void createContact(){
        
        Test.startTest();
    	Contact contact1 = new Contact();
        contact1.Email = 'contact@mail.com';
        contact1.FirstName = 'Contact';
        contact1.LastName = 'Test';
        insert contact1;
        Test.stopTest();
        
        Contact contactWithFieldUpdated = [SELECT Id, FirstName FROM Contact WHERE Id =: contact1.Id LIMIT 1][0];
        String firstNameExpected = 'Contact UPDATED';
        System.assertEquals(firstNameExpected, contactWithFieldUpdated.FirstName);
    }
}
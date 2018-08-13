public class FIELO_ContactTriggerHandler {
    public static void fillContactField(){
        for(Contact c : (List<Contact>)Trigger.new){
            c.FirstName = 'Contact UPDATED';
        }
    }
}
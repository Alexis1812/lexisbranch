trigger FIELO_ContactTrigger on Contact (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        FIELO_ContactTriggerHandler.fillContactField();
    }
}
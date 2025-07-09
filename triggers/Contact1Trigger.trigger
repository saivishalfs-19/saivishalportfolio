trigger Contact1Trigger on Contact (before insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        ContactTriggerHandler.populateAccountName(Trigger.new);
    }

}
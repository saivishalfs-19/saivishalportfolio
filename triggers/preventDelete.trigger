trigger preventDelete on Account (before delete) {
    Set<Id> AcSet = new Set<Id>();

    if (Trigger.isBefore && Trigger.isDelete) {
        for (Account acc : Trigger.old) {
            AcSet.add(acc.Id);
        }

        List<Account> associatedContactList = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id IN :AcSet];
        for (Account acc : associatedContactList) {
            if (acc.Contacts.size() > 0) {
                acc.addError('You cannot delete this account because it has associated contacts.');
            }
        }
    }
}
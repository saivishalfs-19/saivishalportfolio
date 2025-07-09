public class ContactTriggerHandler {
    public static void populateAccountName(List<Contact> contacts) {
        
        Set<Id> accountIds = new Set<Id>();
        for (Contact con : contacts) {
            if (con.AccountId != null) {
                accountIds.add(con.AccountId);
            }
        }

        Map<Id, Account> accountMap = new Map<Id, Account>(
            [SELECT Id, Name FROM Account WHERE Id IN :accountIds]
        );

        for (Contact con : contacts) {
            if (con.AccountId != null && accountMap.containsKey(con.AccountId)) {
                con.Account_Name__c = accountMap.get(con.AccountId).Name;
            }
        }
    }
}
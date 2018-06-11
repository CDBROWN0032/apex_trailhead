public class AccountProcessor {
    @future(callout = true)
    public static void countContacts(List<Id> theIds) {
        List<Contact> searchResult = [SELECT Id FROM Contact 
                                      WHERE AccountId = :theIds];
        Account updateAccount = [SELECT Id FROM Account 
                                 WHERE Id = :theIds LIMIT 1];
        updateAccount.Number_of_Contacts__c = searchResult.size();
        update updateAccount;
    }
}
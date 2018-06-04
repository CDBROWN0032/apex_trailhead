public class ContactSearch {
    public static List<Contact> searchForContacts(string lastNameInput, string zipCodeInput) {
        string lastName = lastNameInput; //LastName
        string zipCode = zipCodeInput; //MailingPostalCode
        List<Contact> conList = [SELECT ID,Name from Contact 
                                  WHERE LastName=:lastName 
                                  AND MailingPostalCode=:zipCode]; //return ID and Name
        return conList;
    }
}
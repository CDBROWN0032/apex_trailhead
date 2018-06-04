public class ContactandLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string name) {
        List<List<sObject>> searchList = [FIND :name RETURNING Lead(FirstName,LastName),
                                          			Contact(FirstName,LastName)];
        return searchList;
    }
}
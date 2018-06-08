public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer count, string inputName) {
        List<Contact> conList = new List<Contact>();
        for(integer i=0; i<count; i++) {
            Contact c = new Contact();
            c.FirstName = 'TestName' + i;
        	c.LastName = inputName;
            conList.add(c);
        }
        return conList;
    }
}
public class AddPrimaryContact implements Queueable {

    private Contact c;
    private string state;
    
    public AddPrimaryContact(Contact contact, string state) {
        this.c = contact;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Account> acctList = new List<Account>([SELECT Id, Name, BillingState FROM Account 
                                                    WHERE BillingState = :this.state 
                                                    LIMIT 200]);
        List<Contact> conList = new List<Contact>();
        for(Account a : acctList) {
            Contact c = new Contact();
            c = this.c.clone(false,false,false,false);
            c.AccountId = a.Id;
            conList.add(c);
        }
        insert conList;
        
}
    
    //query up to 200 accts w/ billing state specified by the state abbreviation passed into constructor
    //insert the Contact record associated to each account. (sObject Clone).
        
       
    
}
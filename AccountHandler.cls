public class AccountHandler {
    public static Account insertNewAccount(string inputName) {
    	Account acct = new Account(Name=inputName);
        try {
			insert acct;
        } catch (DmlException e) {
			return null;
        }
	return acct;
	}
}
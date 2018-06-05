public class AccountUtils {
    public static List<Account> accountsByState(string stateInput) {
        List<Account> stateReturn = new List<Account>();
        stateReturn = [SELECT Id, Name FROM Account
                       WHERE BillingState = :stateInput];
        return stateReturn;
    }
}
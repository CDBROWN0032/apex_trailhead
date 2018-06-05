public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> inputAccts) {
        for(Account a:inputAccts) {
            if(a.ShippingState != a.BillingState) {
                a.ShippingState = a.BillingState;
            }
        }
      
    }
}
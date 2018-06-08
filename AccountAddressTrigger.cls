trigger AccountAddressTrigger on Account (before insert, before update) {
    For(Account a : Trigger.new){
        if(a.Match_Billing_Address__c == true && a.BillingPostalCode!=null) {
            a.ShippingPostalCode = a.BillingPostalCode;
            system.debug('Billing post code changed to match Shipping postal code');
        }
    }
}
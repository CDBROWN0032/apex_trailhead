trigger HelloWorldTrigger on Account (before insert) {
    for (Account a : Trigger.New) {
        a.description = 'New Account';
    }
}
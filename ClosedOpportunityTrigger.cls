trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Opportunity> oppList = new List<Opportunity>(Trigger.new);
    List<Task> tLIst = new List<Task>();
    for(Opportunity o : oppList) {
        if(o.StageName == 'Closed Won') {
            Task t = new Task(
            Subject = 'Follow Up Test Task',
            WhatId = o.Id
            );
            tList.add(t);
        }
	}
    insert tList;
}
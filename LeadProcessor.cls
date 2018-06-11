global class LeadProcessor implements Database.Batchable<SObject> {
	
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, LeadSource FROM Lead');
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope) {
        for(Lead lead : scope) {
            lead.LeadSource = 'DreamForce';
        }
		update scope;
    }
    
    global void finish(Database.BatchableContext bc) {
	}
}
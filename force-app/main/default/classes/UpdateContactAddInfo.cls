global class UpdateContactAddInfo Implements Database.Batchable<sObject>{
    global database.QueryLocator start(database.batchableCONTEXT bc){
        return database.getQueryLocator('select id, BillingStreet, BillingCity, BillingState,billingPostalCOde,(select id,maillingstreet, maillingcity,maillingstate, maillingpostalCode from contacts)from Account where billingstate=\'TX\'');
    }
    global void execute(database.batchablecontext bc, list<account> acc){
        
    }
    global void finish(database.batchablecontext bc){
        
    }
}
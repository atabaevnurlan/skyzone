public class MyFirstBatchApexClass implements Database.Batchable<sObject> {
    Public Date startDate;
    Public Date endDate;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('Select Id, createdDate From Account where createddate >: startDate and createddate <: enddate');
        // collect the batches of records or objects to be passed to execute
    }
    public void execute(Database.BatchableContext bc, List<Account> ACCRecords){
        delete ACCRecords ;
        // process each batch of records
    }
    public void finish(Database.BatchableContext bc){
        
        // execute any post-processing operations
    }
}
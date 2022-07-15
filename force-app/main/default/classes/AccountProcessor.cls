public without sharing class AccountProcessor {
    @future
    public static void countContacts(list<Id> accountId){
        list<account> acc = [SELECT Id, (select Id from contacts)from account where Id IN:accountId];
        for(account ac:acc){
            ac.Number_of_Contacts__c= ac.contacts.size();            
        }
        update acc;
    }
}
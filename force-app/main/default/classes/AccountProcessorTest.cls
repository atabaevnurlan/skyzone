@isTest
private class AccountProcessorTest {
@isTest
    private static void countContactsTest(){
        //load test data
        List<Account> acc=new list<Account>();
        for(integer i=0; i<300; i++) {
            acc.add(new account(name='Test Account ' + i));
        }
        insert acc;
        list<Contact> con= new list<Contact>();
        List<Id>accountIds=new list<id>();
        for(Account ac:acc){
            con.add(new Contact(FirstName=ac.Name, LastName='Test Contact', AccountId=ac.Id));
            accountIds.add(ac.Id);
        }
        insert con;       
        //do the test
        test.startTest();
        AccountProcessor.countContacts(accountIds);
        test.stopTest();
        //check result
        List<Account> accs = [select Id, Number_of_Contacts__c FROM Account];
        for(Account ac:accs){
            system.assertEquals(1, ac.Number_Of_Contacts__c, 'ERROR: At least 1 Account record with incorrect Contact count');
        }
    }
}
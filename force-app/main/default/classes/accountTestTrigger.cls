@isTest
public class accountTestTrigger {
@isTest
    public static void triggerTask(){
        account acc1=new account();
        acc1.name='Mers';
        acc1.BillingStreet='Molod gvar';
        acc1.BillingCity='bish';
        acc1.BillingState='CHUI';
        acc1.BillingCountry='kg';
        acc1.BillingPostalCode='23425346';
        
        test.startTest();
        insert acc1;
        test.stopTest();
        
        account acc2 = [Select Id, Name, ShippingStreet, ShippingCity, ShippingState, ShippingPostalCode, ShippingCountry From Account Where Id=:acc1.Id];
        System.assertEquals(acc1.BillingStreet, acc2.ShippingStreet);
        System.assertEquals(acc1.BillingCity, acc2.ShippingCity);
        System.assertEquals(acc1.BillingState, acc2.ShippingState);
        System.assertEquals(acc1.BillingCountry, acc2.ShippingCountry);
        System.assertEquals(acc1.BillingPostalCode, acc2.ShippingPostalCode);
        
    }
}
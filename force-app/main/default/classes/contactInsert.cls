@isTest
public class contactInsert {
@isTest
    public static void conin(){
        contact con=new contact();
        con.Description='Contact created successfully by using ContactBeforeInsert trigger';
        con.LastName='nick';
        
        test.StartTest();
        insert con;
        test.stopTest();
        
        system.assertEquals(con.Description, con.Description);
        
    }
}
public class ApexTransactonExample {
    public static void insertleadandAccount(string accName, string leadName, string LeadCompany){
    	account acc=new account(Name=accName);
        insert acc;
        lead le=new lead(lastName=leadName, company=leadCompany);
        insert le;
        lead le2= new lead(lastName=leadName, company='ttt');
        insert le2;
    }
}
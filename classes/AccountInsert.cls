/*public class AccountInsertExample {

    public void insertAccount() {
        // Create an Account object
        Account newAccount = new Account();
        
        // Set the required fields
        newAccount.Name = 'Vishal Account';
        newAccount.Industry = 'Technology';
        newAccount.Phone = '123-456-7890';

        // Insert the Account record
        insert newAccount;

    }
}*/
public class AccountInsert {
    Public static void AccountUpdate(){
        
        List<Account> Acclist = new List<Account>();
        for(Integer i=0; i<5; i++){
            Account acc= new Account();
            acc.name ='vishalkumar';
            acc.phone ='9898989898';
            Acclist.add(acc);  
            
        }   
        insert Acclist;
    }
}
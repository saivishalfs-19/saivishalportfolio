public class AccountRating {
    
    public static void updateAccountRating(List<Id> accountId){
        system.debug('accountId '+ accountId);
        List<account>  accountsToUpdate =[SELECT Id, Rating, AnnualRevenue FROM Account WHERE Id IN :accountId];
        system.debug('accountsToUpdate ' +accountsToUpdate);
        
        for (Account acc : accountsToUpdate) {
        
            if (acc.AnnualRevenue == 100000) {
                acc.Rating = 'Hot';
         
            } else if (acc.AnnualRevenue == 50000) {
                acc.Rating = 'Cold';
                
            }
            else if (acc.AnnualRevenue == 30000){
                acc.Rating = 'warm';
             
            }
            }
           
        update accountsToUpdate;
        //system.debug('AnnualRevenue'+AnnualRevenue);
    }

}
public class OpportunityAmmounnt {
    public static void amount(List<opportunity> ammountvalue){
        for(Opportunity opp:ammountvalue){
            if(opp.amount == null || opp.amount == 0){
                 opp.addError('opportunity amount shoud be null');
            }
           // else if(opp.amount <25000 && opp.amount>0){
             //   opp.stageName='qualification';
          
            //}
            else if(opp.amount < 25000 && opp.stageName == 'qualification'){
                opp.addError('stage updation not possible');
            }
        }
       // update ammountvalue;
        
    }

}
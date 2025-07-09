public class OpportunityHandler {
    public static void preventUpdating(List<Opportunity> opportunities){
    for (Opportunity opp : opportunities) {
        if(opp.StageName == 'Closed Won'){
            opp.addError('opportunity stage is closed own so that you cannot update');
        }
    }
  }
}
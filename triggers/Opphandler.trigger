trigger Opphandler on Opportunity (before insert,before update) {
    
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        OpportunityAmmounnt.amount(trigger.new);
    }
      
}
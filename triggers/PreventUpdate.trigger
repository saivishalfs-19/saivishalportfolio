trigger PreventUpdate on Opportunity (before update) {
    if(Trigger.isBefore && Trigger.isUpdate){
        OpportunityHandler.preventUpdating(Trigger.new);   
    }
}
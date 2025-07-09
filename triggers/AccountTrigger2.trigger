trigger AccountTrigger2 on Account (after Insert) {
    
  /* if(Trigger.isAfter && Trigger.isInsert){   
      //Set<Id> contactIds = new Set<Id>();
      /* for (Contact con : relatedContacts) {
        
}
       Contact con =[select id, Name from contact where ContactcRelation =:Label.Contacy_Relation];
       List<AccountContactRelationship> Acr =  new List<AccountContactRelationship>();
    // List<Contact> conListToInsert = [SELECT Id,Name FROM Custom Labels WHERE Name =:Contacy_Relation];
         for(Account accRec: Trigger.new){
            if(accRec.Rating =='Hot'){
              AccountContactRelationship Acrr=new AccountContactRelationship();
              Acrr.LastName = accRec.Name;
              Acrr.AccountId = accRec.ID;
              Acrr.ContactId = con.ID;
              conListToInsert.add(Acr); 
            }
        
        }
        
       if(conListToInsert.size()>0)
        INSERT conListToInsert;
    
   }  */    
 }
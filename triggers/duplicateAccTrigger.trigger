trigger duplicateAccTrigger on Account (before insert,before update) {
    set<String> accNames = new set<String>();
    if(trigger.isBefore &&(trigger.isInsert || trigger.isUpdate)){
        if(!trigger.new.isEmpty()){
            for(Account ac: trigger.new){
                accNames.add(ac.Name);
            }
        }
    }
       List<Account> accList= [Select Id,Name from Account where Name IN : accNames];
       map<string,Account> existingAccMap= new map<string,Account>();
       if(!accList.isEmpty()){
           for(Account acct : accList){
               existingAccMap.put(acct.Name,acct);
           }
           if(!trigger.new.isEmpty()){
               for(Account accobj : trigger.new){
                   if(existingAccMap.containskey(accobj.Name)){
                       accobj.addError('Acccount Name already exists');
                       
                   }
               }
           }
           
       }

}
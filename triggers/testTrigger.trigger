trigger testTrigger on Account(before insert){
    
    if(trigger.isBefore && trigger.isInsert){
        if(!trigger.new.isEmpty()){
            for(Account acc:trigger.new){
                if(acc.phone==null){
                    //acc.addError('you cannot left the phone field empty');
                }
            }
        }
    }
  }
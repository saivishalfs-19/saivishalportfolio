trigger Account_Trigger on Account (Before update, After update, Before delete, After delete) {

    if (Trigger.isAfter && Trigger.isDelete) {

        List<Messaging.SingleEmailMessage> emailObjs = new List<Messaging.SingleEmailMessage>();

        for (Account accOld : Trigger.Old) {
            
            Messaging.SingleEmailMessage emailObj = new Messaging.SingleEmailMessage();
            List<String> emailAddress = new List<String>();
            
            emailAddress.add(Userinfo.getUserEmail());
            emailObj.setToAddresses(emailAddress); // Corrected method name
            emailObj.setSubject('Account has been successfully deleted');
            emailObj.setPlainTextBody('No body available refer to Sobject');
            emailObjs.add(emailObj);
        }
        
        Messaging.sendEmail(emailObjs);
    }

   /*
    if(Trigger.isBefore && Trigger.isDelete){
        for(Account accOld:Trigger.old){
            if(accOld.Active__c=='')
               accOld.addError('Active filed you cannot delete');    
        }
    }
    */
    if(Trigger.isAfter && Trigger.isUpdate){
        set<Id> accIdsWithchanged = new set<Id>();
        for(Account accRecNew:trigger.new){
            Account accRecOld =trigger.oldmap.get(accRecNew.Id);
            if(accRecNew.BillingStreet !=accRecOld.BillingStreet){
                accIdsWithchanged.add(accRecNew.Id);
            }
        }
        List<Account> accwithContacts =[SELECT id,name,billingcity,billingstreet,billingstate,billingcountry,(SELECT id,name from contacts) from Account WHERE Id in: accIdsWithchanged];
        List<Contact> contactlistToUpdate =new List<Contact>();
        
        for(Account acc: accwithContacts){
            List<contact> ContactLoopedAccount= acc.contacts;
            for(contact con: ContactLoopedAccount){
                
                con.mailingcity= acc.billingcity;
                con.mailingstreet= acc.billingstreet;
                con.mailingstate=acc.billingstate;
                con.mailingcountry=acc.billingcountry;
                contactlistToUpdate.add(con);
                
            }
    }
        if(contactlistToUpdate.size()>0){
           UPDATE contactlistToUpdate; 
        }
    
        if(Trigger.isBefore && Trigger.isUpdate){
            
            system.debug('new values');
            system.debug(Trigger.new);
            system.debug(Trigger.newMap);
            
            system.debug('Old Values'); 
            system.debug(Trigger.Old);
            system.debug(Trigger.oldMap);
           
            for(Account accRecNew: Trigger.new){
                Account accRecOld = Trigger.oldMap.get(accRecNew.Id);
                    if(accRecNew.Name!=accRecOld.Name){
                        accRecNew.addError('once create account name we cannot updated');
                    }
            }
        }
            
    }

}
trigger testTrigger1 on Account (before insert,before update) {
   /* if(trigger.isBefore &&(trigger.isInsert || trigger.isUpdate)){
        if(!trigger.new.isEmpty()){
            for(Account acc : trigger.new){
                if(acc.Billingstreet != null){
                    acc.Shippingstreet = acc.Billingstreet;
               }
                if(acc.Billingcity != null){
                    acc.Shippingcity = acc.Billingcity;
                }
                if(acc.Billingstate != null){
                    acc.Shippingstate = acc.Billingstate;
                }
                if(acc.Billingpostalcode != null){
                    acc.Shippingpostalcode = acc.Billingpostalcode;
                }
                if(acc.Billingcountry != null){
                    acc.Shippingcountry = acc.Billingcountry;
                }
            } 
        }
    }

*/}
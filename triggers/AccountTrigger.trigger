trigger AccountTrigger on Account (after Insert) {
    
   if(Trigger.isAfter && Trigger.isInsert){
        
        List<Contact> conListToInsert = new List<Contact>();
        for(Account accRec: Trigger.new){
            Contact con = new Contact();
            con.LastName = accRec.Name;
            con.AccountId = accRec.ID;
            conListToInsert.add(con);
        
        }
        
       if(conListToInsert.size()>0)
        INSERT conListToInsert;
    
        
    }
   /* 
    If(Trigger.isBefore && Trigger.isInsert){
        for(Account Accrec: Trigger.new){
            if(accRec.AnnualRevenue<1000)
                 accRec.addError('AnnualRevenue cannot be less than 1000');
            if(Accrec.Shippingcity==null)
                accRec.Shippingcity = accRec.Billingcity;
            if(Accrec.Shippingcountry==null)
                accRec.Shippingcountry = accRec.Billingcountry;
            if(Accrec.ShippingState==null)
                accRec.ShippingState = accRec.Billingstate;
            if(Accrec.ShippingStreet==null)
                accRec.ShippingStreet = accRec.Billingstreet;
            if(Accrec.ShippingPostalcode==null)
                accRec.ShippingPostalcode = accRec.Billingpostalcode;
            
        }
}*/
        
    }
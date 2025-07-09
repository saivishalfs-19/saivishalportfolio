trigger accTrigger on Account (after update) 
{
    Map<Id,Account> accmap=new Map<Id,Account>(); 
    if(trigger.IsAfter && trigger.IsUpdate)
    {
        if(!trigger.new.isEmpty())
        {
            for(Account acc:trigger.new)
            {
                if(trigger.oldmap.get(acc.Id).phone != acc.Phone)
                {
                    accMap.put(acc.Id, acc);
                }
            }
        }
    }
    List<contact> conlist=new List<contact>();
    List<contact>  ListToupdatecontacts=new List<contact>();
    if(!conlist.isEmpty())
    {
        for(contact con:conlist)
        {
            con.phone=accmap.get(con.AccountId).phone;
            ListToupdatecontacts.add(con);
        }
    }
    if(!ListToupdatecontacts.isEmpty())
    {
        update listToupdateContacts;
    }

}
//write a trigger on while i am creating contact, if the contact email matches
// with user email then update address details from user to contact 
trigger contactTrigger on Contact (before insert) 
{
    set<string>emailset= new set<string>();
    for(contact con:trigger.new){
        emailset.add(con.email);
    }
    map<string,user>matchinguser= new map<string,user>();
    for(user usr:[select id,email,country,city from user where email=:emailset]){
         matchinguser.put(usr.email,usr);
    }
    for(contact con1:trigger.new){
        if(matchinguser.containsKey(con1.email)){
            con1.mailingcountry=matchinguser.get(con1.email).country;
            con1.mailingcountry=matchinguser.get(con1.email).city;
        }
    }
}
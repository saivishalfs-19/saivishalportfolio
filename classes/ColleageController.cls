public class ColleageController {
    @Auraenabled(cacheable=true)
    public static  list<Colleages__c>getcolleages(){
        list<Colleages__c> ColleagesList = [Select Id,
                                                Name,
                                                Colleage_Phone_Number__c,
                                                Colleage_Registration_Fee__c
                                           FROM Colleages__c];
                                return ColleagesList;
    }

}
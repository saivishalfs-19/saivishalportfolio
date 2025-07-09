public class Addmap{
     public static void substritation(){
         map<string,integer> studentAge=new map<string,integer>();
      
         studentAge.put('suresh',28);
         studentAge.put('ramesh',27);
         studentAge.put('hemanth',27);
         studentAge.put('rama',26);
         studentAge.put('rama',28);
         map<string,string> studentBranch=new map<string,string >{'suresh'=>'EEE','rama'=>'Civel','ramesh'=>'ECE','hemanth'=>'EEE','rama'=>'CSE'};
             for(string str:studentAge.keyset()){
                 system.debug('name  ->'+ str+ 'age  ->'+studentAge.get(str)+'branch -> '+ studentbranch.get(str));
                 system.debug('Student'+studentBranch);
             }
				
     }
}
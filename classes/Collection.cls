/*public class Practice {
public static void soqlExample(){
List<Account> AccList=[select id,Rating,Name,Active__c FROM Account where Rating='Hot'and Active__c='yes'];

System.debug('Get allthe account based on condititon:'+ AccList);
//System.debug('Get all the account based on condition: ' + AccList);

// System.debug('Get allthe account based on condititon'+AccList.size());
}

}*/
Public class Collection{
    public static void exe(){
        List<string> firstcolours=new List<string>();
        List<string> secondcolours=new List<string>{'red','blue','blue','red'};
            System.debug('secondcolours'+secondcolours);
        firstcolours.add('red');
        firstcolours.add('blue');
        firstcolours.add('black');
        firstcolours.add('white');
        System.debug('Colours'+firstcolours);
        
      /*  map<integer,string> colourcount = new map<integer,string>();
        for(string str:firstcolours){
            for(string str2:secondcolours){
                if(str == str2){
                    //  map<string,integer> colourcount = new map<string,integer>();
                    if(colourcount.containskey(str)){
                        colourcount.put(str,colourcount.get(str)+1);
                    }
                }else{
                    colourcount.put(str,2);
                }
            }  
        }
        System.debug('Colourcount'+colourcount);

*/
     /*   public class Collection {
    public static void exe() {
        List<String> firstColours = new List<String>{'red', 'blue', 'black', 'white'};
        List<String> secondColours = new List<String>{'red', 'blue', 'blue', 'red'};
        System.debug('Second Colours: ' + secondColours);
        System.debug('First Colours: ' + firstColours);
*/
            Map<String, Integer> firstColourCount = new Map<String, Integer>();
            
            for (String color : firstColours) {
               if (!secondColours.contains(color)) {
                    if (firstColourCount.containsKey(color)) {
                        firstColourCount.put(color, firstColourCount.get(color) + 1);
                    } else {
                        firstColourCount.put(color, 1);
                    }
                }
            }
    
            System.debug('Count of values present only in the first color list: ' + firstColourCount);
    
            for (String color : firstColourCount.keySet()) {
                System.debug('Color: ' + color + ', Count: ' + firstColourCount.get(color));
            }
        }
    }
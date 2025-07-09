public class MyIterable Implements Iterable<String> {
  private List<String> strings;
    
    public MyIterable(List<string> strings){
        this.strings = strings;
    }
    public Iterator<String> iterator(){
        return strings.iterator();
    }
}
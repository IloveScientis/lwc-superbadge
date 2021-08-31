public class myControllerExtension {
     private final Account acc;
    public myControllerExtension(ApexPages.StandardController controller) {
        this.acc=(Account)controller.getRecord();
    }
    public String getGreeting(){
        return 'hello '+acc.Name+'('+acc.id+')';
    }

     

}
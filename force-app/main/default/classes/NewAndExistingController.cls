public class NewAndExistingController {

    public PageReference save() {
    
        try{
            upsert(account);
        }catch(System.DmlException e){
            ApexPages.addMessages(e);
            return null;
        }
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return redirectSuccess ;
    }

    public Account account{get;private set;}
    
    public NewAndExistingController(){
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id==null)? new Account():[select Id, name , industry from Account where Id=:id];
    }
}
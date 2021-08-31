public class accountCustomController {

    public PageReference savetherecords() {
        update account;
        return null;
    }

     private final Account account;
    public Account getAccount() {
        return account;
    }


   
    public accountCustomController(){
        account=[Select Id,Name,Site from Account where Id =: ApexPages.currentPage().getParameters().get('id')];
    }

}
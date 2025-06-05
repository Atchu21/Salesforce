public class AccountCalculator {
    @future
    public static void countContacts(List<Id> accIds){
        List<Account> accList = [SELECT Id, Count_Number_of_Contact__c,
                                (SELECT Id From Contacts)
                                FROM Account
                                WHERE Id IN: accIds];
        for(Account acc : accList){
            acc.Count_Number_of_Contact__c = acc.Contacts.size();
            
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
    

}
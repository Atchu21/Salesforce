public class AccTriggerHandler {
    
    public static void createOpp(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Account acc: accList){
            if(acc.Active__c == 'Yes'){
                
            
            Opportunity	opp = new Opportunity();
            opp.Name = acc.Name;
            opp.CloseDate = System.today(); //store today's date
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.Id;
            oppList.add(opp);
          }
             
        }
        
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }
    
 public static void updateDesc(List<Account> accList){
        for(Account acc : accList){
            acc.Description = 'Account is created';
            
        }
    }

    public static void populateRating(List<Account> accList){
         for(Account acc : accList){
             if(acc.Industry != null && acc.Industry == 'Media'){
                 acc.Rating = 'Hot';
   
             }
            
        }
    }
}
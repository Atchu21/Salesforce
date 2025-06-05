public class PositionTriggerHandler {
    public static void createTask(List<Position__c> posList){
       List<Task> taskList = new List<Task>();
        
       User u = [SELECT Id FROM User WHERE Username = ''];
        
        for(Position__c pos : posList){
            Task t = new Task();
            t.Subject = 'Follow up';
            t.ActivityDate = System.today() + 7;
            t.WhatId = pos.Id;
            t.OwnerId = UserInfo.getUserId();
            t.Status = 'Not Started';
            taskList.add(t);
        }
        if(!taskList.isEmpty()){
            insert taskList;
        }
    } 
    
    public static void populateData(List<Position__c> posList){
        for(Position__c pos : posList){
            if(pos.status__c == 'New Position'){
                if(pos.OpenDate__c == null){
                    pos.OpenDate__c = System.today();
                }
                if(pos.Min_Pay__c == null){
                    pos.Min_Pay__c = 10000;
                }
                if(pos.Max_Pay__c == null){
                    pos.Max_Pay__c = 15000;
                }
                
            }
           
        }
    }

}
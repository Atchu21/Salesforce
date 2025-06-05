trigger AccountTrigger on Account (before insert, after insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccTriggerHandler.updateDesc(Trigger.New);
            AccTriggerHandler.populateRating(Trigger.New);
        } else if(Trigger.isAfter){
            AccTriggerHandler.createOpp(Trigger.New); //In After insert Trigger.New is read only.
        }
    }

}
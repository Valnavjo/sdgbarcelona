/**********************************************************************************
* @author       JVN - josep@clappsolutions.com - www.clappsolutions.com
* @date         19 June 2015
* @description  Trigger for Account object.
*               Best practice:
*                   - Order of execution control.
*                   - Correct use of Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap
*                   - Easy to learn, use and mantain.
*                   - Chaos-avoider
* @Revision     
**********************************************************************************/
trigger SDG_Account on Account (before insert, before update, before delete,
                                after insert, after update, after delete, after undelete) {

    //Get handler
    SDG_TriggerHandlerAccount handler = SDG_TriggerHandlerAccount.getInstance();

    //Before insert
    if (Trigger.isBefore && Trigger.isInsert) {
        handler.onBeforeInsert(Trigger.new);
    }

    //Before update
    else if (Trigger.isBefore && Trigger.isUpdate) {
        handler.onBeforeUpdate(Trigger.old, Trigger.oldMap, Trigger.new, Trigger.newMap);
    }

    //Before delete
    else if (Trigger.isBefore && Trigger.isDelete) {
        handler.onBeforeDelete(Trigger.old, Trigger.oldMap);
    }

    //After insert
    else if (Trigger.isAfter && Trigger.isInsert) {
        handler.onAfterInsert(Trigger.new, Trigger.newMap);
    }

    //After update
    else if (Trigger.isAfter && Trigger.isUpdate) {
        handler.onAfterUpdate(Trigger.old, Trigger.oldMap, Trigger.new, Trigger.newMap);
    }

    //After delete
    else if (Trigger.isAfter && Trigger.isDelete) {
        handler.onAfterDelete(Trigger.old, Trigger.oldMap);
    }

    //After undelete
    else if (Trigger.isAfter && Trigger.isUndelete) {
        handler.onAfterUndelete(Trigger.new);
    }
}
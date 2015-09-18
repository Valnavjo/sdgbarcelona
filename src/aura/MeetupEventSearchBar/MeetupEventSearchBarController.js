({
    searchKeyChange: function(component, event, helper) {
        var myEvent = $A.get("e.sdgbarcelona:MeetupEventSearchKeyChange");
        myEvent.setParams({"searchKey": event.target.value});
        myEvent.fire();
    }
})
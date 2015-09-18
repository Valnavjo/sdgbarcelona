({
    doInit : function(component, event) {
        var action = component.get("c.findBarcelonaSdgGroup");
        action.setCallback(this, function(a) {
            var meetupGroup = JSON.parse(a.getReturnValue());
            component.set("v.meetupGroup", meetupGroup);
            
			var actionB = component.get("c.findEvents");
            actionB.setParams({
                "groupId": meetupGroup.id+''
            });
            actionB.setCallback(this, function(a) {
				var meetupEvents = JSON.parse(a.getReturnValue());
                component.set("v.meetupEvents", meetupEvents);
                component.set("v.meetupEventsBkp", meetupEvents);
            });
            $A.enqueueAction(actionB);
        });
        $A.enqueueAction(action);
    },
    
	searchKeyChange: function(component, event) {
        var searchKey = event.getParam("searchKey");
        var meetupEventsBkp = component.get("v.meetupEventsBkp");
		var isSearchKey = searchKey && searchKey.length > 0;

        var foundMeetupEvents = new Array();
        if (isSearchKey === true && meetupEventsBkp) {	
            for (i=0; i<meetupEventsBkp.length; i++) {
                if (meetupEventsBkp[i].name.indexOf(searchKey) !== -1) {
                    foundMeetupEvents.push(meetupEventsBkp[i]);
                }
            }
        }
        
        component.set(
            "v.meetupEvents",
            isSearchKey === true ? foundMeetupEvents : meetupEventsBkp
        );
	}
})
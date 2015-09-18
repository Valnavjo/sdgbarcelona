({
    locationChange : function(component, event, helper) {
        var token = event.getParam('token');
        if (token && token.indexOf('meetupevent/') === 0) {
            var meetupId = token.substr(token.indexOf('/') + 1);
            
            if (meetupId) {
            	var meetupEvents = component.get("v.meetupEvents");

                if (meetupEvents) {
                    for (i=0; i<meetupEvents.length; i++) {
                        if (meetupEvents[i].id === meetupId) {
                            component.set("v.meetupEvent", meetupEvents[i]);
                        }
                    }   
                }
            }
        }
    }
})
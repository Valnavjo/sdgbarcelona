SDG_DtoMeetup.GroupResult groupResult = SDG_ServiceRestMeetup.getInstance().findGroup('Barcelona-Salesforce-Developer-Group');
SDG_DtoMeetup.EventResult eventResult = SDG_ServiceRestMeetup.getInstance().findEvents(String.valueOf(groupResult.results[0].id));

System.debug('Result: ' + groupResult.results.size());
System.debug('Result: ' + eventResult.results.size());
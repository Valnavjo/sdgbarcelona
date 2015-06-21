/**********************************************************************************
* @author       JVN - josep@clappsolutions.com - www.clappsolutions.com
* @date         19 June 2015
* @description  Service class which contains all necessary methods to interact with Meetup.
* @Revision     
**********************************************************************************/
public class SDG_ServiceRestMeetup implements SDG_ServiceMeetup {

    //-- CONSTRUCTOR
    /**
     * It must be instantiated using singleton pattern.
     */
    private SDG_ServiceRestMeetup() { }

    //-- SINGLETON PATTERN
    /**
     * Instance is only instantiate once per request (thread).
     */
    private static SDG_ServiceRestMeetup instance;
    public static SDG_ServiceRestMeetup getInstance() {
        if (instance == null) instance = new SDG_ServiceRestMeetup();
        return instance;
    }

    //-- SERVICE METHODS
    /** {@inheritDoc} */
    public SDG_DtoMeetup.Meetup findMeetup(final String meetupId) {
        return new SDG_DtoMeetup.Meetup();
    }
}
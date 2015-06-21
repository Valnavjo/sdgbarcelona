/**********************************************************************************
* @author       JVN - josep@clappsolutions.com - www.clappsolutions.com
* @date         19 June 2015
* @description  A set of DTOs that represents Meetup structure.
*               Best practice:
*                   - Use Inner Classes for DTO's.
*                   - Avoid having a lot of Apex Classes.
*                   - Avoid dispersion. All Exceptions are under [namespace]_Dto[context].
*                   - Easy to find and mantain.
* @Revision     
**********************************************************************************/
public class SDG_DtoMeetup {
    
    //-- CONSTRUCTOR
    /**
     * Enforce non-instantiabily.
     */
    private SDG_DtoMeetup() {
        throw new SDG_Exception.DtoMeetupException('SDG_DtoMeetup must never be instantiated.');
    }

    //-- INNER CLASSES
    /**
     * Class that represents a Meetup.
     */
    public class Meetup {
        public String id {get; set;}
    }
}
@copy@
package @namespace@.@events@ {
    
    import flash.events.Event;
    
    /**
     * Event description here.
     *
     * @langversion ActionScript 3.0
     * @author @author.name@ @author.email@
     * @date @today@
     * @version @version@
     */
    public class @event.name@ extends Event {
        
        /* --- Variables --- */
        
        //pmvcgen:varconsts
        
        /* === Variables === */
        
        /* --- Constructor --- */
        
        public function @event.name@(type:String) {
            super(type);
        }
        
        /* === Constructor === */
        
        /* --- Functions --- */
        
        /**
         * Clones the @event.name@.
         *
         * @return Duplicates an instance of an Event subclass
         */
        public function clone():Event {
            var evt:@event.name@ = new @event.name@(type);
            return evt;
        }
        
        /**
         * Formats the event to a string.
         *
         * @return Returns a string containing all the properties of the Event object
         */
        override public function toString():String {
            return formatToString("@event.name@", "type");
        }
        
        /* === Functions === */
        
    }
    
}
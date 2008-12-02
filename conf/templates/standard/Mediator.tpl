package @namespace@.@view@ {
	
	import @namespace@.@facade@;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	/**
	 * @mediator.name@ mediator.
	 *
	 * @langversion ActionScript 3.0
	 * @author @author.name@ @author.email@
	 * @date @today@
	 * @version @version@
	 */
	public class @mediator.name@Mediator extends Mediator {
	   
		/* --- Variables --- */
		
		public static const NAME:String = "@mediator.name@Mediator";
		
		/* === Variables === */
		
		/* --- Constructor --- */
		
		/**
		 * Constructor.
		 *
		 * @param viewComponent view component for mediator
		 */
		public function @mediator.name@Mediator(viewComponent:Object) {
			super(NAME, viewComponent);
		}
		
		/* === Constructor === */
		
		/* --- Functions --- */
		
		override public function handleNotification(note:INotification):void {
		}

		override public function listNotificationInterests():Array {
			return [
			];
		}
		
		/* === Functions === */
		
		/* --- Public Accessors --- */
		
		public function get YOURVIEWNAME():YOURVIEWOBJ { return viewComponent as YOURVIEWOBJ; }
		
		/* === Public Accessors === */
		
	}
	
}

package @namespace@ {
	
	import @namespace@.@ctrls@.*;
	
	import org.puremvc.as3.patterns.facade.Facade;
	
	/**
	 * Application Facade.
	 *
	 * @langversion ActionScript 3.0
	 * @author @author.name@ @author.email@
	 * @date @today@
	 * @version @version@
	 */
	public class @app.prefix@Facade extends Facade {
	   
		/* --- Variables --- */
		
		public static const STARTUP:String = "startup";

		//pmvcgen:varconsts
		
		/* === Variables === */
		
		/* --- Functions --- */
		
		public static function getInstance():@app.prefix@Facade {
			if(instance == null)
				instance = new @app.prefix@Facade();
			return instance as @app.prefix@Facade;
		}
		
		/**
		 * Starts up @project.name@.
		 *
		 * @param app reference to the application
		 */
		public function startup(app:@project.name@):void {
			sendNotification(STARTUP, app);
		}
		
		override protected function initializeController():void {
			super.initializeController();
			//pmvcgen:register commands
		}
		
		/* === Functions === */
		
	}
	
}

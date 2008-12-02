package @namespace@.@ctrls@ {
	
	//pmvcgen:import commands
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.MacroCommand;
	
	/**
	 * @command.name@ command.
	 *
	 * @langversion ActionScript 3.0
	 * @author @author.name@ @author.email@
	 * @date @today@
	 * @version @version@
	 */
	public class @command.name@Command extends MacroCommand {
	   
		override protected function initializeMacroCommand():void {
			//pmvcgen:chain simple commands
		}
		
	}
	
}

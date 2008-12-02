package @namespace@.@ctrls@ {

	//pmvcgen:insert imports
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * @command.name@ command.
	 *
	 * @langversion ActionScript 3.0
	 * @author @author.name@ @author.email@
	 * @date @today@
	 * @version @version@
	 */
	public class @command.name@Command extends SimpleCommand {
	   
		override public function execute(note:INotification):void {
			//pmvcgen:insert command logic
		}
		
	}
	
}

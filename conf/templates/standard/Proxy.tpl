package @namespace@.@model@ {
	
	import @namespace@.@facade@;
	
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	/**
	 * @proxy.name@ proxy.
	 *
	 * @langversion ActionScript 3.0
	 * @author @author.name@ @author.email@
	 * @date @today@
	 * @version @version@
	 */
	public class @proxy.name@Proxy extends Proxy {
	   
		/* --- Variables --- */
		
		public static const NAME:String = "@proxy.name@Proxy";
		
		/* === Variables === */
		
		/* --- Constructor --- */
		
		/**
		 * Constructor.
		 *
		 * @param data data model for proxy
		 */
		public function @proxy.name@Proxy(data:Object=null) {
			super(NAME, data);
		}
		
		/* === Constructor === */
		
		/* --- Functions --- */
		
		//addfunctions
		
		/* === Functions === */
		
		/* --- Public Accessors --- */
		
		public function get data():Object { return data; }
		
		/* === Public Accessors === */
		
	}
	
}

<?xml version="1.0" encoding="utf-8"?>
<mx:Application xmlns:mx="http://www.adobe.com/2006/mxml"
                creationComplete="facade.startup(this)">

	<mx:Script>
		<![CDATA[
			import @namespace@.@app.prefix@Facade;

			private var facade:@app.prefix@Facade = @app.prefix@Facade.getInstance();
		]]>
	</mx:Script>

</mx:Application>

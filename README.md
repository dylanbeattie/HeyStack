HeyStack
========

ServiceStack demo for Progressive.NET 2014

## Known Issues

Gotchas that we encountered whilst running the workshop that you might find useful :)

**Could not load type 'ServiceStack.HttpHandlerFactory'...**

This is because of a namespace change between ServiceStack 3.x and 4.x. If you're using the v3.9.x ServiceStack packages, find the line in web.config that reads

    <add path="*" name="ServiceStack.Factory" preCondition="integratedMode"
	  type="ServiceStack.HttpHandlerFactory, ServiceStack"
	  verb="*" resourceType="Unspecified" allowPathInfo="true" />
  
and change it to read

    <add path="*" name="ServiceStack.Factory" preCondition="integratedMode" type="ServiceStack.WebHost.Endpoints.ServiceStackHttpHandlerFactory, ServiceStack"
	  verb="*" resourceType="Unspecified" allowPathInfo="true" />

**Could not load type 'ServiceStack.ServiceHost.IService' when starting ServiceStack**

Apparently due a change in NuGet's dependency resolution algorithm in NuGet 2.8 - fix is at [http://stackoverflow.com/questions/22016374/could-not-load-type-servicestack-servicehost-iservice-when-starting-servicesta](http://stackoverflow.com/questions/22016374/could-not-load-type-servicestack-servicehost-iservice-when-starting-servicesta "http://stackoverflow.com/questions/22016374/could-not-load-type-servicestack-servicehost-iservice-when-starting-servicesta")
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using HeyStack.Api.Server.Services;
using ServiceStack;

namespace HeyStack.Api.Server {
    public class Global : HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {
            new AppHost().Init();
        }

        public class AppHost : AppHostBase {
            // The name of your app and where to find your services
            public AppHost() : base("HeyStack Demo", typeof(StatusService).Assembly) { }

            public override void Configure(Funq.Container container) {
                container.Register<IHost>(c => new MyHost());
                container.Register<IClock>(c => new MyClock());
            }
        }
    }

}
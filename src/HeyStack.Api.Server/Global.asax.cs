using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using Funq;
using HeyStack.Api.Server.Services;
using HeyStack.Api.Server.Services.Data;
using ServiceStack;
using ServiceStack.Api.Swagger;
using ServiceStack.OrmLite;

namespace HeyStack.Api.Server {
    public class Global : HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {
            new AppHost().Init();
        }

        public class AppHost : AppHostBase {
            // The name of your app and where to find your services
            public AppHost() : base("HeyStack Demo", typeof(StatusService).Assembly) { }

            public override void Configure(Funq.Container container) {

                Plugins.Add(new SwaggerFeature());
                var factory = new OrmLiteConnectionFactory(ConfigurationManager.ConnectionStrings["heystack.sqlserver"].ConnectionString,
                    SqlServerDialect.Provider);
                container.Register<IMovieDatabase>(c => new SqlMovieDatabase(factory)).ReusedWithin(ReuseScope.Request);
                container.Register<IHost>(c => new MyHost());
                container.Register<IClock>(c => new MyClock());
            }
        }
    }

}
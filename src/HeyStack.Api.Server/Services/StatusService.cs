using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServiceStack;

namespace HeyStack.Api.Server.Services {
    public class StatusService : Service {
        public StatusResultDto Get(GetStatusDto request) {
            var message = String.Format("{0} at {1} is OK",
                Environment.MachineName, DateTime.Now);
            return new StatusResultDto { Status = message };
        }
    }

}
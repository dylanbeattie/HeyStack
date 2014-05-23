using System;

namespace HeyStack.Api.Server.Services {
    public class MyHost : IHost {
        public string MachineName { get { return Environment.MachineName; } }
    }
}
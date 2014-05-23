using System;

namespace HeyStack.Api.Server.Services {
    public interface IClock {
        /// <summary>Returns the current local date and time.</summary>
        DateTime Now { get; }
    }

    public class MyClock : IClock {
        public DateTime Now { get { return DateTime.Now; } }
    }

    public class MyHost : IHost {
        public string MachineName { get { return Environment.MachineName; } }
    }
}
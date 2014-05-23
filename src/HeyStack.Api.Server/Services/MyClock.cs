using System;

namespace HeyStack.Api.Server.Services {
    public class MyClock : IClock {
        public DateTime Now { get { return DateTime.Now; } }
    }
}
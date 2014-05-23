using System;

namespace HeyStack.Api.Server.Services {
    public interface IClock {
        /// <summary>Returns the current local date and time.</summary>
        DateTime Now { get; }
    }
}
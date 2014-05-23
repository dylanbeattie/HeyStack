namespace HeyStack.Api.Server.Services {
    public interface IHost {
        /// <summary>Returns the name of the machine that's hosting this code.</summary>
        string MachineName { get; }
    }
}
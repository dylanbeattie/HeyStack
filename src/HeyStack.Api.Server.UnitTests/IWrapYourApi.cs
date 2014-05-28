using HeyStack.ServiceModel.Status;

namespace HeyStack.Api.Server.UnitTests {
    public interface IWrapYourApi {
        StatusResultDto GetStatus();
        void Init();
        void TearDown();
    }
}
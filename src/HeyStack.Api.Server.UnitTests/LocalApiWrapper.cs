using System;
using HeyStack.Api.Server.Services;
using HeyStack.ServiceModel.Status;
using Moq;
using Shouldly;

namespace HeyStack.Api.Server.UnitTests {
    public class LocalApiWrapper : IWrapYourApi {

        private StatusService service;
        public StatusResultDto GetStatus() {
            return (service.Get(new GetStatusDto()));
        }

        public void Init() {
            var mockHost = new Mock<IHost>();
            mockHost.Setup(h => h.MachineName).Returns("TESTHOST");
            var mockClock = new Mock<IClock>();
            mockClock.Setup(clock => clock.Now).Returns(DateTime.MinValue);
            service = new StatusService(mockHost.Object, mockClock.Object);

        }

        public void TearDown() { }
    }
}
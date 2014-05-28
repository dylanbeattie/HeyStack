using System;
using HeyStack.Api.Server.Services;
using HeyStack.Api.Server.UnitTests;
using HeyStack.ServiceModel.Status;
using Moq;
using ServiceStack;

namespace HeyStack.Api.Server.IntegrationTests.Services {
    public class JsonApiWrapper : IWrapYourApi {

        private TestableAppHost host;

        private const string TEST_URL = "http://localhost:1337/";
        private Mock<IHost> mockHost;
        private Mock<IClock> mockClock;

        public StatusResultDto GetStatus() {
            var client = new JsonServiceClient(TEST_URL);
            return (client.Get<StatusResultDto>(new GetStatusDto()));
        }

        public void Init() {
            mockHost = new Mock<IHost>();
            mockClock = new Mock<IClock>();
            host = new TestableAppHost(container => {
                container.Register(mockHost.Object);
                container.Register(mockClock.Object);
            });
            host.Init();
            host.Start(TEST_URL);
            mockHost.Setup(mock => mock.MachineName).Returns("TESTHOST");
            mockClock.Setup(mock => mock.Now).Returns(DateTime.MinValue);
        }

        public void TearDown() {
            host.Stop();
        }
    }
}
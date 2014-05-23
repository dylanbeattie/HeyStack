using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HeyStack.Api.Server.Services;
using HeyStack.ServiceModel.Status;
using Moq;
using NUnit.Framework;
using Shouldly;

namespace HeyStack.Api.Server.UnitTests {
    [TestFixture]
    public class StatusServiceTests {
        [Test]
        public void Status_Service_Returns_HostName() {
            var mockHost = new Mock<IHost>();
            mockHost.Setup(h => h.MachineName).Returns("TESTHOST");
            var mockClock = new Mock<IClock>();
            var service = new StatusService(mockHost.Object, mockClock.Object);
            var result = service.Get(new GetStatusDto());
            result.Status.ShouldStartWith("TESTHOST at ");
        }

        [Test]
        public void Status_Service_Returns_DateTime() {
            var mockHost = new Mock<IHost>();
            var mockClock = new Mock<IClock>();
            var datum = new DateTime(2016, 5, 4, 3, 2, 1, 0);
            mockClock.Setup(c => c.Now).Returns(datum);
            var service = new StatusService(mockHost.Object, mockClock.Object);
            var result = service.Get(new GetStatusDto());
            result.Status.ShouldContain(datum.ToString());
        }
    }
}

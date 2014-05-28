using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using HeyStack.Api.Server.Services;
using HeyStack.ServiceModel.Status;
using Moq;
using NUnit.Framework;
using ServiceStack;
using Shouldly;

namespace HeyStack.Api.Server.IntegrationTests.Services {
    //public class StatusServiceTests {


    //    [TestFixtureSetUp]
    //    public void TestFixtureSetUp() {
    //        mockHost = new Mock<IHost>();
    //        mockClock = new Mock<IClock>();
    //        host = new TestableAppHost(container => {
    //            container.Register(mockHost.Object);
    //            container.Register(mockClock.Object);
    //        });
    //        host.Init();
    //        host.Start(TEST_URL);
    //    }

    //    [Test]
    //    public void StatusService_Returns_HostName_Via_Json() {
    //        mockHost.Setup(mock => mock.MachineName).Returns("TESTHOST");
    //        var client = new JsonServiceClient(TEST_URL);
    //        var status = client.Get<StatusResultDto>(new GetStatusDto());
    //        status.Status.ShouldStartWith("TESTHOST");
    //    }

    //    [Test]
    //    public void StatusService_Returns_HostName_Via_Xml() {
    //        mockHost.Setup(mock => mock.MachineName).Returns("TESTHOST");
    //        var client = new XmlServiceClient(TEST_URL);
    //        var status = client.Get<StatusResultDto>(new GetStatusDto());
    //        status.Status.ShouldStartWith("TESTHOST");
    //    }

    //    [TestFixtureTearDown]
    //    public void TestFixtureTearDown() {
    //        host.Stop();
    //    }
    //}
}

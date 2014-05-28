using System;
using NUnit.Framework;
using Shouldly;

namespace HeyStack.Api.Server.UnitTests {
    [TestFixture]
    public abstract class StatusServiceTestBase<T> where T : IWrapYourApi, new() {
        protected T api;

        [TestFixtureSetUp]
        public void TestFixtureSetUp() {
            api = new T();
            api.Init();
        }

        [Test]
        public void Status_Returns_Local_Time() {
            var result = api.GetStatus();
            result.Status.ShouldEndWith(DateTime.MinValue.ToString("O") + " is OK");
        }
        [Test]
        public void Status_Returns_Hostname() {
            var result = api.GetStatus();
            result.Status.ShouldStartWith("TESTHOST at");
        }

        [TestFixtureTearDown]
        public void TestFixtureTearDown() {
            api.TearDown();
        }
    }
}
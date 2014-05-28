using System.Collections.Generic;
using System.Linq;
using System.Text;
using HeyStack.Api.Server.Services;
using Moq;
using NUnit.Framework;
using Shouldly;

namespace HeyStack.Api.Server.UnitTests {
    [TestFixture]
    public class LocalStatusServiceTests : StatusServiceTestBase<LocalApiWrapper> {
    }
}

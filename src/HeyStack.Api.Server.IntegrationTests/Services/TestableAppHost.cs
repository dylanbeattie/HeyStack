using System;
using Funq;
using HeyStack.Api.Server.Services;
using ServiceStack;

namespace HeyStack.Api.Server.IntegrationTests.Services {
/// <summary>The testable app host will host the same services as our 'real' server
/// but with mocked dependencies injected via a different container config.</summary>
public class TestableAppHost : AppSelfHostBase {
    private readonly Action<Container> configure;

    public TestableAppHost(Action<Container> configure)
        : base("HeyStack Test Service", typeof(StatusService).Assembly) {
        this.configure = configure;
    }

    public override void Configure(Container container) {
        configure(container);
    }
}
}
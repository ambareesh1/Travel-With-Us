using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AirBus.Startup))]
namespace AirBus
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

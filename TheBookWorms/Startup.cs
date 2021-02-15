using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TheBookWorms.Startup))]
namespace TheBookWorms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

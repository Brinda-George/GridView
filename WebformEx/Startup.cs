using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebformEx.Startup))]
namespace WebformEx
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

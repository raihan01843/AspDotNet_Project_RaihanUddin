using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspNot_Project_Raihan.Startup))]
namespace AspNot_Project_Raihan
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

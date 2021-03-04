using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace AspNot_Project_Raihan
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //RouteTable.Routes.EnableFriendlyUrls();

           


            RouteTable.Routes.MapPageRoute(
               routeName: "BookInfo",
               routeUrl: "ContentPages/{id}/Book",
               physicalFile: "~/ContentPages/Book.aspx"
               );

            //Defoult Route
            RouteTable.Routes.MapPageRoute(
                routeName: "NVIT",
                routeUrl: "",
                physicalFile: "~/Default.aspx"
                );
        }
    }
}
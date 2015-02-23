using System.Web.Mvc;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Final_working_SoundDog
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
  
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute("Default", "{controller}/{action}/{id}", new { action = "Index", id = UrlParameter.Optional }
                );
        }
    }
}

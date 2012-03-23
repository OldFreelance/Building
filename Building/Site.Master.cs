using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Building
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!HttpContext.Current.User.Identity.IsAuthenticated || !HttpContext.Current.User.IsInRole("Admin"))
            {
                NavigationMenu.Items.RemoveAt(1);
            }
        }
    }
}

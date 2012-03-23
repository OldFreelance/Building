using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Building.Admin
{
    public partial class DeletePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                BuildingEntities db = new BuildingEntities();
                if (Request.Params.AllKeys.Contains("id"))
                {
                    int id = int.Parse(Request.Params["id"]);
                    var obj = db.Posts.FirstOrDefault(s => s.Id == id);
                    if (obj != null)
                    {
                        db.Posts.DeleteObject(obj);
                        db.SaveChanges();
                    }
                }
            }
            catch (Exception)
            {

            }
            finally
            {
                Response.Redirect("Posts.aspx");
            }
        }
    }
}
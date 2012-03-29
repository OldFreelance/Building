using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Building.Code;

namespace Building.Admin
{
    public partial class DeleteProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                BuildingEntities db = new BuildingEntities();
                if (Request.Params.AllKeys.Contains("id"))
                {
                    int id = int.Parse(Request.Params["id"]);
                    var obj = db.Projects.FirstOrDefault(s => s.Id == id);
                    if (obj != null)
                    {
                        db.Projects.DeleteObject(obj);
                        db.SaveChanges();
                        LogHelper.Write(string.Format("{0} удалил проект '{1}'", User.Identity.Name, obj.Name));
                    }
                }
            }
            catch(Exception)
            {
                
            }
            finally
            {
                Response.Redirect("Projects.aspx");
            }
        }
    }
}
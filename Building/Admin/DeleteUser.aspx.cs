using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Building.Code;

namespace Building.Admin
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                BuildingEntities db = new BuildingEntities();
                if (Request.Params.AllKeys.Contains("id"))
                {
                    int id = int.Parse(Request.Params["id"]);
                    var obj = db.Users.FirstOrDefault(s => s.Id == id);
                    if (obj != null)
                    {
                        db.Users.DeleteObject(obj);
                        db.SaveChanges();
                        LogHelper.Write(string.Format("{0} удалил пользователя '{1}'", User.Identity.Name, obj.Login));
                    }
                }
            }
            catch (Exception)
            {

            }
            finally
            {
                Response.Redirect("Users.aspx");
            }
        }
    }
}
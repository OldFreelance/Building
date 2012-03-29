using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Building.Code;

namespace Building.Admin
{
    public partial class EditPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.ChangeMode(Request.Params["Id"] == "0" ? FormViewMode.Insert : FormViewMode.Edit);
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            string name = ((TextBox) FormView1.FindControl("NameTextBox")).Text;
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Posts.aspx");
                    break;
                case "Update":
                    FormView1.UpdateItem(true);
                    LogHelper.Write(string.Format("{0} отредактировал должность '{1}'", User.Identity.Name, name));
                    Response.Redirect("Posts.aspx");
                    break;
                case "Insert":
                    FormView1.InsertItem(true);
                    LogHelper.Write(string.Format("{0} добавил должность '{1}'", User.Identity.Name, name));
                    Response.Redirect("Posts.aspx");
                    break;
            }
        }
    }
}
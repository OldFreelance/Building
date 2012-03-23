using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Posts.aspx");
                    break;
                case "Update":
                    FormView1.UpdateItem(true);
                    Response.Redirect("Posts.aspx");
                    break;
                case "Insert":
                    FormView1.InsertItem(true);
                    Response.Redirect("Posts.aspx");
                    break;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Building.Code;

namespace Building.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.ChangeMode(Request.Params["Id"] == "0" ? FormViewMode.Insert : FormViewMode.Edit);
            DropDownList cmbPost = (DropDownList)FormView1.FindControl("DropDownList1");
            if (!IsPostBack && FormView1.DataItem!=null)
                cmbPost.SelectedValue = ((User)(FormView1.DataItem)).PostId.ToString();
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            string name = ((TextBox)FormView1.FindControl("LoginTextBox")).Text;
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Users.aspx");
                    break;
                case "Update":
                    FormView1.UpdateItem(true);
                    LogHelper.Write(string.Format("{0} отредактировал пользователя '{1}'", User.Identity.Name, name));
                    Response.Redirect("Users.aspx");
                    break;
                case "Insert":
                    FormView1.InsertItem(true);
                    LogHelper.Write(string.Format("{0} добавил пользователя '{1}'", User.Identity.Name, name));
                    Response.Redirect("Users.aspx");
                    break;
            }
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            DropDownList cmbPost = (DropDownList)FormView1.FindControl("DropDownList1");
            e.NewValues.Add("PostId", cmbPost.SelectedValue);
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            DropDownList cmbPost = (DropDownList)FormView1.FindControl("DropDownList1");
            e.Values.Add("PostId", cmbPost.SelectedValue);
        }
    }
}
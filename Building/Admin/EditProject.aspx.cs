using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Building.Admin
{
    public partial class EditProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.ChangeMode(Request.Params["Id"] == "0" ? FormViewMode.Insert : FormViewMode.Edit);
            DropDownList cmbForeman = (DropDownList) FormView1.FindControl("DropDownList1");
            if (!IsPostBack && FormView1.DataItem != null)
                cmbForeman.SelectedValue = ((Project)(FormView1.DataItem)).ForemanId.ToString();
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Projects.aspx");
                    break;
                case "Update":
                    FormView1.UpdateItem(true);
                    Response.Redirect("Projects.aspx");
                    break;
                case "Insert":
                    FormView1.InsertItem(true);
                    Response.Redirect("Projects.aspx");
                    break;
            }
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            DropDownList cmbForeman = (DropDownList) FormView1.FindControl("DropDownList1");
            e.NewValues.Add("ForemanId", cmbForeman.SelectedValue);
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            DropDownList cmbForeman = (DropDownList)FormView1.FindControl("DropDownList1");
            e.Values.Add("ForemanId", cmbForeman.SelectedValue);
        }
    }
}
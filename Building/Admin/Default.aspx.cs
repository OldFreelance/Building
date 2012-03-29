using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace Building.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            const string path = "report.pdf";
            Document doc = new Document();
            BaseFont baseFont = BaseFont.CreateFont(Request.PhysicalApplicationPath + "arial.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
            Font font = new Font(baseFont, 12, Font.NORMAL);
            PdfWriter.GetInstance(doc, new FileStream(Request.PhysicalApplicationPath + path, FileMode.Create));
            doc.Open();

            BuildingEntities db = new BuildingEntities();
            foreach (var log in db.UserLogs)
                doc.Add(new Paragraph(log.Date + " : " + log.Text, font));

            doc.Close();
            Response.Redirect("~/"+path);
        }
    }
}
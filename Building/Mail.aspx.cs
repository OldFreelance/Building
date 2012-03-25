using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Building
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var mailObj = new MailMessage();
            mailObj.From=new MailAddress(txtEmail.Text);
            mailObj.ReplyToList.Add(txtEmail.Text);
            //mailObj.To.Add(new MailAddress("piramitpost@gmail.com"));
            mailObj.To.Add(new MailAddress("vmv_mirex@mail.ru"));
            mailObj.Subject = "Сообщение с сайта от "+Server.HtmlEncode(txtNick.Text);
            mailObj.BodyEncoding = System.Text.Encoding.UTF8;
            mailObj.Body = Server.HtmlEncode(txtMessage.Text) + "<br><a href=\"mailto:" + txtEmail.Text + "\">Ответить</a>";
            mailObj.IsBodyHtml = true;

            SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com");
            SMTPServer.Credentials = new System.Net.NetworkCredential("piramitpost@gmail.com", "piramitpassword");
            SMTPServer.EnableSsl = true;
            SMTPServer.Port = 587;

            lblMessage.Text = "Письмо отправлено";
            lblMessage.Visible = true;

            try
            {
                SMTPServer.Send(mailObj);
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.ToString();
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                BuildingEntities db=new BuildingEntities();
                Message message = new Message { Date = DateTime.Now, Email = txtEmail.Text, Nick = txtNick.Text, Text = txtMessage.Text };
                db.Messages.AddObject(message);
                db.SaveChanges();
            }
        }
    }
}
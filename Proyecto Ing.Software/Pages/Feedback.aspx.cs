using Proyecto_Ing.Software.Clases;
using Proyecto_Ing.Software.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Feedback1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/Pages/Login.aspx");
            }
            if (Session["Usuario"] != null)
            {
                clsUser myUser = (clsUser)Session["Usuario"];
                this.txtCorreo.Text = myUser.email;
                txtUsuario.ReadOnly = true;
                this.txtUsuario.Text = myUser.usuario;
                txtUsuario.ReadOnly = true;
            }

        }
        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                clsUser myUser = (clsUser)Session["Usuario"];
                if (Page.IsValid)
                {
                    using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                    {
                        var user = db.spFeedback(myUser.idPersona,txtCorreo.Text,txtFeedback.Text);
                        Response.Redirect("~/Pages/FeedbackAns.aspx");
                    }
                }
            }
        }
    }
}
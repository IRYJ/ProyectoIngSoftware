using Proyecto_Ing.Software.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Ing.Software
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clsUser myUser = (clsUser)Session["Usuario"];
                if (Session["Usuario"] == null)
                {
                    lbtnCerrarSesion.Visible = false;
                    lbtnIconos.Visible = false;
                    lbtnPerfil.Visible = false;
                    lbtnAdmin.Visible = false;
                }
                if (Session["Usuario"] != null)
                {
                    lbtnIniciarSesion.Visible = false;
                }
                if (HttpContext.Current.Session["Usuario"] != null)
                {
                    if (myUser.empleado == false)
                    {
                        lbtnAdmin.Visible = false;
                    }
                }
            }
            catch (Exception ex) { }
        }

        protected void lbtnIcons_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        protected void lbtnIconos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Iconos.aspx");
        }

        protected void lbtnPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Perfil.aspx");
        }
        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Pages/Login.aspx");
        }

        protected void lbtnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin.aspx");
        }

        protected void lbtnIniciarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Login.aspx");
        }
    }
}
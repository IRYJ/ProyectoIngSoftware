using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Ing.Software.Data;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtNacimiento.Text != "" && txtNumero.Text != "" && txtCorreo.Text != "" && txtPais.Text != "" && txtCiudad.Text != "" && txtPostal.Text != "" && txtDireccion.Text != "" && txtUsuario.Text != "" && txtClave.Text != "")
            {
                if (Page.IsValid)
                {
                    using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                    {
                        var user = db.spCrearUsuario(txtNombre.Text, DateTime.Parse(txtNacimiento.Text), txtNumero.Text, txtCorreo.Text, txtPais.Text, txtCiudad.Text, txtPostal.Text, txtDireccion.Text, txtUsuario.Text, txtClave.Text, "0");

                        Response.Redirect("~/Pages/Login.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("~/Pages/Registro.aspx");
            }
            
        }
    }
}
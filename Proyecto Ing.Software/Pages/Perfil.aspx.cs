using Proyecto_Ing.Software.Clases;
using Proyecto_Ing.Software.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Session["Usuario"] == null)
                {
                    Response.Redirect("~/Pages/Login.aspx");
                }
                if (Session["Usuario"] != null)
                {
                    clsUser myUser = (clsUser)Session["Usuario"];
                    this.txtNombre.Text = myUser.nombreCompleto;
                    this.txtNacimiento.Text = myUser.fechaNacimiento.Date.ToString();
                    txtNacimiento.ReadOnly = true;
                    this.txtNumero.Text = myUser.numeroTelefono;
                    this.txtEmail.Text = myUser.email;
                    txtEmail.ReadOnly = true;
                    this.txtPais.Text = myUser.Pais;
                    this.txtCiudad.Text = myUser.Ciudad;
                    this.txtPostal.Text = myUser.codigoPostal;
                    this.txtDireccion.Text = myUser.Direccion;
                    this.txtUsuario.Text = myUser.usuario;
                    txtUsuario.ReadOnly = true;
                    this.txtContraseñaVieja.Text = myUser.clave;
                    txtContraseñaVieja.ReadOnly = true;
                    btnGuardarContra.Visible = false;
                    txtNuevaContra.Visible = false;
                    btnCancelar.Visible = false;

                }
            }
        }

        protected void btnHabilitar_Click(object sender, EventArgs e)
        {
            btnHabilitar.Visible = false;
            txtNuevaContra.Visible = true;
            btnGuardarContra.Visible = true;
            btnCancelar.Visible = true;
        }

        protected void btnGuardarContra_Click(object sender, EventArgs e)
        {
            string contra = txtNuevaContra.Text;
            this.txtContraseñaVieja.Text = contra;
            txtContraseñaVieja.ReadOnly = true;
            btnGuardarContra.Visible = false;
            txtNuevaContra.Visible = false;
            btnCancelar.Visible = false;
            btnHabilitar.Visible = true;
            if (Session["Usuario"] != null)
            {
                clsUser myUser = (clsUser)Session["Usuario"];
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var user = db.spEditarClave(myUser.idPersona, txtNuevaContra.Text);
                }
                Session.RemoveAll();
                Response.Redirect("~/Pages/Login.aspx");
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            btnGuardarContra.Visible = false;
            txtNuevaContra.Visible = false;
            btnHabilitar.Visible = true;
            btnCancelar.Visible = false;
        }

        protected void btnModificar_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                    clsUser myUser = (clsUser)Session["Usuario"];
                    using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                    {
                        var user = db.spEditarPerfil(myUser.idPersona, txtNombre.Text, txtNumero.Text, txtPais.Text, txtCiudad.Text, txtPostal.Text, txtDireccion.Text);
                    }
                    myUser.nombreCompleto = txtNombre.Text;
                    myUser.numeroTelefono = txtNumero.Text;
                    myUser.Pais = txtPais.Text;
                    myUser.Ciudad = txtCiudad.Text;
                    myUser.codigoPostal = txtPostal.Text;
                    myUser.Direccion = txtDireccion.Text;
                    Session["Usuario"] = myUser;
                }
                catch (Exception ex) { }
            }
        }
    }
}
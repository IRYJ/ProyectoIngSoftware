using Microsoft.Ajax.Utilities;
using Proyecto_Ing.Software.Clases;
using Proyecto_Ing.Software.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Ing.Software.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                txtEstatus.ReadOnly = true;
                try
                {
                    if (HttpContext.Current.Session["Usuario"] != null)
                    {
                        clsUser myUser = (clsUser)Session["Usuario"];
                        if (myUser.empleado == false)
                        {
                            Response.Redirect("~/Pages/Perfil.aspx");
                        }
                        using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                        {
                            var usuarios = db.spConsultarUsuarios();
                            gvUsuarios.DataSource = usuarios;
                            gvUsuarios.DataBind();
                        }
                        for (int i = 0; i < gvUsuarios.Rows.Count; i++)
                        {
                            string estado = Convert.ToString(gvUsuarios.Rows[i].Cells[4].Text);
                            if (estado == "1")
                            {
                                gvUsuarios.Rows[i].Cells[4].Text = "Empleado";
                            }
                            else
                            {
                                gvUsuarios.Rows[i].Cells[4].Text = "Usuario";
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("~/Default.aspx");
                    }

                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
        }

        protected void gvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Int32.Parse(gvUsuarios.SelectedRow.Cells[0].Text);
            using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
            {
                var user = db.spConsultarAdmin(id).ToList();
                if (user.Count > 0)
                {
                    clsUser Seleccion = new clsUser();
                    Seleccion.idPersona = user[0].idPersona;
                    Seleccion.nombreCompleto = user[0].nombreCompleto;
                    Seleccion.fechaNacimiento = DateTime.Parse(user[0].fechaNacimiento.ToString());
                    Seleccion.numeroTelefono = user[0].numeroTelefono;
                    Seleccion.email = user[0].email;
                    Seleccion.Pais = user[0].pais;
                    Seleccion.Ciudad = user[0].ciudad;
                    Seleccion.codigoPostal = user[0].codigoPostal;
                    Seleccion.Direccion = user[0].direccion;
                    Seleccion.usuario = user[0].usuario;
                    Seleccion.clave = user[0].clave;
                    Seleccion.estado = user[0].estado;
                    Seleccion.empleado = Convert.ToBoolean(Int32.Parse(user[0].empleado.ToString()));
                    /*-------------------------------------------------------------------------------------*/
                    this.txtIdUsuario.Text = Seleccion.idPersona.ToString();
                    this.txtNombre.Text = Seleccion.nombreCompleto;
                    if (Seleccion.estado == "A")
                    {
                        this.txtEstatus.Text = "Activo";
                    }
                    else if (Seleccion.estado == "I")
                    {
                        this.txtEstatus.Text = "Inactivo";
                    }
                    else if (Seleccion.estado == "S")
                    {
                        this.txtEstatus.Text = "Suspendido";
                    }
                    this.txtNacimiento.Text = Seleccion.fechaNacimiento.ToString();
                    this.txtNumero.Text = Seleccion.numeroTelefono;
                    this.txtEmail.Text = Seleccion.email;
                    this.txtPais.Text = Seleccion.Pais;
                    this.txtCiudad.Text = Seleccion.Ciudad;
                    this.txtPostal.Text = Seleccion.codigoPostal;
                    this.txtDireccion.Text = Seleccion.Direccion;
                    this.txtClave.Text = Seleccion.clave;
                }
            }
        }

        protected void lbtnActivar_Click(object sender, EventArgs e)
        {
            string data = txtIdUsuario.Text;
            if(data == ""){
                data = null;
            }
            if (data != null)
            {
                int iduser = Int32.Parse(txtIdUsuario.Text);
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var usuarios = db.spActivarUsuario(iduser);
                }
            }
            else
            {
                Response.Redirect("~/Pages/Admin.aspx");
            }
        }

        protected void lbtnInactivar_Click(object sender, EventArgs e)
        {
            string data = txtIdUsuario.Text;
            if (data == "")
            {
                data = null;
            }
            if (data != null)
            {
                int iduser = Int32.Parse(txtIdUsuario.Text);
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var usuarios = db.spInactivarUsuario(iduser);
                }
            }
            else
            {
                Response.Redirect("~/Pages/Admin.aspx");
            }
        }
        protected void lbtnSuspender_Click(object sender, EventArgs e)
        {
            string data = txtIdUsuario.Text;
            if (data == "")
            {
                data = null;
            }
            if (data != null)
            {
                int iduser = Int32.Parse(txtIdUsuario.Text);
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var usuarios = db.spSuspenderUsuario(iduser);
                }
            }
            else
            {
                Response.Redirect("~/Pages/Admin.aspx");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (txtIdUsuario.Text != null)
            {
                int id = Int32.Parse(txtIdUsuario.Text);
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var user = db.spConsultarAdmin(id).ToList();
                    if (user.Count > 0)
                    {
                        clsUser Seleccion = new clsUser();
                        Seleccion.idPersona = user[0].idPersona;
                        Seleccion.nombreCompleto = user[0].nombreCompleto;
                        Seleccion.fechaNacimiento = DateTime.Parse(user[0].fechaNacimiento.ToString());
                        Seleccion.numeroTelefono = user[0].numeroTelefono;
                        Seleccion.email = user[0].email;
                        Seleccion.Pais = user[0].pais;
                        Seleccion.Ciudad = user[0].ciudad;
                        Seleccion.codigoPostal = user[0].codigoPostal;
                        Seleccion.Direccion = user[0].direccion;
                        Seleccion.usuario = user[0].usuario;
                        Seleccion.clave = user[0].clave;
                        Seleccion.estado = user[0].estado;
                        Seleccion.empleado = Convert.ToBoolean(Int32.Parse(user[0].empleado.ToString()));
                        /*-------------------------------------------------------------------------------------*/
                        this.txtIdUsuario.Text = Seleccion.idPersona.ToString();
                        this.txtNombre.Text = Seleccion.nombreCompleto;
                        if (Seleccion.estado == "A")
                        {
                            this.txtEstatus.Text = "Activo";
                        }
                        else if (Seleccion.estado == "I")
                        {
                            this.txtEstatus.Text = "Inactivo";
                        }
                        else if (Seleccion.estado == "S")
                        {
                            this.txtEstatus.Text = "Suspendido";
                        }
                        this.txtNacimiento.Text = Seleccion.fechaNacimiento.ToString();
                        this.txtNumero.Text = Seleccion.numeroTelefono;
                        this.txtEmail.Text = Seleccion.email;
                        this.txtPais.Text = Seleccion.Pais;
                        this.txtCiudad.Text = Seleccion.Ciudad;
                        this.txtPostal.Text = Seleccion.codigoPostal;
                        this.txtDireccion.Text = Seleccion.Direccion;
                        this.txtClave.Text = Seleccion.clave;
                    }
                }
            }
            
        }

        protected void lbtnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                try
                {
                    int id = Int32.Parse(txtIdUsuario.Text);
                    using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                    {
                        var user = db.spEditarAdmin(id,txtNombre.Text,DateTime.Parse(txtNacimiento.Text),txtNumero.Text,txtEmail.Text,txtPais.Text,txtCiudad.Text,txtPostal.Text
                            ,txtDireccion.Text,txtClave.Text);
                    }
                }
                catch (Exception ex) { }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string data = txtIdUsuario.Text;
            if (data == "")
            {
                data = null;
            }
            if (data != null)
            {
                int iduser = Int32.Parse(txtIdUsuario.Text);
                using (ProyectoIngSoftwareEntities1 db = new ProyectoIngSoftwareEntities1())
                {
                    var usuarios = db.sspEliminarUsuario(iduser);
                }
                Response.Redirect("~/Pages/AdminEliminar.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/Admin.aspx");
            }
        }
    }
}
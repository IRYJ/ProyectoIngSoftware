<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro</title>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="~/CSS/Registro.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" src="../Images/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Crear una cuenta</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Nombre completo</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" placeholder="Nombre completo"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Fecha de nacimiento</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNacimiento" runat="server" placeholder="Fecha" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Ingrese su numero telefonico</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNumero" runat="server" placeholder="Numero de contacto" TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Ingrese su correo electronico</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtCorreo" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Pais</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtPais" runat="server" placeholder="Pais"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Ciudad</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtCiudad" runat="server" placeholder="Ciudad"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Codigo postal</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtPostal" runat="server" placeholder="Codigo postal" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Ingrese su direccion fisica</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server" placeholder="Direccion" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <label>Nombre de usuario</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtUsuario" runat="server" placeholder="Usuario"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Contraseña</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtClave" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Repetir contraseña</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtRepetirClave" runat="server" placeholder="Repetir contraseña" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <center>
                                        <div class="form-group">
                                            <%--<asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Registrarse" />--%>
                                            <span><asp:Button ID="Button1" runat="server" class="w-100 btn btn-lg btn-primary" Text="Registrarse" OnClick="Button1_Click" /></span>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="Login.aspx"><< Volver a login</a><br />
                    <br />
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

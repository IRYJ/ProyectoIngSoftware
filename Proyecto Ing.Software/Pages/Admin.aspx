<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://kit.fontawesome.com/cc010ce2b3.js" crossorigin="anonymous"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
                                        <h4>Detalles del miembro</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" src="../Images/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Id Usuario</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="txtIdUsuario" runat="server" placeholder="ID Miembro"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Nombre completo</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" placeholder="Nombre usuario"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <label>Estatus</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control mr-1" ID="txtEstatus" runat="server" placeholder="Estatus cuenta"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-success mr-1" ID="lbtnActivar" runat="server" OnClick="lbtnActivar_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                            <asp:LinkButton class="btn btn-warning mr-1" ID="lbtnInactivar" runat="server" OnClick="lbtnInactivar_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                            <asp:LinkButton class="btn btn-danger mr-1" ID="lbtnSuspender" runat="server" OnClick="lbtnSuspender_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Nacimiento</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNacimiento" runat="server" placeholder="Fecha de nacimiento"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Telefono</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtNumero" runat="server" placeholder="Numero contacto"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <label>Email</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Pais</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPais" runat="server" placeholder="Pais"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Ciudad</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtCiudad" runat="server" placeholder="Ciudad"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Codigo Postal</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPostal" runat="server" placeholder="Codigo postal"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Direccion</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server" placeholder="Direccion completa" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Contraseña</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtClave" runat="server" placeholder="Contraseña"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <label>Guardar cambios</label>
                                    <div class="form-group">
                                        <asp:LinkButton class="btn btn-info mr-1" ID="lbtnGuardar" runat="server" OnClick="lbtnGuardar_Click">Guardar <i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Borrar usuario permanentemente" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="../Default.aspx"><< Volver al inicio</a><br />
                    <br />
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Lista de miembros</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="gvUsuarios" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvUsuarios_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="idPersona" HeaderText="Id Usuario" />
                                            <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                                            <asp:BoundField DataField="nombreCompleto" HeaderText="Nombre" />
                                            <asp:BoundField DataField="email" HeaderText="Email" />
                                            <asp:BoundField DataField="empleado" HeaderText="Empleado" />
                                            <asp:CommandField HeaderText="Consultar" ShowSelectButton="True" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

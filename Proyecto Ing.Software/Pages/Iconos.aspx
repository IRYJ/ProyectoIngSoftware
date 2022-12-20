<%@ Page Title="Mis iconos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iconos.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Iconos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h2 style="margin-top:5vh">Mis iconos</h2>
    </center>
    <div class="col-lg-8" style="margin-top: 30px">
        <center>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="6">
                <HeaderStyle BackColor="Black" Font-Bold="true" Font-Size="Large" ForeColor="White" HorizontalAlign="Center" />
                <ItemTemplate>
                    <%-- 
                    <div style="width: 150px; text-align: center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("DataImagen","~/Iconos/Usuarios/{0}")%>' Width="100" Height="120" />
                        <br />
                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("imagen") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcion") %>'></asp:Label>
                        <br />
                        <a href='<%#Eval("DataImagen","~/Iconos/Usuarios/{0}")%>' download class="btn btn-sm btn-outline-secondary">Descargar</a>
                    </div>
                    --%>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 mt-2">
                                <div class="card mb-8 shadow-sm">
                                    <asp:Image ID="Image1" runat="server" class="bd-placeholder-img card-img-top" Width="200px" Height="225" ImageAlign="Top" xmlns="http://www.w3.org/2000/svg" role="img" preserveAspectRatio="xMidYMid slice" focusable="false" ImageUrl='<%#Eval("DataImagen","~/Iconos/Usuarios/{0}")%>' />
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <%-- <a href="/Iconos/svg/cil-4k.svg" download class="btn btn-sm btn-outline-secondary">Descargar</a>--%>
                                                <a href='<%#Eval("DataImagen","../Iconos/Usuarios/{0}")%>' download class="btn btn-sm btn-outline-secondary">Descargar</a>
                                                
                                            </div>
                                            <small class="text-muted">Tic-Icon</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </center>
    </div>
</asp:Content>

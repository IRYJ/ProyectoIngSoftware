<%@ Page Title="Subir icono" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subida.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.Subida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre del icono"></asp:Label>
        <br />
        <asp:TextBox ID="txtIdIcono" runat="server"></asp:TextBox>
    </div>
    <div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Descripcion del icono"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombreIcono" runat="server"></asp:TextBox>
    </div>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" class="btn btn-light" Text="Subir archivo" Width="150" OnClick="Button1_Click" />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <a href="../Default.aspx" class="btn btn-dark" width="150">Volver a inicio</a>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

<%@ Page Title="Preguntas frecuentes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Proyecto_Ing.Software.Pages.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.mins.css" rel="stylesheet" />
    <link href="../CSS/FAQ.css" rel="stylesheet" />
    <section>
        <div class="faqs-container">
            <center><h2>Preguntas frecuentes</h2></center>

            <div class="questions-container">
                <div class="content-container">
                    <div class="faq-header">
                        <h3>¿Como puedo subir mis propios iconos?</h3>
                        <span class="open active">+</span>
                        <span class="close">-</span>
                    </div>

                    <div class="content">
                        <p>
                            Para subir tus propios iconos debes iniciar sesion, despues de esto podras encontrar el boton en el apartado inicial
                        </p>
                    </div>
                </div>

                <div class="content-container">
                    <div class="faq-header">
                        <h3>Porque no encuentro mis iconos en la pagina principal</h3>
                        <span class="open active">+</span>
                        <span class="close">-</span>
                    </div>

                    <div class="content">
                        <p>
                            Todo icono debe ser expuesto antes de una validación previa antes de ser expuesto a todo publico
                        </p>
                    </div>
                </div>

                <div class="content-container">
                    <div class="faq-header">
                        <h3>Quiero descargar todos los iconos en mi computador</h3>
                        <span class="open active">+</span>
                        <span class="close">-</span>
                    </div>

                    <div class="content">
                        <p>
                            En el menu principal podras encontrar un boton para descargar nuestro paquete de iconos
                        </p>
                    </div>
                </div>
                <div class="content-container">
                    <div class="faq-header">
                        <h3>¿Como puedo contactarlos?</h3>
                        <span class="open active">+</span>
                        <span class="close">-</span>
                    </div>
                    <div class="content">
                        <p>
                            Una vez iniciada la sesion podras utilizar el menu desplegable en la parte superior derecha para enviarnos tus comentarios
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <script src="../Scripts/accordion.js"></script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/LogIn.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MiClub.LogIn1" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Inicio de Sesion" meta:resourcekey="Label1Resource1"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Usuario" meta:resourcekey="Label2Resource1"></asp:Label>
    <asp:TextBox ID="UsuarioTextBox" runat="server" meta:resourcekey="UsuarioTextBoxResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Pass" meta:resourcekey="Label3Resource1"></asp:Label>
    <asp:TextBox ID="PassTextBox" runat="server" meta:resourcekey="PassTextBoxResource1" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="IniciarButton" runat="server" Text="Iniciar Sesion" OnClick="IniciarButton_Click" style="height: 26px" meta:resourcekey="IniciarButtonResource1" />
    &nbsp;
    <asp:Button ID="RegistrarseButton" runat="server" OnClick="RegistrarseButton_Click" Text="Registrarse" />
    <br />
    <br />
    <asp:Button ID="EnButton" runat="server" Text="English" OnClick="EnButton_Click" />
    <asp:Button ID="EsButton2" runat="server" Text="Español" OnClick="EsButton2_Click" />
</asp:Content>

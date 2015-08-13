<%@ Page Title="" Language="C#" MasterPageFile="~/LogIn.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MiClub.LogIn1" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <img src="Recursos/LogImg.png" style="margin-left:480px"/>
    <div class="form-group" style="border:1px solid black; margin-left:475px; width:325px; margin-top:10px">
    <div class="form-group" style="margin-top:20px; margin-left:15px">
    <label for="exampleInputEmail1">Usuario</label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="UsuarioTextBox" runat="server" meta:resourcekey="UsuarioTextBoxResource1" Width="182px"></asp:TextBox>
  </div>
  <div class="form-group" style="margin-left:15px">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox ID="PassTextBox" runat="server" meta:resourcekey="PassTextBoxResource1" TextMode="Password" Width="182px"></asp:TextBox>
  </div>
  <div style="margin-bottom:13px; width:304px; margin-left:10px">
  <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Iniciar Sesion" OnClick="IniciarButton_Click" meta:resourcekey="IniciarButtonResource1" Height="36px" />
    
    <asp:Button ID="Button2" runat="server" OnClick="RegistrarseButton_Click" class="btn btn-primary" Text="Registrarse" Width="148px" />
    </div>
    </div>
    <link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
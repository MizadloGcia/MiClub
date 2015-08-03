<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroClubes.aspx.cs" Inherits="MiClub.RegistroClubes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="RegistroLabel" runat="server" Text="Registro de Clubs"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="NombreLabel" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="NombreTextBox" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="GuardarButton" runat="server" OnClick="Button1_Click" Text="Guardar" />
    &nbsp;<asp:Button ID="VolverButton" runat="server" Text="Volver a Clubes" OnClick="VolverButton_Click" Visible="False" />
    </p>
    <p style="margin-left: 160px">
        <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" />
    </p>
    <p style="margin-left: 160px">
        &nbsp;</p>
    <p style="margin-left: 160px">
        <asp:Label ID="AsignarLabel" runat="server" Text="Asignar Monto de Cuota" Visible="False"></asp:Label></p>
    <p style="margin-left: 160px">
        <asp:Label ID="MontoLabel" runat="server" Text="Monto: " Visible="False"></asp:Label>
        <asp:TextBox ID="MontoCuotaTextBox" runat="server" Visible="False"></asp:TextBox>
        <asp:Button ID="GuardarMontoButton" runat="server" Text="Guardar" Visible="False" OnClick="GuardarMontoButton_Click" />
    </p>
    <p style="margin-left: 160px">
        <asp:TextBox ID="IdClubTextBox" runat="server" Visible="False"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </p>
</asp:Content>

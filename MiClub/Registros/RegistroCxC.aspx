<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroCxC.aspx.cs" Inherits="MiClub.Registros.RegistroCxC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Registro CxC"></asp:Label>

    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Fecha"></asp:Label>
    <asp:TextBox ID="FechaTextBox" runat="server" TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FechaTextBox" ErrorMessage="Debe seleccionar la fecha" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    
    <asp:Label ID="Label3" runat="server" Text="Club"></asp:Label>
    <asp:DropDownList ID="ClubDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ClubDropDownList_SelectedIndexChanged"></asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Tipo"></asp:Label>
    <asp:DropDownList ID="TipoDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TipoDropDownList_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="TipoMultaLabel" runat="server" Text="Tipo Multa" Visible="False"></asp:Label>
    <asp:DropDownList ID="TipoMultaDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TipoMultaDropDownList_SelectedIndexChanged1" Visible="False">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Miembro"></asp:Label>
    <asp:DropDownList ID="MiembroDropDownList" runat="server">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Monto"></asp:Label>
    <asp:TextBox ID="MontoTextBox" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <asp:Button ID="RegistrarButton" runat="server" Text="Registrar" OnClick="RegistrarButton_Click" />
&nbsp;&nbsp;
    <asp:Button ID="VerButton" runat="server" Text="Ver Cuentas" />
</asp:Content>

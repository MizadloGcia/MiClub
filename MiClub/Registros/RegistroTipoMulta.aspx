<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroTipoMulta.aspx.cs" Inherits="MiClub.Registros.RegistroTipoMulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label6" runat="server" Text="Registrar nuevo Tipo de Multa"></asp:Label><br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label>
    <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="Debe introducir la Descripcion de la multa" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Monto"></asp:Label>
    <asp:TextBox ID="MontoMultaTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MontoMultaTextBox" ErrorMessage="Debe introducir el Monto de la multa" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="El Monto no es correcto" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="MontoMultaTextBox">*</asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Club: "></asp:Label>
    <asp:DropDownList ID="ClubMultaDropDownList" runat="server"></asp:DropDownList>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="RegistrarButton" runat="server" Text="Registrar" OnClick="RegistrarButton_Click" />
</asp:Content>

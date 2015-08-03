<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistroMontoCuota.aspx.cs" Inherits="MiClub.Registros.RegistroMontoCuota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Label2" runat="server" Text="Establecer monto de Cuota: "></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nuevo monto: "></asp:Label>
    <asp:TextBox ID="MontoTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MontoTextBox" ErrorMessage="Debe introducir el Monto de la cuota" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Club: "></asp:Label>
    <asp:DropDownList ID="ClubCuotaDropDownList" runat="server"></asp:DropDownList>
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <br />
</asp:Content>

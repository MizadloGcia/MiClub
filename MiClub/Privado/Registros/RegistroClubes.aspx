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
        <asp:RequiredFieldValidator ID="NomClubRequiredFieldValidator" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Debe introducie el nombre del Club" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="NomClubRegularExpressionValidator" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="El nombre del Club solo puede contener letras (A-Z)" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">*</asp:RegularExpressionValidator>
    &nbsp;
        <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" OnClick="LimpiarButton_Click" CausesValidation="False" />
&nbsp;<asp:Button ID="GuardarButton" runat="server" OnClick="Button1_Click" Text="Guardar" />
    &nbsp;<asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" OnClick="ButtonEliminar_Click" CausesValidation="False" />
    </p>
    <asp:ValidationSummary ID="ClubValidationSummary" runat="server" ForeColor="Red" style="margin-left: 162px" />
    <p>
    </p>
    <p style="margin-left: 160px">
        <asp:Label ID="AsignarLabel" runat="server" Text="Asignar Monto de Cuota" Visible="False"></asp:Label></p>
    <p style="margin-left: 160px">
        <asp:Label ID="MontoLabel" runat="server" Text="Monto: " Visible="False"></asp:Label>
        <asp:TextBox ID="MontoCuotaTextBox" runat="server" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="MontoClubRequiredFieldValidator" runat="server" ControlToValidate="MontoCuotaTextBox" Enabled="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Visible="False">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="MontoClubRegularExpressionValidator" runat="server" ControlToValidate="MontoCuotaTextBox" Enabled="False" ErrorMessage="El Monto no es correcto" ForeColor="Red" ValidationExpression="^[0-9]*" Visible="False">*</asp:RegularExpressionValidator>
        <asp:Button ID="GuardarMontoButton" runat="server" Text="Guardar" Visible="False" OnClick="GuardarMontoButton_Click" />
    </p>
    <asp:ValidationSummary ID="MontoCuotaValidationSummary" runat="server" Enabled="False" ForeColor="Red" style="margin-left: 163px" Visible="False" />
    <p>
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

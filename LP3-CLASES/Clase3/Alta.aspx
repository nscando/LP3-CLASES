<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta.aspx.cs" Inherits="LP3_CLASES.Clase3.Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Dni"></asp:Label>
            <asp:TextBox ID="txbDni" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="txbApellido" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Provincia"></asp:Label>
            <asp:TextBox ID="txbProvincia" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnAceptar" runat="server" Text="Alta Alumno" OnClick="btnAceptar_Click" />
            <asp:HyperLink ID="regresar" runat="server" NavigateUrl="~/Clase3/Ejercicio1.aspx">Ir al inicio</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="mensajeAlerta" runat="server" Text="-----"></asp:Label>
        </div>
    </form>
</body>
</html>

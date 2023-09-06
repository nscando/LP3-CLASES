<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContadorVisitas.aspx.cs" Inherits="LP3_CLASES.Clase2.ContadorVisitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Contador de visitas: "></asp:Label>

            <asp:Label ID="lblContador" runat="server" Text="----"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="regresarInicio" runat="server" NavigateUrl="~/Clase2/Ejercicio1.aspx">Regresar al inicio</asp:HyperLink>

        </div>
    </form>
</body>
</html>

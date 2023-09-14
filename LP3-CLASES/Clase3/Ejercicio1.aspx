<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="LP3_CLASES.Clase3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
        /* Aplicar estilos al h1 para centrar el texto */
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD - Alumnos</h1>
            <br />
            <br />
            <asp:HyperLink ID="alta" runat="server" NavigateUrl="~/Clase3/Alta.aspx">Alta</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="consulta" runat="server" NavigateUrl="~/Clase3/Consulta.aspx">Consulta</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="modificacion" runat="server" NavigateUrl="~/Clase3/Modificacion.aspx">Modificación</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="baja" runat="server" NavigateUrl="~/Clase3/Baja.aspx">Baja</asp:HyperLink>
        </div>
    </form>
</body>
</html>

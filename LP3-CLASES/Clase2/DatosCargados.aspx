<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosCargados.aspx.cs" Inherits="LP3_CLASES.Clase2.DatosCargados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="datosCargados" runat="server" Text="Aca se muestran los datos cargados"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="regresarInicio" runat="server" NavigateUrl="~/Clase2/Ejercicio1.aspx">Regresar al inicio</asp:HyperLink>
        </div>
    </form>
</body>
</html>

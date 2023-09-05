<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="LP3_CLASES.Clase1.Ejercicio11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="CALCULADORA"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="SELECCIONE UNA OPERACION A REALIZAR"></asp:Label>
            <br />
            <asp:RadioButton ID="rbSuma" runat="server" Text="SUMA" GroupName="Operaciones" />
            <asp:RadioButton ID="rbResta" runat="server" Text="RESTA" GroupName="Operaciones" />
            <asp:RadioButton ID="rbMultiplicacion" runat="server" Text="MULTIPLICACIÓN" GroupName="Operaciones" />
            <asp:RadioButton ID="rbDivision" runat="server" Text="DIVISIÓN" GroupName="Operaciones" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="INSERTE UN NUMERO: "></asp:Label>
            <asp:TextBox ID="num1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="INSERTE UN NUMERO: "></asp:Label>
            <asp:TextBox ID="num2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCalcular" runat="server" Text="CALCULAR" OnClick="eBtnCalcular" />
            
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="RESULTADO: ">

            </asp:Label><asp:Label ID="lblResultado" runat="server" Text=" ----------"></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormClientes.aspx.cs" Inherits="CantinaTioWell.FormClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Nome Cliente:
                <asp:TextBox Width="200" ID="txtNomeCliente" runat="server" />
            </p>

            <p>
                Telefone:
                <asp:TextBox Width="200" ID="txtTelefoneCliente" runat="server" />
            </p>

            <asp:Button ID="btnGravaCli" Text="Gravar Cliente" runat="server" OnClick="btnGravaCli_Click"/>
            <button><a class="nav-link" href="/ConsultaClientes.aspx">Consultar Clientes</a></button>
        </div>
    </form>
</body>
</html>

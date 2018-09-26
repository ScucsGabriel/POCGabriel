<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormProdutos.aspx.cs" Inherits="CantinaTioWell.FormProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Produtos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Produto:
                <asp:TextBox Width="200" ID="txtDescProduto" runat="server" />
            </p>

            <p>
                Valor:
                <asp:TextBox Width="200" ID="txtValorProduto" runat="server" />
            </p>

            <p>
                Quantidade:
                <asp:TextBox Width="200" ID="txtQuantidade" runat="server" />
            </p>

            <asp:Button ID="btnGravaProd" Text="Gravar Produto" runat="server" OnClick="btnGravaProd_Click"/>
            <asp:Button ID="btn" class="nav-link" href="/ConsultaProdutos.aspx">Consultar Produtos</asp:Button></button>
        </div>
    </form>
</body>
</html>

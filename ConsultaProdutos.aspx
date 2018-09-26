<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaProdutos.aspx.cs" Inherits="CantinaTioWell.ConsultaProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>Descrição do Produto</th>
                        <th>Valor</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
                <tbody id="resultProduto" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaPedidos.aspx.cs" Inherits="CantinaTioWell.ConsultaPedidos" %>

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
                        <th>Valor do Pedido</th>
                        <th>Data do Pedido</th>
                        <th>Cliente</th>
                        <th>Descrição</th>
                    </tr>
                </thead>
                <tbody id="resultPedido" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

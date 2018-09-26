<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaClientes.aspx.cs" Inherits="CantinaTioWell.ConsultaClientes" %>

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
                        <th>Nome Cliente</th>
                        <th>Telefone</th>
                    </tr>
                </thead>
                <tbody id="resultCliente" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

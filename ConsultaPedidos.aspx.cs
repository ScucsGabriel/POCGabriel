using CantinaTioWellController.Controller;
using CantinaTioWellController.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CantinaTioWell
{
    public partial class ConsultaPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Pedidos> ConsultaPedido = new Pedido().ConsultarPedidos();
            if (ConsultaPedido.Count > 0)
            {
                StringBuilder gridPedido = new StringBuilder();
                foreach (var item in ConsultaPedido)
                {
                    gridPedido.Append(" <tr> ");
                    gridPedido.Append(String.Format(" <td>{0}</td> ", item.valorPedido));
                    gridPedido.Append(String.Format(" <td>{0}</td> ", item.dataPedido));
                    gridPedido.Append(String.Format(" <td>{0}</td> ", item.clienteNome));
                    gridPedido.Append(String.Format(" <td>{0}</td> ", item.descricao));
                    gridPedido.Append(" <tr> ");
                }

                resultPedido.InnerHtml = gridPedido.ToString();
            }
        }
    }
}
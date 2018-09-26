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
    public partial class ConsultaClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Clientes> ConsultaCliente = new Cliente().ConsultarClientes();
            if (ConsultaCliente.Count > 0)
            {
                StringBuilder gridCliente = new StringBuilder();
                foreach (var item in ConsultaCliente)
                {
                    gridCliente.Append(" <tr> ");
                    gridCliente.Append(String.Format(" <td>{0}</td> ", item.nomeCliente));
                    gridCliente.Append(String.Format(" <td>{0}</td> ", item.telefoneCliente));
                    gridCliente.Append(" <tr> ");
                }

                resultCliente.InnerHtml = gridCliente.ToString();
            }
        }
    }
}
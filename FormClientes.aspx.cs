using CantinaTioWellController.Controller;
using CantinaTioWellController.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CantinaTioWell
{
    public partial class FormClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravaCli_Click(object sender, EventArgs e)
        {
            string nomeCliente = txtNomeCliente.Text;
            string telefoneCliente = txtTelefoneCliente.Text;

            Clientes gravaCliente = new Cliente().InserirCliente(nomeCliente, telefoneCliente);
        }
    }
}
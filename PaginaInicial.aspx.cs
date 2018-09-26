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
    public partial class PaginaInicial : System.Web.UI.Page
    {
        public void montaLista()
        {
            List<Produtos> ConsultaProduto = new Produto().ConsultarProdutos();
            if (ConsultaProduto.Count > 0)
            {
                StringBuilder gridProduto = new StringBuilder();
                foreach (var item in ConsultaProduto)
                {
                    gridProduto.Append(" <tr> ");
                    gridProduto.Append(String.Format(" <td>{0}</td> ", item.descProduto));
                    gridProduto.Append(String.Format(" <td>{0}</td> ", item.valorProduto));
                    gridProduto.Append(String.Format(" <td>{0}</td> ", item.quantidade));
                    gridProduto.Append(" <tr> ");
                }

                resultProduto.InnerHtml = gridProduto.ToString();
            }

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
                    gridPedido.Append(String.Format(" <td>{0}</td> ", item.quantidade));
                    gridPedido.Append(" <tr> ");
                }

                resultPedido.InnerHtml = gridPedido.ToString();
            }

            List<Dividas> ConsultaDivida = new Divida().ConsultarDividas();
            if (ConsultaDivida.Count > 0)
            {
                StringBuilder gridDivida = new StringBuilder();
                foreach (var item in ConsultaDivida)
                {
                    gridDivida.Append(" <tr> ");
                    gridDivida.Append(String.Format(" <td>{0}</td> ", item.clienteDevedor));
                    gridDivida.Append(String.Format(" <td>{0}</td> ", item.valorDivida));
                    gridDivida.Append(String.Format(" <td>{0}</td> ", item.valorRestante));
                    gridDivida.Append(" <tr> ");
                }

                resultDivida.InnerHtml = gridDivida.ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
          montaLista();     
        }

        protected void btnGravaProd_Click(object sender, EventArgs e)
        {
            string descricao = txtDescProduto.Text;
            double valor = Convert.ToDouble(txtValorProduto.Text);
            int quantidade = Convert.ToInt32(txtQuantidade.Text);

            Produtos gravaProduto = new Produto().InserirProduto(descricao, valor, quantidade);
            montaLista();

            txtDescProduto.Text = ("");
            txtValorProduto.Text = ("");
            txtQuantidade.Text = ("");
        }

        protected void btnGravaCliente_Click(object sender, EventArgs e)
        {
            string nomeCliente = txtNomeCliente.Text;
            string telefoneCliente = txtTelefoneCliente.Text;

            Clientes gravaCliente = new Cliente().InserirCliente(nomeCliente, telefoneCliente);
            montaLista();

            txtNomeCliente.Text = ("");
            txtTelefoneCliente.Text = ("");
        }

        protected void btnGravaPedido_Click(object sender, EventArgs e)
        {
            double valorPedido = Convert.ToDouble(txtValorPedido.Text);
            string dataPedido = txtDataPedido.Text;
            string clienteNome = txtNomeCli.Text;
            string descricao = txtDescricao.Text;
            int quantidade = Convert.ToInt32(txtQuantPed.Text);

            Pedidos gravaPedido = new Pedido().InserirPedido(valorPedido, dataPedido, clienteNome, descricao, quantidade);
            montaLista();

            txtValorPedido.Text = ("");
            txtDataPedido.Text = ("");
            txtNomeCli.Text = ("");
            txtDescricao.Text = ("");
            txtQuantPed.Text = ("");
        }

        protected void btnExcluiCliente_Click(object sender, EventArgs e)
        {
            string nomeCliente = txtNomeExcluir.Text;

            Clientes excluiCliente = new Cliente().ExcluirClientes(nomeCliente);
            montaLista();

            txtNomeExcluir.Text = ("");
        }

        protected void btnExcluiProduto_Click(object sender, EventArgs e)
        {
            string produto = txtExcluiProduto.Text;

            Produtos excluiProduto = new Produto().ExcluirProdutos(produto);
            montaLista();

            txtExcluiProduto.Text = ("");
        }

        protected void btnExcluiPedido_Click(object sender, EventArgs e)
        {
            string pedido = txtExcluiPedido.Text;
            string clienteNome = txtExcluiClienteNome.Text;

            Pedidos excluiPedido = new Pedido().ExcluirPedidos(pedido, clienteNome);
            montaLista();

            txtExcluiPedido.Text = ("");
            txtExcluiClienteNome.Text = ("");
        }

        protected void btnEditaProd_Click(object sender, EventArgs e)
        {
            string descricao = txtEditDesc.Text;
            double valor = Convert.ToDouble(txtEditValor.Text);
            int quantidade = Convert.ToInt32(txtEditQuant.Text);

            List<Produtos> gravaProduto = new Produto().EditarProdutos(descricao, valor, quantidade);
            montaLista();

            txtEditDesc.Text = ("");
            txtEditValor.Text = ("");
            txtEditQuant.Text = ("");
        }

        protected void btnEditCli_Click(object sender, EventArgs e)
        {
            string nomeCliente = txtEditNome.Text;
            string telefoneCliente = txtEditTel.Text;

            List<Clientes> gravaCliente = new Cliente().EditarClientes(nomeCliente, telefoneCliente);
            montaLista();

            txtEditNome.Text = ("");
            txtEditTel.Text = ("");
        }

        protected void btnEditPed_Click(object sender, EventArgs e)
        {
            double valorPedido = Convert.ToDouble(txtEditValorPed.Text);
            string dataPedido = txtEditData.Text;
            string clienteNome = txtEditClient.Text;
            string descricao = txtEditPed.Text;
            int quantidade = Convert.ToInt32(txtEditQuantPed.Text);

            List<Pedidos> gravaPedido = new Pedido().EditarPedidos(valorPedido, dataPedido, clienteNome, descricao, quantidade);
            montaLista();

            txtEditValorPed.Text = ("");
            txtEditData.Text = ("");
            txtEditClient.Text = ("");
            txtEditPed.Text = ("");
            txtEditQuantPed.Text = ("");
        }

        protected void btnGravaDivida_Click(object sender, EventArgs e)
        {
            string clienteDevedor = txtClienteDevedor.Text;
            double valorDivida = Convert.ToDouble(txtValorDivida.Text);

            Dividas gravaDivida = new Divida().InserirDivida(clienteDevedor, valorDivida);
            montaLista();

            txtClienteDevedor.Text = ("");
            txtValorDivida.Text = ("");
        }

        protected void btnExcluiDivida_Click(object sender, EventArgs e)
        {
            string divida = txtExcluiDivida.Text;

            Dividas excluiDivida = new Divida().ExcluirDividas(divida);
            montaLista();

            txtExcluiDivida.Text = ("");
        }

        protected void btnEditaDivida_Click(object sender, EventArgs e)
        {
            string clienteDevedor = txtEditaDividaCliente.Text;
            double valorDivida = Convert.ToDouble(txtEditaValorDivida.Text);
            double valorPago = Convert.ToDouble(txtEditaValorRestante.Text);

            List<Dividas> gravaDivida = new Divida().EditarDividas(clienteDevedor, valorDivida, valorPago);
            montaLista();

            txtEditaDividaCliente.Text = ("");
            txtEditaValorDivida.Text = ("");
            txtEditaValorRestante.Text = ("");
        }
    }
}
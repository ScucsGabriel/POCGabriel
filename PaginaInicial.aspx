<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicial.aspx.cs" Inherits="CantinaTioWell.PaginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cantina do Tio Well</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/resume.min.css" rel="stylesheet">
</head>
<body id="paginaInicial">
    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Cantina do Tio Well</span>
            <span class="d-none d-lg-block">
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/vitrine.jpg" alt="">
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#sobre">Sobre</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#cadastroProdutos">Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#cadastroClientes">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#cadastroPedidos">Pedidos</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#cadastroDividas">Devedores</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

        <section class="" id="sobre">
            <div class="my-auto">
                <h1 class="mb-0">Cantina do
           
                    <span class="text-primary">Tio Well</span>
                </h1>
                <div class="subheading mb-5">
                    Avenida Nações Unidas, 14.171 - 16° andar - Marble Tower - Rochaverá Corporate Towers
           
                    <a href="mailto:name@email.com">cantinatiowell@everis.com</a>
                </div>
                <p class="lead mb-5">Cantina do Tio Well - Serviço Web para controle de Clientes, Produtos e Pedidos!</p>
            </div>
        </section>

        <hr class="m-0">
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cadastroProdutos">            
              <div class="my-auto">
                <h2 class="mb-5">Cadastrar Produtos</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Produto:
                            <br />
                <asp:TextBox Width="200" ID="txtDescProduto" runat="server" />
                        </p>

                        <p>
                            Valor:
                            <br />
                            <asp:TextBox Width="200" ID="txtValorProduto" runat="server" />
                        </p>

                        <p>
                            Quantidade:
                            <br />
                            <asp:TextBox Width="200" ID="txtQuantidade" runat="server" />
                        </p>
                        <asp:Button ID="btnGravaProd" Text="Gravar" runat="server" OnClick="btnGravaProd_Click" CssClass="btn btn-success"/>
                    </div>                    
                </div>               
            </div>           

                <br />
                <br />
                <br />
                
                <div class="my-auto">
                <h2 class="mb-5">Lista de Produtos</h2>
                    <div>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Descrição do Produto</th>
                                <th>Valor(R$)</th>
                                <th>Quantidade</th>
                            </tr>
                        </thead>
                        <tbody id="resultProduto" runat="server">
                        </tbody>
                    </table>
                    </div>
              </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Excluir Produtos</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Produto:
                            <br />
                            <asp:TextBox Width="200" ID="txtExcluiProduto" runat="server" />
                        </p>
                        <asp:Button ID="btnExcluiProduto" Text="Excluir" runat="server" OnClick="btnExcluiProduto_Click" CssClass="btn btn-danger"/>
                    </div>                    
                </div>
             </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Editar Produtos</h2>
                    <div>
                        <p>
                            Produto:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditDesc" runat="server" />
                        </p>
                        
                        <p>
                            Valor:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditValor" runat="server" />
                        </p>

                        <p>
                            Quantidade:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditQuant" runat="server" />
                        </p>
                        <asp:Button ID="btnEditaProd" Text="Salvar" runat="server" OnClick="btnEditaProd_Click" CssClass="btn btn-dark"/>
                    </div>
              </div>
        </section>

        <hr class="m-0">
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cadastroClientes">
              <div class="my-auto">
                <h2 class="mb-5">Cadastrar Clientes</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Cliente:
                            <br />
                <asp:TextBox Width="200" ID="txtNomeCliente" runat="server" />
                        </p>

                        <p>
                            Telefone:
                            <br />
                <asp:TextBox Width="200" ID="txtTelefoneCliente" runat="server" />
                        </p>
                        <asp:Button ID="btnGravaCliente" Text="Gravar" runat="server" OnClick="btnGravaCliente_Click" CssClass="btn btn-success"/>
                    </div>                    
                </div>                 
            </div>       

                <br />
                <br />
                <br />
            
                <div class="my-auto">
                <h2 class="mb-5">Lista de Clientes</h2>
                    <div>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Nome do Cliente</th>
                                <th>Telefone</th>
                            </tr>
                        </thead>
                        <tbody id="resultCliente" runat="server">
                        </tbody>
                    </table>
                    </div>
                    <br />                    
              </div>

                <br />
                <br />
                <br />
             
            <div class="my-auto">
                <h2 class="mb-5">Excluir Clientes</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtNomeExcluir" runat="server" />
                        </p>
                        <asp:Button ID="btnExcluiCliente" Text="Excluir" runat="server" OnClick="btnExcluiCliente_Click" CssClass="btn btn-danger"/>
                    </div>                    
                </div>
              </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Editar Clientes</h2>
                    <div>
                        <p>
                            Nome do Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditNome" runat="server" />
                        </p>
                        
                        <p>
                            Telefone:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditTel" runat="server" />
                        </p>

                        <asp:Button ID="btnEditCli" Text="Salvar" runat="server" OnClick="btnEditCli_Click" CssClass="btn btn-dark"/>
                    </div>
              </div>

        </section>

        <hr class="m-0">
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cadastroPedidos">
            
              <div class="my-auto">
                <h2 class="mb-5">Cadastrar Pedidos</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Valor do Pedido:
                            <br />
                <asp:TextBox Width="200" ID="txtValorPedido" runat="server" />
                        </p>

                        <p>
                            Data do Pedido:
                            <br />
                <asp:TextBox Width="200" ID="txtDataPedido" runat="server" />
                        </p>

                        <p>
                            Cliente:
                            <br />
                <asp:TextBox Width="200" ID="txtNomeCli" runat="server" />
                        </p>

                        <p>
                            Descrição:
                            <br />
                <asp:TextBox Width="200" ID="txtDescricao" runat="server" />
                        </p>

                        <p>
                            Quantidade:
                            <br />
                <asp:TextBox Width="200" ID="txtQuantPed" runat="server" />
                        </p>
                        <asp:Button ID="btnGravaPedido" Text="Gravar" runat="server" OnClick="btnGravaPedido_Click" CssClass="btn btn-success"/>
                    </div>
                </div>               
            </div>

                <br />
                <br />
                <br />
                
                <div class="my-auto">
                <h2 class="mb-5">Lista de Pedidos</h2>
                    <div>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Valor do Pedido(R$)</th>
                                <th>Data do Pedido</th>
                                <th>Nome do Cliente</th>
                                <th>Descrição</th>
                                <th>Quantidade</th>
                            </tr>
                        </thead>
                        <tbody id="resultPedido" runat="server">
                        </tbody>
                    </table>
                    </div>
              </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Excluir Pedidos</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Pedido:
                            <br />
                            <asp:TextBox Width="200" ID="txtExcluiPedido" runat="server" />
                        </p>

                        <p>
                            Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtExcluiClienteNome" runat="server" />
                        </p>
                        <asp:Button ID="btnExcluiPedido" Text="Excluir" runat="server" OnClick="btnExcluiPedido_Click" CssClass="btn btn-danger"/>
                    </div>                    
                </div>
              </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Editar Pedidos</h2>
                    <div>
                        <p>
                            Valor do Pedido:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditValorPed" runat="server" />
                        </p>
                        
                        <p>
                            Data do Pedido:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditData" runat="server" />
                        </p>

                        <p>
                            Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditClient" runat="server" />
                        </p>

                        <p>
                            Descrição:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditPed" runat="server" />
                        </p>

                        <p>
                            Quantidade:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditQuantPed" runat="server" />
                        </p>

                        <asp:Button ID="btnEditPed" Text="Salvar" runat="server" OnClick="btnEditPed_Click" CssClass="btn btn-dark"/>
                    </div>
              </div>
        </section>

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cadastroDividas">            
              <div class="my-auto">
                <h2 class="mb-5">Devedores</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Cliente:
                            <br />
                <asp:TextBox Width="200" ID="txtClienteDevedor" runat="server" />
                        </p>

                        <p>
                            Valor da Dívida:
                            <br />
                            <asp:TextBox Width="200" ID="txtValorDivida" runat="server" />
                        </p>

                        <asp:Button ID="btnGravaDivida" Text="Gravar" runat="server" OnClick="btnGravaDivida_Click" CssClass="btn btn-success"/>
                    </div>                    
                </div>               
            </div>           

                <br />
                <br />
                <br />
                
                <div class="my-auto">
                <h2 class="mb-5">Lista de Devedores</h2>
                    <div>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Cliente</th>
                                <th>Valor da Dívida(R$)</th>
                            </tr>
                        </thead>
                        <tbody id="resultDivida" runat="server">
                        </tbody>
                    </table>
                    </div>
              </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Excluir Dívidas</h2>

                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <p>
                            Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtExcluiDivida" runat="server" />
                        </p>
                        <asp:Button ID="btnExcluiDivida" Text="Excluir" runat="server" OnClick="btnExcluiDivida_Click" CssClass="btn btn-danger"/>
                    </div>                    
                </div>
             </div>

                <br />
                <br />
                <br />

            <div class="my-auto">
                <h2 class="mb-5">Editar Dívidas</h2>
                    <div>
                        <p>
                            Cliente:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditaDividaCliente" runat="server" />
                        </p>
                        
                        <p>
                            Valor da Dívida:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditaValorDivida" runat="server" />
                        </p>

                        <p>
                            Valor Pago:
                            <br />
                            <asp:TextBox Width="200" ID="txtEditaValorRestante" runat="server" />
                        </p>
                        <asp:Button ID="btnEditaDivida" Text="Salvar" runat="server" OnClick="btnEditaDivida_Click" CssClass="btn btn-dark"/>
                    </div>
              </div>
        </section>

    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>
    </form>
</body>
</html>

program Autorev;

uses
  Forms,
  IniFile in 'IniFile.pas' {BoxIniFile},
  Login in 'Login.pas' {BoxLogin},
  Menu in 'Menu.pas' {BoxMenu},
  SistemaSobre in 'SistemaSobre.pas' {BoxSobre},
  CadastroUsuario in 'CadastroUsuario.pas' {BoxUsuarios},
  PesquisaGeral in 'PesquisaGeral.pas' {BoxPesquisar},
  OperacoesComprasPecas in 'OperacoesComprasPecas.pas' {BoxComprasPecas},
  Empresas in 'Empresas.pas' {BoxEmpresas},
  CadastroVeiculos in 'CadastroVeiculos.pas' {BoxVeiculos},
  OperacoesPosVenda in 'OperacoesPosVenda.pas' {BoxPosVenda},
  OperacoesVendasPecas in 'OperacoesVendasPecas.pas' {BoxVendasPecas},
  OperacoesVendasVeiculos in 'OperacoesVendasVeiculos.pas' {BoxVendasVeiculos},
  CadastroCardapio in 'CadastroCardapio.pas' {BoxAtendimentoCardapio},
  CadastroConcessionaria in 'CadastroConcessionaria.pas' {BoxConcessionaria},
  OperacoesSeguro in 'OperacoesSeguro.pas' {BoxSeguro},
  CadastroPecas in 'CadastroPecas.pas' {BoxPecas},
  CadastroPessoas in 'CadastroPessoas.pas' {BoxPessoas},
  Parametros in 'Parametros.pas' {BoxParametros},
  CadastroTMO in 'CadastroTMO.pas' {BoxTMO},
  OperacoesComprasPecasXmlSimilar in 'OperacoesComprasPecasXmlSimilar.pas' {BoxComprasPecasXMLSimilar},
  OperacoesComprasUsados in 'OperacoesComprasUsados.pas' {BoxComprasUsados},
  OperacoesCompras in 'OperacoesCompras.pas' {BoxCompras},
  Faturamento in 'Faturamento.pas' {BoxFaturamento},
  FaturamentoGarantia in 'FaturamentoGarantia.pas' {BoxFaturamentoGarantia},
  FaturamentoVeiculos in 'FaturamentoVeiculos.pas' {BoxFaturamentoVeiculos},
  FinanceiroBanco in 'FinanceiroBanco.pas' {BoxFinanceiroBanco},
  FinanceiroBancoEntradas in 'FinanceiroBancoEntradas.pas' {BoxFinanceiroBancoEntradas},
  FinanceiroBancoEntradasPedidos in 'FinanceiroBancoEntradasPedidos.pas' {BoxFinanceiroBancoEntradasPedidos},
  FinanceiroCaixaEntradasOutros in 'FinanceiroCaixaEntradasOutros.pas' {BoxFinanceiroCaixaEntradasOutros},
  FinanceiroCaixaEntradasPendencias in 'FinanceiroCaixaEntradasPendencias.pas' {BoxFinanceiroCaixaEntradasPendencias},
  Biblioteca in 'Biblioteca.pas',
  FinanceiroBancoSaidas in 'FinanceiroBancoSaidas.pas' {BoxFinanceiroBancoSaidas},
  FinanceiroCaixaSaidasCombustivel in 'FinanceiroCaixaSaidasCombustivel.pas' {BoxFinanceiroCaixaSaidasCombustivel},
  FinanceiroCaixaGeralSaidasDeposito in 'FinanceiroCaixaGeralSaidasDeposito.pas' {BoxFinanceiroCaixaGeralSaidasDeposito},
  FinanceiroCaixaGeralEntrada in 'FinanceiroCaixaGeralEntrada.pas' {BoxFinanceiroCaixaGeralEntrada},
  FinanceiroCaixaGeral in 'FinanceiroCaixaGeral.pas' {BoxFinanceiroCaixaGeral},
  FinanceiroCaixaGeralSaidas in 'FinanceiroCaixaGeralSaidas.pas' {BoxFinanceiroCaixaGeralSaidas},
  FinanceiroCaixaEntradas in 'FinanceiroCaixaEntradas.pas' {BoxFinanceiroCaixaEntradas},
  FinanceiroBancoSaidasCombustivel in 'FinanceiroBancoSaidasCombustivel.pas' {BoxFinanceiroBancoSaidasCombustivel},
  FinanceiroBancoResumo in 'FinanceiroBancoResumo.pas' {BoxFinanceiroBancoResumo},
  FinanceiroCaixaGeralResumo in 'FinanceiroCaixaGeralResumo.pas' {BoxFinanceiroCaixaGeralResumo},
  FinanceiroBancoEntradasOutros in 'FinanceiroBancoEntradasOutros.pas' {BoxFinanceiroBancoEntradasOutros},
  FinanceiroBancoSaidasCPagar in 'FinanceiroBancoSaidasCPagar.pas' {BoxFinanceiroBancoSaidasCPagar},
  FinanceiroCaixaEntradasCReceber in 'FinanceiroCaixaEntradasCReceber.pas' {BoxFinanceiroCaixaEntradasCreceber},
  FinanceiroBancoEntradasCreceber in 'FinanceiroBancoEntradasCreceber.pas' {BoxFinanceiroBancoEntradasCReceber},
  FinanceiroCaixaEntradasPedidosCheques in 'FinanceiroCaixaEntradasPedidosCheques.pas' {BoxFinanceiroCaixaEntradasPedidosCheques},
  FinanceiroCaixaSaidasTaxas in 'FinanceiroCaixaSaidasTaxas.pas' {BoxFinanceiroCaixaSaidasTaxas},
  FinanceiroCaixaSaidasCPagar in 'FinanceiroCaixaSaidasCPagar.pas' {BoxFinanceiroCaixaSaidasCPagar},
  OperacoesPosVendaPecas in 'OperacoesPosVendaPecas.pas' {BoxPosVendaPecas},
  OperacoesPosVendaServicos in 'OperacoesPosVendaServicos.pas' {BoxPosVendaServicos},
  FaturamentoBrinde in 'FaturamentoBrinde.pas' {BoxFaturamentoBrinde},
  CadastroPlanoContas in 'CadastroPlanoContas.pas' {BoxPlanodeContas},
  RelatorioNotasFiscais in 'RelatorioNotasFiscais.pas' {BoxRelatorioNotasFiscais},
  CadastroCPagas in 'CadastroCPagas.pas' {BoxCPagas},
  ClientePagamentos in 'ClientePagamentos.pas' {BoxClientePagamentos},
  ClienteDebito in 'ClienteDebito.pas' {BoxClienteDebito},
  CadastroCrecebid in 'CadastroCrecebid.pas' {BoxCrecebid},
  RelatorioBoletos in 'RelatorioBoletos.pas' {BoxRelatorioBoleto},
  ReemiteCF in 'ReemiteCF.pas' {BoxReemiteCF},
  PrnDOS in 'PrnDOS.pas',
  Leitura in 'Leitura.pas' {BoxLeitura},
  FinanceiroBancoSaidasSaque in 'FinanceiroBancoSaidasSaque.pas' {BoxFinanceiroBancoSaidasSaque},
  FechamentoPedidos in 'FechamentoPedidos.pas' {BoxFechamentoPedidos},
  FinanceiroCaixaEntradasPedidos in 'FinanceiroCaixaEntradasPedidos.pas' {BoxFinanceiroCaixaEntradasPedidos},
  Exportacao in 'Exportacao.pas' {BoxExportacao},
  FinanceiroCaixaEntradasPedidosCaixa in 'FinanceiroCaixaEntradasPedidosCaixa.pas' {BoxFinanceiroCaixaEntradasPedidosCaixa},
  Efuncoes in 'Efuncoes.pas',
  ReemiteNFs in 'ReemiteNFs.pas' {BoxReemiteNFs},
  Tabelas in 'Tabelas.pas' {BoxTabelas},
  DescontoFinanceira in 'DescontoFinanceira.pas' {BoxDescontoFinanceira},
  ecf in 'ecf.pas' {BoxECF},
  Financiamentos in 'Financiamentos.pas' {BoxFinanciamentos},
  FinanceiroCaixaGeralSaidasGerais in 'FinanceiroCaixaGeralSaidasGerais.pas' {BoxFinanceiroCaixaGeralSaidasGerais},
  FinanceiroCaixaEntradasPedidosBoleto in 'FinanceiroCaixaEntradasPedidosBoleto.pas' {BoxFinanceiroCaixaEntradasPedidosBoleto},
  FinanceiroRenegociacao in 'FinanceiroRenegociacao.pas' {BoxFinanceiroRenegociacao},
  FinanceiroRenegociacaoEfetuar in 'FinanceiroRenegociacaoEfetuar.pas' {BoxFinanceiroRenegociacaoEfetuar},
  FinanceiroRenegociacaoConsultar in 'FinanceiroRenegociacaoConsultar.pas' {BoxFinanceiroRenegociacaoConsultar},
  CadastroCreceber in 'CadastroCreceber.pas' {BoxCreceber},
  EmiteCupomFiscal in 'EmiteCupomFiscal.pas' {BoxEmiteCupomFiscal},
  NFE in 'NFE.pas' {BoxNFe},
  FDB in 'FDB.pas' {FDB1},
  NfeGerenciamento in 'NfeGerenciamento.pas' {BoxNFeGerenciamento},
  RelatoriosGerenciaisGerais in 'RelatoriosGerenciaisGerais.pas' {BoxRelatoriosGerenciaisGerais},
  NFeConfiguracoes in 'NFeConfiguracoes.pas' {BoxNFeConfiguracoes},
  ufrmAguardaNFe in 'ufrmAguardaNFe.pas' {frmAguardaNFe},
  CadastroSerieNFs in 'CadastroSerieNFs.pas' {BoxCadastroSerieNFs},
  CadastroCPagar in 'CadastroCPagar.pas' {BoxCPagar},
  RelatoriosGerenciais in 'RelatoriosGerenciais.pas' {BoxRelatoriosGerenciais},
  NFeImobilizado in 'NFeImobilizado.pas' {BoxNFeImobilizado},
  RelatorioRecibo in 'RelatorioRecibo.pas' {BoxRelatorioRecibo},
  NFeCredDebEstoque in 'NFeCredDebEstoque.pas' {BoxNFeCredDebEstoque},
  FaturamentoPosVenda in 'FaturamentoPosVenda.pas' {BoxFaturamentoPosVenda},
  NFeComplementar in 'NFeComplementar.pas' {BoxNFeComplementar},
  NFeDevolucao in 'NFeDevolucao.pas' {BoxNFeDevolucao},
  FinanceiroBancoEntradasDeposito in 'FinanceiroBancoEntradasDeposito.pas' {BoxFinanceiroBancoEntradasDeposito},
  uSpedBaseST in 'uSpedBaseST.pas' {BoxSpedBaseST},
  RelatoriosGerenciaisDespesas in 'RelatoriosGerenciaisDespesas.pas' {BoxRelatoriosGerenciaisDespesas},
  PecasTrocaCodigo in 'PecasTrocaCodigo.pas' {BoxPecasTrocaCodigo},
  OperacoesComprasNovosImportacao in 'OperacoesComprasNovosImportacao.pas' {BoxComprasNovosImportacao},
  Senha in 'Senha.pas' {BoxSenha},
  TabelasAcessorios in 'TabelasAcessorios.pas' {BoxTabelasAcessorios},
  OperacoesTaxas in 'OperacoesTaxas.pas' {BoxTaxas},
  OperacoesComprasNovos in 'OperacoesComprasNovos.pas' {BoxComprasNovos},
  CadastroCategoria in 'CadastroCategoria.pas' {BoxCategoria},
  DevolucaoPecas in 'DevolucaoPecas.pas' {BoxDevolucaoPecas},
  DevolucaoVeiculos in 'DevolucaoVeiculos.pas' {BoxDevolucaoVeiculos},
  RelatoriosGerenciaisReceitas in 'RelatoriosGerenciaisReceitas.pas' {BoxRelatoriosGerenciaisReceitas},
  Relatorios in 'Relatorios.pas' {BoxRelatorios},
  PecasTransferencia in 'PecasTransferencia.pas' {BoxPecasTransferencia},
  FinanceiroCaixaEntradasAntecipacaoRecebimento in 'FinanceiroCaixaEntradasAntecipacaoRecebimento.pas' {BoxFinanceiroCaixaEntradasAntecipacaoRecebimento},
  FinanceiroCaixaEntradasAntecipacao in 'FinanceiroCaixaEntradasAntecipacao.pas' {BoxFinanceiroCaixaEntradasAntecipacao},
  FinanceiroCaixaEntradasAntecipacaoIdentificacao in 'FinanceiroCaixaEntradasAntecipacaoIdentificacao.pas' {BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao},
  CadastroSituacoes in 'CadastroSituacoes.pas' {BoxSituacoes},
  RelatoriosGerenciaisReceitasVeiculos in 'RelatoriosGerenciaisReceitasVeiculos.pas' {BoxRelatoriosGerenciaisReceitasVeiculos},
  PedidoPecasFabrica in 'PedidoPecasFabrica.pas' {BoxPedidoPecasFabrica},
  CadastroBAE in 'CadastroBAE.pas' {BoxCadastroBAE},
  OperacoesBrindes in 'OperacoesBrindes.pas' {BoxOperacoesBrindes},
  FaturamentoPecas in 'FaturamentoPecas.pas' {BoxFaturamentoPecas},
  RelatorioVendaVarejo in 'RelatorioVendaVarejo.pas' {BoxVendaVarejo},
  RelatorioMalaDireta in 'RelatorioMalaDireta.pas' {BoxMalaDireta},
  OperacoesComprasPecasXml in 'OperacoesComprasPecasXml.pas' {BoxComprasPecasXML},
  OperacoesTaxasPagamento in 'OperacoesTaxasPagamento.pas' {BoxOperacoesTaxasPagamento},
  RelatorioAnomalias in 'RelatorioAnomalias.pas' {BoxRelatorioAnomalias},
  RelatorioMeusClientes in 'RelatorioMeusClientes.pas' {BoxMeusClientes},
  FinanceiroBancoSaidasGerais in 'FinanceiroBancoSaidasGerais.pas' {BoxFinanceiroBancoSaidasGerais},
  NotaFiscalRemessa in 'NotaFiscalRemessa.pas' {BoxNotaFiscalRemessa},
  EFD in 'EFD.pas' {BoxEFD},
  NFConsorcio in 'NFConsorcio.pas' {BoxNFConsorcio},
  RelatoriosGerenciaisEstoquePecas in 'RelatoriosGerenciaisEstoquePecas.pas' {BoxEstoquePecasZero},
  RelatorioCapitalGiro in 'RelatorioCapitalGiro.pas' {BoxCapitalGiro},
  CadastroCRM in 'CadastroCRM.pas' {BoxCRM},
  uSped in 'uSped.pas' {BoxSped},
  AjusteNFEntrada in 'AjusteNFEntrada.pas' {BoxAjusteNFEntrada},
  RelatorioCota in 'RelatorioCota.pas' {BoxCota},
  RelatorioProducaoFinanceiras in 'RelatorioProducaoFinanceiras.pas' {BoxProducaoFinanceiras},
  RelatorioPatrimonial in 'RelatorioPatrimonial.pas' {BoxRelatorioPatrimonial},
  RelatorioVendasVendedor in 'RelatorioVendasVendedor.pas' {BoxVendasVendedor},
  VeiculosAvaliacao in 'VeiculosAvaliacao.pas' {BoxAvaliacao},
  RelatorioResultadoSequencia in 'RelatorioResultadoSequencia.pas' {BoxResultadoSequencia},
  Email in 'Email.pas' {Form1},
  RelatorioReceitaSequencia in 'RelatorioReceitaSequencia.pas' {BoxReceitaSequencia},
  RelEstoque in 'RelEstoque.pas' {frmRelEstoque},
  BoxDesconto in 'BoxDesconto.pas' {BoxPedeDesconto},
  VendasDiarias in 'VendasDiarias.pas' {BoxVendasDiarias},
  RelatorioProducaoOS in 'RelatorioProducaoOS.pas' {BoxProducaoOS},
  CadastroCfop in 'CadastroCfop.pas' {BoxCFOP},
  FinanceiroCaixaResumo in 'FinanceiroCaixaResumo.pas' {BoxFinanceiroCaixaResumo},
  FinanceiroBancoSaidasTransferencias in 'FinanceiroBancoSaidasTransferencias.pas' {BoxFinanceiroBancoSaidasTransferencias},
  FinanceiroCaixaSaidas in 'FinanceiroCaixaSaidas.pas' {BoxFinanceiroCaixaSaidas},
  FinanceiroCaixaSaidasGerais in 'FinanceiroCaixaSaidasGerais.pas' {BoxFinanceiroCaixaSaidasGerais},
  FinanceiroCaixaSaidasDeposito in 'FinanceiroCaixaSaidasDeposito.pas' {BoxFinanceiroCaixaSaidasDeposito},
  RelatoriosComissoes in 'RelatoriosComissoes.pas' {BoxRelatoriosComissoes},
  uSpedPreenchimentoBaseST in 'uSpedPreenchimentoBaseST.pas' {BoxSpedPreenchimentoBaseST},
  OperacoesComprasPecasImportacao in 'OperacoesComprasPecasImportacao.pas' {BoxComprasPecasImportacao},
  uSpedNFsErradas in 'uSpedNFsErradas.pas' {BoxReemissaoICMS},
  ACBrNFeDANFEFRDM in 'C:\AcBr\trunk2\Fontes\ACBrDFe\ACBrNFe\DANFE\NFe\Fast\ACBrNFeDANFEFRDM.pas',
  FinanceiroConciliacaoCartoes in 'FinanceiroConciliacaoCartoes.pas' {BoxFinanceiroConciliacaoCartoes},
  RelatorioComissoesVeiculos in 'RelatorioComissoesVeiculos.pas' {BoxComissaoVeiculos},
  RelatoriosIndividualComissoes in 'RelatoriosIndividualComissoes.pas' {BoxRelatoriosIndividualComissoes},
  CadastroPecasFabrica in 'CadastroPecasFabrica.pas' {BoxPecasFabrica},
  UBoxRenave in 'Renave\View\UBoxRenave.pas' {BoxRenave},
  UBoxConsultaVeiculos0Km in 'Renave\View\UBoxConsultaVeiculos0Km.pas' {BoxConsultaVeiculos0KM},
  UConsultarRenave in 'Renave\Classes\UConsultarRenave.pas',
  UErroConsultaRenave in 'Renave\Model\UErroConsultaRenave.pas',
  UConsultarVeiculos0KM in 'Renave\Classes\UConsultarVeiculos0KM.pas',
  UEntradaVeiculoEstoque0KM in 'Renave\Model\UEntradaVeiculoEstoque0KM.pas',
  UEntrarEstoqueVeiculo0KM in 'Renave\Classes\UEntrarEstoqueVeiculo0KM.pas',
  UBoxEntradaVeiculo0KM in 'Renave\View\UBoxEntradaVeiculo0KM.pas' {BoxEntradaVeiculo0KM},
  UConstsRenave in 'Renave\Classes\UConstsRenave.pas',
  URetornoEntradaEstoqueVeiculo0KM in 'Renave\Model\URetornoEntradaEstoqueVeiculo0KM.pas',
  UAutorizarTransferenciaVeiculo0KM in 'Renave\Classes\UAutorizarTransferenciaVeiculo0KM.pas',
  UBoxAutorizaTransferenciaVeiculo0KM in 'Renave\View\UBoxAutorizaTransferenciaVeiculo0KM.pas' {BoxAutorizaTransferenciaVeiculo0KM},
  URetornoAutorizacaoTransferenciaVeiculo0KM in 'Renave\Model\URetornoAutorizacaoTransferenciaVeiculo0KM.pas',
  UAutorizacaoTransferenciaVeiculo0KM in 'Renave\Model\UAutorizacaoTransferenciaVeiculo0KM.pas',
  UTransferirVeiculo0KM in 'Renave\Classes\UTransferirVeiculo0KM.pas',
  UTransferenciaVeiculo0KM in 'Renave\Model\UTransferenciaVeiculo0KM.pas',
  UBoxTransferenciaVeiculo0KM in 'Renave\View\UBoxTransferenciaVeiculo0KM.pas' {BoxTransferenciaVeiculo0KM},
  USairEstoqueVeiculo0KM in 'Renave\Classes\USairEstoqueVeiculo0KM.pas',
  USaidaEstoqueVeiculo0KM in 'Renave\Model\USaidaEstoqueVeiculo0KM.pas',
  URetornoSaidaEstoqueVeiculo0KM in 'Renave\Model\URetornoSaidaEstoqueVeiculo0KM.pas',
  UPessoa in 'Renave\Model\UPessoa.pas',
  UEndereco in 'Renave\Model\UEndereco.pas',
  UBoxSaidaVeiculo0KM in 'Renave\View\UBoxSaidaVeiculo0KM.pas' {BoxSaidaVeiculo0KM},
  UMunicipio in 'Renave\Model\UMunicipio.pas',
  UConsultarMunicipio in 'Renave\Classes\UConsultarMunicipio.pas',
  UCancelarSaidaEstoqueVeiculo0KM in 'Renave\Classes\UCancelarSaidaEstoqueVeiculo0KM.pas',
  UCancelamentoSaidaEstoqueVeiculo0KM in 'Renave\Model\UCancelamentoSaidaEstoqueVeiculo0KM.pas',
  URetornoCancelamentoSaidaEstoqueVeiculo0KM in 'Renave\Model\URetornoCancelamentoSaidaEstoqueVeiculo0KM.pas',
  UBoxCancelamentoSaidaVeiculo0KM in 'Renave\View\UBoxCancelamentoSaidaVeiculo0KM.pas' {BoxCancelamentoSaidaVeiculo0KM},
  UConsultarATPV in 'Renave\Classes\UConsultarATPV.pas',
  UBoxConsultaATPV in 'Renave\View\UBoxConsultaATPV.pas' {BoxConsultaATPV},
  URejeitarEntradaEstoqueVeiculo0KM in 'Renave\Classes\URejeitarEntradaEstoqueVeiculo0KM.pas',
  URejeicaoEntradaVeiculoEstoque0KM in 'Renave\Model\URejeicaoEntradaVeiculoEstoque0KM.pas',
  UBoxRejeitaEntradaVeiculo0KM in 'Renave\View\UBoxRejeitaEntradaVeiculo0KM.pas' {BoxRejeitaEntradaVeiculo0KM},
  UDevolverVeiculo0KM in 'Renave\Classes\UDevolverVeiculo0KM.pas',
  UDevolucaoVeiculo0KM in 'Renave\Model\UDevolucaoVeiculo0KM.pas',
  UBoxDevolucaoVeiculo0KM in 'Renave\View\UBoxDevolucaoVeiculo0KM.pas' {BoxDevolucaoVeiculo0KM},
  UCancelarTransferenciaVeiculo0KM in 'Renave\Classes\UCancelarTransferenciaVeiculo0KM.pas',
  URetornoCancelamentoTransferenciaVeiculo0KM in 'Renave\Model\URetornoCancelamentoTransferenciaVeiculo0KM.pas',
  UCancelamentoTransferenciaVeiculo0KM in 'Renave\Model\UCancelamentoTransferenciaVeiculo0KM.pas',
  UBoxCancelaTransferenciaVeiculo0KM in 'Renave\View\UBoxCancelaTransferenciaVeiculo0KM.pas' {BoxCancelaTransferenciaVeiculo0KM},
  URetornoEstoqueVeiculo0KM in 'Renave\Model\URetornoEstoqueVeiculo0KM.pas',
  UExibeRetornoEstoque in 'Renave\UExibeRetornoEstoque.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TBoxLogin, BoxLogin);
  Application.CreateForm(TBoxIniFile, BoxIniFile);
  Application.CreateForm(TFDB1, FDB1);
  Application.CreateForm(TBoxMenu, BoxMenu);
  Application.CreateForm(TBoxAjusteNFEntrada, BoxAjusteNFEntrada);
  Application.CreateForm(TBoxCota, BoxCota);
  Application.CreateForm(TBoxProducaoFinanceiras, BoxProducaoFinanceiras);
  Application.CreateForm(TBoxRelatorioPatrimonial, BoxRelatorioPatrimonial);
  Application.CreateForm(TBoxVendasVendedor, BoxVendasVendedor);
  Application.CreateForm(TBoxAvaliacao, BoxAvaliacao);
  Application.CreateForm(TBoxResultadoSequencia, BoxResultadoSequencia);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TBoxReceitaSequencia, BoxReceitaSequencia);
  Application.CreateForm(TfrmRelEstoque, frmRelEstoque);
  Application.CreateForm(TBoxPedeDesconto, BoxPedeDesconto);
  Application.CreateForm(TBoxVendasDiarias, BoxVendasDiarias);
  Application.CreateForm(TBoxProducaoOS, BoxProducaoOS);
  Application.CreateForm(TBoxCFOP, BoxCFOP);
  Application.CreateForm(TBoxFinanceiroCaixaResumo, BoxFinanceiroCaixaResumo);
  Application.CreateForm(TBoxFinanceiroBancoSaidasTransferencias, BoxFinanceiroBancoSaidasTransferencias);
  Application.CreateForm(TBoxFinanceiroCaixaSaidas, BoxFinanceiroCaixaSaidas);
  Application.CreateForm(TBoxFinanceiroCaixaSaidasGerais, BoxFinanceiroCaixaSaidasGerais);
  Application.CreateForm(TBoxFinanceiroCaixaSaidasDeposito, BoxFinanceiroCaixaSaidasDeposito);
  Application.CreateForm(TBoxRelatoriosComissoes, BoxRelatoriosComissoes);
  Application.CreateForm(TBoxSpedPreenchimentoBaseST, BoxSpedPreenchimentoBaseST);
  Application.CreateForm(TBoxComprasPecasImportacao, BoxComprasPecasImportacao);
  Application.CreateForm(TBoxReemissaoICMS, BoxReemissaoICMS);
  Application.CreateForm(TBoxFinanceiroConciliacaoCartoes, BoxFinanceiroConciliacaoCartoes);
  Application.CreateForm(TBoxComissaoVeiculos, BoxComissaoVeiculos);
  Application.CreateForm(TBoxRelatoriosIndividualComissoes, BoxRelatoriosIndividualComissoes);
  Application.CreateForm(TBoxPecasFabrica, BoxPecasFabrica);
  //  Application.CreateForm(TBoxReemissaoICMS, BoxForm2);
  //  Application.CreateForm(TBoxRelatorioAnomalias, BoxRelatorioAnomalias);
//  Application.CreateForm(TBoxMeusClientes, BoxMeusClientes);
//  Application.CreateForm(TBoxFinanceiroBancoSaidasGerais, BoxFinanceiroBancoSaidasGerais);
//  Application.CreateForm(TBoxNotaFiscalRemessa, BoxNotaFiscalRemessa);
//  Application.CreateForm(TBoxEFD, BoxEFD);
//  Application.CreateForm(TBoxNFConsorcio, BoxNFConsorcio);
//  Application.CreateForm(TBoxEstoquePecasZero, BoxEstoquePecasZero);
//  Application.CreateForm(TBoxReceitaSequencia, BoxReceitaSequencia);
//  Application.CreateForm(TBoxCRM, BoxCRM);
//  Application.CreateForm(TBoxSped, BoxSped);
  //  Application.CreateForm(TBoxComprasNovos, BoxComprasNovos);
//  Application.CreateForm(TBoxCategoria, BoxCategoria);
//  Application.CreateForm(TBoxDevolucaoPecas, BoxDevolucaoPecas);
//  Application.CreateForm(TBoxDevolucaoVeiculos, BoxDevolucaoVeiculos);
//  Application.CreateForm(TBoxRelatoriosGerenciaisReceitas, BoxRelatoriosGerenciaisReceitas);
//  Application.CreateForm(TBoxRelatorios, BoxRelatorios);
//  Application.CreateForm(TBoxPecasTransferencia, BoxPecasTransferencia);
//  Application.CreateForm(TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento, BoxFinanceiroCaixaEntradasAntecipacaoRecebimento);
//  Application.CreateForm(TBoxFinanceiroCaixaEntradasAntecipacao, BoxFinanceiroCaixaEntradasAntecipacao);
//  Application.CreateForm(TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao, BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao);
///  Application.CreateForm(TBoxSituacoes, BoxSituacoes);
//  Application.CreateForm(TBoxRelatoriosGerenciaisReceitasVeiculos, BoxRelatoriosGerenciaisReceitasVeiculos);
//  Application.CreateForm(TBoxPedidoPecasFabrica, BoxPedidoPecasFabrica);
//  Application.CreateForm(TBoxCadastroBAE, BoxCadastroBAE);
//  Application.CreateForm(TBoxOperacoesBrindes, BoxOperacoesBrindes);
//  Application.CreateForm(TBoxFaturamentoPecas, BoxFaturamentoPecas);
//  Application.CreateForm(TBoxVendaVarejo, BoxVendaVarejo);
//  Application.CreateForm(TBoxMalaDireta, BoxMalaDireta);
//  Application.CreateForm(TBoxComprasPecasXML, BoxComprasPecasXML);
//  Application.CreateForm(TBoxOperacoesTaxasPagamento, BoxOperacoesTaxasPagamento);
  Application.Run;
end.


unit Menu;

interface

uses Windows, Messages, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,Midas,Midaslib,
  ActnList, ToolWin, DB, DBCtrls, Grids, DBGrids, FMTBcd, SqlExpr, IBDatabase,
  frxClass, frxExportPDF, frxExportText, frxExportImage, frxExportHTML,
  frxExportXLS, frxExportRTF, frxExportODF, frxExportXML, frxExportCSV,
  frxExportMail, ACBrBase, ACBrEnterTab, JvExComCtrls, JvToolBar, ACBrExtenso,
  System.ImageList, System.Actions, frxExportBaseDialog;

type
  TBoxMenu = class(TForm)
    ActionList: TActionList;
    ImageList: TImageList;
    MainMenu: TMainMenu;
    Cadastros: TMenuItem;
    MenuPecas: TMenuItem;
    MenuVendasVeiculos: TMenuItem;
    FileExitItem: TMenuItem;
    Sistema: TMenuItem;
    HelpAboutItem: TMenuItem;
    Operacoes: TMenuItem;
    Financeiro: TMenuItem;
    Administracao: TMenuItem;
    MenuUsuarios: TMenuItem;
    MenuCaixa: TMenuItem;
    MenuBancos: TMenuItem;
    MenuContasReceber: TMenuItem;
    MenuContasRecebidas: TMenuItem;
    MenuContasPagar: TMenuItem;
    MenuContasPagas: TMenuItem;
    MenuDebitoCliente: TMenuItem;
    MenuPagamentosCliente: TMenuItem;
    MenuPessoas: TMenuItem;
    ActionPecas: TAction;
    MenuTMO: TMenuItem;
    MenuCompras: TMenuItem;
    MenuCFOP: TMenuItem;
    ActionUsuarios: TAction;
    ActionNFe: TAction;
    ActionTMO: TAction;
    MenuCategoria: TMenuItem;
    MenuConcessionaria: TMenuItem;
    ActionVendasVeiculos: TAction;
    ActionCompras: TAction;
    ActionCaixa: TAction;
    ActionBancos: TAction;
    MenuPosVenda: TMenuItem;
    ActionPosvenda: TAction;
    ActionCategoria: TAction;
    ActionPessoas: TAction;
    DataSource1: TDataSource;
    ActionVeiculos: TAction;
    MenuVeiculos: TMenuItem;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    MenuReemissao: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    ToolBar1: TToolBar;
    BtnPecas: TToolButton;
    BtnVeiculos: TToolButton;
    BtnPessoas: TToolButton;
    BtnNFe: TToolButton;
    BtnFaturamento: TToolButton;
    BtnPedidoVeiculos: TToolButton;
    BtnCompras: TToolButton;
    BtnVendasVeiculos: TToolButton;
    BtnCaixa: TToolButton;
    BtnBancos: TToolButton;
    BtnPosVenda: TToolButton;
    MenuParametros: TMenuItem;
    ActionParametros: TAction;
    MenuPecasfabrica: TMenuItem;
    ActionPecasFabrica: TAction;
    Label5: TLabel;
    Label6: TLabel;
    ActionFaturamento: TAction;
    MenuFaturamento: TMenuItem;
    Timer1: TTimer;
    StatusBar: TStatusBar;
    ActionDebito: TAction;
    ActionPagamentos: TAction;
    BtnDebitos: TToolButton;
    BtnPagamentos: TToolButton;
    MenuLeituraArquivos: TMenuItem;
    MenuGravacaoArquivos: TMenuItem;
    MenuFechamentoPedidos: TMenuItem;
    MenuECF: TMenuItem;
    MenuTabelas: TMenuItem;
    MenuNFDescontoFinanceira: TMenuItem;
    ActionPedidoVeiculos: TAction;
    MenuFinanciamentos: TMenuItem;
    MenuRenegociacao: TMenuItem;
    MenuNFe: TMenuItem;
    MenuRelatorios: TMenuItem;
    MenuCadastroSerieNFs: TMenuItem;
    MenuRelatoriosGerenciais: TMenuItem;
    frxRecibo: TfrxReport;
    Despesas1: TMenuItem;
    Receitas1: TMenuItem;
    ActionVendasPecas: TAction;
    MenuVendasPecas: TMenuItem;
    BtnVendasPecas: TToolButton;
    MenuDevolucaoVeiculos: TMenuItem;
    MenuCompraImportacao: TMenuItem;
    MenuTroca: TMenuItem;
    Senha1: TMenuItem;
    MenuTabelasVeiculos: TMenuItem;
    MenuTabelasAcessorios: TMenuItem;
    MenuRelatoriosGerais: TMenuItem;
    MenuRelatoriosComissoes: TMenuItem;
    MenuTaxas: TMenuItem;
    MenuCompraImportacaoPecas: TMenuItem;
    MenuPlanodeContas: TMenuItem;
    MenuDevolucaoPecas: TMenuItem;
    MenuReceitaVeiculos: TMenuItem;
    Gerais1: TMenuItem;
    MenuTransferenciaPecas: TMenuItem;
    MenuSituacoes: TMenuItem;
    MenuPedidoPecasFabrica: TMenuItem;
    MenuBAE: TMenuItem;
    BtnBrindes: TToolButton;
    MenuBrindes: TMenuItem;
    ActionBrindes: TAction;
    MenuVendaVarejo: TMenuItem;
    MenuMaladireta: TMenuItem;
    Anomalias1: TMenuItem;
    MenuMeusClientes: TMenuItem;
    MenuNotaFiscaldeRemessa: TMenuItem;
    MenuEFD: TMenuItem;
    MenuNFConsorcio: TMenuItem;
    Estoquepecaszerosmov1: TMenuItem;
    MenuReceitasSequencia: TMenuItem;
    BtnCRM: TToolButton;
    MenuSped: TMenuItem;
    MenuAjusteNFentrada: TMenuItem;
    Produofinanceiras1: TMenuItem;
    Patrimnio1: TMenuItem;
    Vendasvendedor1: TMenuItem;
    btnAvaliacao: TToolButton;
    MenuAvaliacao: TMenuItem;
    ActionAvaliacao: TAction;
    MenuCapitaldegiro: TMenuItem;
    MenuRelatorioVendas: TMenuItem;
    VendasVarejo1: TMenuItem;
    ReceitaemSequncia1: TMenuItem;
    Receita1: TMenuItem;
    Relatrioestoque1: TMenuItem;
    Produodefinanceiras1: TMenuItem;
    ProduoOS1: TMenuItem;
    Seguros1: TMenuItem;
    MenuCaixaGeral: TMenuItem;
    Relatrioindividualdecomisses1: TMenuItem;
    SpedCargaICMSST1: TMenuItem;
    SpedPreenchimentoICMSST1: TMenuItem;
    NFICMSreemisso1: TMenuItem;
    Cardpioreviso1: TMenuItem;
    MenuConciliacaoCartoes: TMenuItem;
    Comissaovendedores: TMenuItem;
    ToolButton1: TToolButton;
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure ActionPecasExecute(Sender: TObject);
    procedure ActionNFeExecute(Sender: TObject);
    procedure ActionUsuariosExecute(Sender: TObject);
    procedure ActionTMOExecute(Sender: TObject);
    procedure ActionCategoriaExecute(Sender: TObject);
    procedure MenuConcessionariaClick(Sender: TObject);
    procedure ActionPessoasExecute(Sender: TObject);
    procedure ActionVendasVeiculosExecute(Sender: TObject);
    procedure ActionComprasExecute(Sender: TObject);
    procedure ActionCaixaExecute(Sender: TObject);
    procedure ActionBancosExecute(Sender: TObject);
    procedure ActionPosvendaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ActionVeiculosExecute(Sender: TObject);
    procedure ActionFaturamentoExecute(Sender: TObject);
    procedure ActionParametrosExecute(Sender: TObject);
    procedure ActionPecasFabricaExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuContasReceberClick(Sender: TObject);
    procedure MenuContasPagarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionDebitoExecute(Sender: TObject);
    procedure ActionPagamentosExecute(Sender: TObject);
    procedure MenuReemissaoClick(Sender: TObject);
    procedure MenuLeituraArquivosClick(Sender: TObject);
    procedure MenuGravacaoArquivosClick(Sender: TObject);
    procedure MenuECFClick(Sender: TObject);
    procedure MenuNFDescontoFinanceiraClick(Sender: TObject);
    procedure ActionPedidoVeiculosExecute(Sender: TObject);
    procedure MenuFinanciamentosClick(Sender: TObject);
    procedure MenuRenegociacaoClick(Sender: TObject);
    procedure MenuNFeClick(Sender: TObject);
    procedure MenuCadastroSerieNFsClick(Sender: TObject);
    procedure MenuContasRecebidasClick(Sender: TObject);
    procedure MenuContasPagasClick(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure ActionVendasPecasExecute(Sender: TObject);
    procedure MenuDevolucaoVeiculosClick(Sender: TObject);
    procedure MenuCompraImportacaoClick(Sender: TObject);
    procedure MenuTrocaClick(Sender: TObject);
    procedure Senha1Click(Sender: TObject);
    procedure MenuTabelasVeiculosClick(Sender: TObject);
    procedure MenuTabelasAcessoriosClick(Sender: TObject);
    procedure MenuRelatoriosGeraisClick(Sender: TObject);
    procedure MenuRelatoriosComissoesClick(Sender: TObject);
    procedure MenuTaxasClick(Sender: TObject);
    procedure MenuCompraImportacaoPecasClick(Sender: TObject);
    procedure MenuPlanodeContasClick(Sender: TObject);
    procedure MenuDevolucaoPecasClick(Sender: TObject);
    procedure MenuReceitaVeiculosClick(Sender: TObject);
    procedure Gerais1Click(Sender: TObject);
    procedure MenuTransferenciaPecasClick(Sender: TObject);
    procedure MenuSituacoesClick(Sender: TObject);
    procedure MenuPedidoPecasFabricaClick(Sender: TObject);
    procedure MenuBAEClick(Sender: TObject);
    procedure ActionBrindesExecute(Sender: TObject);
    procedure MenuVendaVarejoClick(Sender: TObject);
    procedure MenuMaladiretaClick(Sender: TObject);
    procedure Anomalias1Click(Sender: TObject);
    procedure MenuMeusClientesClick(Sender: TObject);
    procedure MenuNotaFiscaldeRemessaClick(Sender: TObject);
    procedure MenuEFDClick(Sender: TObject);
    procedure MenuNFConsorcioClick(Sender: TObject);
    procedure Estoquepecaszerosmov1Click(Sender: TObject);
    procedure MenuReceitasSequenciaClick(Sender: TObject);
    procedure BtnCRMClick(Sender: TObject);
    procedure MenuSpedClick(Sender: TObject);
    procedure MenuAjusteNFentradaClick(Sender: TObject);
    procedure Produofinanceiras1Click(Sender: TObject);
    procedure Patrimnio1Click(Sender: TObject);
    procedure Vendasvendedor1Click(Sender: TObject);
    procedure ActionAvaliacaoExecute(Sender: TObject);
    procedure MenuCapitaldegiroClick(Sender: TObject);
    procedure Receita1Click(Sender: TObject);
    procedure Relatrioestoque1Click(Sender: TObject);
    procedure ProduoOS1Click(Sender: TObject);
    procedure Seguros1Click(Sender: TObject);
    procedure MenuCaixaGeralClick(Sender: TObject);
    procedure Relatrioindividualdecomisses1Click(Sender: TObject);
    procedure SpedCargaICMSST1Click(Sender: TObject);
    procedure SpedPreenchimentoICMSST1Click(Sender: TObject);
    procedure NFICMSreemisso1Click(Sender: TObject);
    procedure Cardpioreviso1Click(Sender: TObject);
    procedure MenuConciliacaoCartoesClick(Sender: TObject);
    procedure ComissaovendedoresClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
     { Private declarations }
  public
    { Public declarations }

  end;

  var
  BoxMenu: TBoxMenu;

implementation

uses SysUtils, Mapi, SistemaSobre, CadastroPecas, CadastroConcessionaria,
 BIBLIOTECA, CadastroCfop, CadastroUsuario, CadastroCategoria,
 CadastroTMO, FDB, CadastroPessoas, OperacoesCompras, FinanceiroCaixa,
 FinanceiroBanco, OperacoesVendasVeiculos, CadastroVeiculos, OperacoesPosVenda,
  Empresas, Parametros, CadastroPecasFabrica, IniFile, Faturamento,
  CadastroCPagar, CadastroCreceber, ClienteDebito, ClientePagamentos,
  RelatorioBoletos, ReemiteNFs, Leitura, FechamentoPedidos, Exportacao, ecf,
  Tabelas, DescontoFinanceira, Financiamentos, FinanceiroRenegociacao, NFE,
  Relatorios, CadastroSerieNFs, CadastroCrecebid, CadastroCPagas,
  RelatoriosGerenciais, RelatoriosGerenciaisDespesas,
  RelatoriosGerenciaisReceitas, OperacoesVendasPecas, DevolucaoVeiculos,
  OperacoesComprasNovosImportacao, PecasTrocaCodigo, Senha, TabelasAcessorios,
  RelatoriosComissoes, OperacoesTaxas, OperacoesComprasPecasImportacao,
  CadastroPlanoContas, DevolucaoPecas, RelatoriosGerenciaisReceitasVeiculos,
  RelatoriosGerenciaisGerais, PecasTransferencia, CadastroSituacoes,
  PedidoPecasFabrica, CadastroBAE, OperacoesBrindes, RelatorioVendaVarejo,
  RelatorioMalaDireta, RelatorioAnomalias, RelatorioMeusClientes,
  NotaFiscalRemessa, CEPTeste1, EFD, NFConsorcio,
  RelatoriosGerenciaisEstoquePecas, RelatorioReceitaSequencia, CadastroCRM,
  uSped, AjusteNFEntrada, RelatorioProducaoFinanceiras, RelatorioPatrimonial,
  RelatorioVendasVendedor, VeiculosAvaliacao, RelatorioCapitalGiro,
  RelatorioResultadoSequencia, RelEstoque, VendasDiarias, RelatorioProducaoOS,
  OperacoesSeguro, FinanceiroCaixaGeral, RelatoriosInidividualComissoes,
  uSpedBaseST, uSpedPreenchimentoBaseST, uSpedNFsErradas, CadastroCardapio,
  FinanceiroConciliacaoCartoes, RelatorioComissoesVeiculos, UBoxRenave;

{$R *.dfm}

resourcestring
  SUntitled  = 'Untitled';
  SOverwrite = 'OK to overwrite %s';
  SSendError = 'Error sending mail';

procedure TBoxMenu.ActionAvaliacaoExecute(Sender: TObject);
begin
   if not Assigned(BoxAvaliacao) then
    BoxAvaliacao := TBoxAvaliacao.Create(Self);
    BoxAvaliacao.Show;
end;

procedure TBoxMenu.ActionBancosExecute(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBanco) then
    BoxFinanceiroBanco := TBoxFinanceiroBanco.Create(Self);
 BoxFinanceiroBanco.Show;
end;

procedure TBoxMenu.ActionBrindesExecute(Sender: TObject);
begin
  if not Assigned(BoxOperacoesBrindes) then
    BoxOperacoesBrindes := TBoxOperacoesBrindes.Create(Self);
  BoxOperacoesBrindes.Show;
end;

procedure TBoxMenu.ActionCaixaExecute(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixa) then
    BoxFinanceiroCaixa := TBoxFinanceiroCaixa.Create(Self);
  BoxFinanceiroCaixa.Show;
end;

procedure TBoxMenu.ActionCategoriaExecute(Sender: TObject);
begin
  if not Assigned(BoxCategoria) then
    BoxCategoria := TBoxCategoria.Create(Self);
  BoxCategoria.Show;
end;

procedure TBoxMenu.ActionNFeExecute(Sender: TObject);
begin
  if not Assigned(BoxNFe) then
    BoxNFe := TBoxNFe.Create(Self);
  BoxNFe.Show;
end;

procedure TBoxMenu.ActionComprasExecute(Sender: TObject);
begin
  if not Assigned(BoxCompras) then
    BoxCompras := TBoxCompras.Create(Self);
  BoxCompras.Show;
end;

procedure TBoxMenu.ActionDebitoExecute(Sender: TObject);
begin
  if not Assigned(BoxClienteDebito) then
    BoxClienteDebito := TBoxClienteDebito.Create(Self);
   BoxClienteDebito.Show;
end;

procedure TBoxMenu.ActionPagamentosExecute(Sender: TObject);
begin
  if not Assigned(BoxClientePagamentos) then
    BoxClientePagamentos := TBoxClientePagamentos.Create(Self);
   BoxClientePagamentos.Show;
end;

procedure TBoxMenu.ActionParametrosExecute(Sender: TObject);
begin
  if not Assigned(BoxParametros) then
    BoxParametros := TBoxParametros.Create(Self);
  BoxParametros.Show;
end;

procedure TBoxMenu.ActionPecasExecute(Sender: TObject);
begin
  if not Assigned(BoxPecas) then
    BoxPecas := TBoxPecas.Create(Self);
  BoxPecas.Show;
end;

procedure TBoxMenu.ActionPecasFabricaExecute(Sender: TObject);
begin
  if not Assigned(BoxPecasFabrica) then
    BoxPecasFabrica := TBoxPecasFabrica.Create(Self);
  BoxPecasFabrica.Show;
end;

procedure TBoxMenu.ActionPedidoVeiculosExecute(Sender: TObject);
begin
  if not Assigned(BoxFechamentoPedidos) then
    BoxFechamentoPedidos := TBoxFechamentoPedidos.Create(Self);
   BoxFechamentoPedidos.Show;
end;

procedure TBoxMenu.ActionPessoasExecute(Sender: TObject);
begin
  if not Assigned(BoxPessoas) then
    BoxPessoas := TBoxPessoas.Create(Self);
  BoxPessoas.Show;
end;

procedure TBoxMenu.ActionPosvendaExecute(Sender: TObject);
begin
  if not Assigned(BoxPosVenda) then
    BoxPosVenda := TBoxPosVenda.Create(Self);
  BoxPosVenda.Show;
end;

procedure TBoxMenu.ActionTMOExecute(Sender: TObject);
begin
  if not Assigned(BoxTMO) then
    BoxTMO := TBoxTMO.Create(Self);
   BoxTMO.Show;
end;

procedure TBoxMenu.ActionUsuariosExecute(Sender: TObject);
begin
  if not Assigned(BoxUsuarios) then
    BoxUsuarios := TBoxUsuarios.Create(Self);
  BoxUsuarios.Show;
end;

procedure TBoxMenu.ActionVeiculosExecute(Sender: TObject);
begin
  if not Assigned(BoxVeiculos) then
    BoxVeiculos := TBoxVeiculos.Create(Self);
  BoxVeiculos.Show;
end;

procedure TBoxMenu.ActionFaturamentoExecute(Sender: TObject);
begin
  if not Assigned(BoxFaturamento) then
    BoxFaturamento := TBoxFaturamento.Create(Self);
   BoxFaturamento.Show;
end;

procedure TBoxMenu.ActionVendasPecasExecute(Sender: TObject);
begin
  if not Assigned(BoxVendasPecas) then
    BoxVendasPecas := TBoxVendasPecas.Create(Self);
  BoxVendasPecas.Show;
end;

procedure TBoxMenu.ActionVendasVeiculosExecute(Sender: TObject);
begin
  if not Assigned(BoxVendasVeiculos) then
    BoxVendasVeiculos := TBoxVendasVeiculos.Create(Self);
  BoxVendasVeiculos.Show;
end;

procedure TBoxMenu.MenuAjusteNFentradaClick(Sender: TObject);
begin
   if not Assigned(BoxAjusteNFEntrada) then
    BoxAjusteNFEntrada := TBoxAjusteNFEntrada.Create(Self);
    BoxAjusteNFEntrada.Show;
end;

procedure TBoxMenu.Anomalias1Click(Sender: TObject);
begin
   if not Assigned(BoxRelatorioAnomalias) then
    BoxRelatorioAnomalias := TBoxRelatorioAnomalias.Create(Self);
    BoxRelatorioAnomalias.Show;
end;

procedure TBoxMenu.BtnCRMClick(Sender: TObject);
begin
   if not Assigned(BoxCRM) then
    BoxCRM := TBoxCRM.Create(Self);
    BoxCRM.Show;
end;

procedure TBoxMenu.Cardpioreviso1Click(Sender: TObject);
begin
   if not Assigned(BoxAtendimentoCardapio) then
    BoxAtendimentoCardapio := TBoxAtendimentoCardapio.Create(Self);
    BoxAtendimentoCardapio.Show;
end;

procedure TBoxMenu.ComissaovendedoresClick(Sender: TObject);
begin
  if not Assigned(BoxComissaoVeiculos) then
    BoxComissaoVeiculos := TBoxComissaoVeiculos.Create(Self);
   BoxComissaoVeiculos.Show;

end;

procedure TBoxMenu.MenuConciliacaoCartoesClick(Sender: TObject);
begin
     if not Assigned(BoxFinanceiroConciliacaoCartoes) then
    BoxFinanceiroConciliacaoCartoes := TBoxFinanceiroConciliacaoCartoes.Create(Self);
    BoxFinanceiroConciliacaoCartoes.Show;
end;

procedure TBoxMenu.MenuCaixaGeralClick(Sender: TObject);
begin
   if not Assigned(BoxFinanceiroCaixaGeral) then
    BoxFinanceiroCaixaGeral := TBoxFinanceiroCaixaGeral.Create(Self);
    BoxFinanceiroCaixaGeral.Show;
end;

procedure TBoxMenu.MenuMaladiretaClick(Sender: TObject);
begin
   if not Assigned(BoxMalaDireta) then
    BoxMalaDireta := TBoxMalaDireta.Create(Self);
    BoxMalaDireta.Show;
end;

procedure TBoxMenu.MenuMeusClientesClick(Sender: TObject);
begin
   if not Assigned(BoxMeusClientes) then
    BoxMeusClientes := TBoxMeusClientes.Create(Self);
    BoxMeusClientes.Show;
end;

procedure TBoxMenu.MenuBAEClick(Sender: TObject);
begin
   if not Assigned(BoxCadastroBAE) then
    BoxCadastroBAE := TBoxCadastroBAE.Create(Self);
    BoxCadastroBAE.Show;
end;

procedure TBoxMenu.MenuTaxasClick(Sender: TObject);
begin
  if not Assigned(BoxTaxas) then
    BoxTaxas := TBoxTaxas.Create(Self);
    BoxTaxas.Show;
end;

procedure TBoxMenu.Despesas1Click(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosGerenciaisDespesas) then
    BoxRelatoriosGerenciaisDespesas := TBoxRelatoriosGerenciaisDespesas.Create(Self);
    BoxRelatoriosGerenciaisDespesas.Show;
end;

procedure TBoxMenu.Estoquepecaszerosmov1Click(Sender: TObject);
begin
   if not Assigned(BoxEstoquePecasZero) then
    BoxEstoquePecasZero := TBoxEstoquePecasZero.Create(Self);
   BoxEstoquePecasZero.Show;
end;

procedure TBoxMenu.MenuEFDClick(Sender: TObject);
begin
  if not Assigned(BoxEFD) then
    BoxEFD := TBoxEFD.Create(Self);
   BoxEFD.Show;
end;

procedure TBoxMenu.Gerais1Click(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosGerenciaisGerais) then
    BoxRelatoriosGerenciaisGerais := TBoxRelatoriosGerenciaisGerais.Create(Self);
   BoxRelatoriosGerenciaisGerais.Show;
end;

procedure TBoxMenu.MenuDevolucaoPecasClick(Sender: TObject);
begin
  if not Assigned(BoxDevolucaoPecas) then
    BoxDevolucaoPecas := TBoxDevolucaoPecas.Create(Self);
   BoxDevolucaoPecas.Show;
end;

procedure TBoxMenu.MenuDevolucaoVeiculosClick(Sender: TObject);
begin
  if not Assigned(BoxDevolucaoVeiculos) then
    BoxDevolucaoVeiculos := TBoxDevolucaoVeiculos.Create(Self);
   BoxDevolucaoVeiculos.Show;
end;

procedure TBoxMenu.MenuConcessionariaClick(Sender: TObject);
begin
  if not Assigned(BoxConcessionaria) then
    BoxConcessionaria := TBoxConcessionaria.Create(Self);
   BoxConcessionaria.Show;
end;

procedure TBoxMenu.MenuContasPagarClick(Sender: TObject);
begin
  if not Assigned(BoxCPagar) then
    BoxCPagar := TBoxCPagar.Create(Self);
   BoxCPagar.Show;
end;

procedure TBoxMenu.MenuContasPagasClick(Sender: TObject);
begin
  if not Assigned(BoxCPagas) then
    BoxCPagas := TBoxCPagas.Create(Self);
   BoxCPagas.Show;
end;

procedure TBoxMenu.MenuContasReceberClick(Sender: TObject);
begin
  if not Assigned(BoxCReceber) then
    BoxCReceber := TBoxCReceber.Create(Self);
   BoxCReceber.Show;
end;

procedure TBoxMenu.MenuContasRecebidasClick(Sender: TObject);
begin
  if not Assigned(BoxCRecebid) then
    BoxCRecebid := TBoxCRecebid.Create(Self);
   BoxCRecebid.Show;
end;

procedure TBoxMenu.MenuECFClick(Sender: TObject);
begin
  if not Assigned(BoxECF) then
    Boxecf := TBoxECF.Create(Self);
   BoxECF.Show;
end;

procedure TBoxMenu.MenuTransferenciaPecasClick(Sender: TObject);
begin
  if not Assigned(BoxPecasTransferencia) then
    BoxPecasTransferencia := TBoxPecasTransferencia.Create(Self);
   BoxPecasTransferencia.Show;
end;

procedure TBoxMenu.Receita1Click(Sender: TObject);
begin
     if not Assigned(BoxReceitaSequencia) then
    BoxReceitaSequencia := TBoxReceitaSequencia.Create(Self);
   BoxReceitaSequencia.Show;
end;

procedure TBoxMenu.Receitas1Click(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosGerenciaisReceitas) then
    BoxRelatoriosGerenciaisReceitas := TBoxRelatoriosGerenciaisReceitas.Create(Self);
   BoxRelatoriosGerenciaisReceitas.Show;
end;

procedure TBoxMenu.Relatrioestoque1Click(Sender: TObject);
begin
    if not Assigned(frmRelEstoque) then
    frmRelEstoque := TfrmRelEstoque.Create(Self);
   frmRelEstoque.Show;
end;

procedure TBoxMenu.Relatrioindividualdecomisses1Click(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosIndividualComissoes) then
    BoxRelatoriosIndividualComissoes := TBoxRelatoriosIndividualComissoes.Create(Self);
   BoxRelatoriosIndividualComissoes.Show;

end;

procedure TBoxMenu.MenuReceitasSequenciaClick(Sender: TObject);
begin
  if not Assigned(BoxResultadoSequencia) then
    BoxResultadoSequencia := TBoxResultadoSequencia.Create(Self);
   BoxResultadoSequencia.Show;
end;

procedure TBoxMenu.Seguros1Click(Sender: TObject);
begin
    if not Assigned(BoxSeguro) then
    BoxSeguro := TBoxSeguro.Create(Self);
   BoxSeguro.Show;
end;

procedure TBoxMenu.Senha1Click(Sender: TObject);
begin
  if not Assigned(BoxSenha) then
    BoxSenha := TBoxSenha.Create(Self);
   BoxSenha.Show;
end;

procedure TBoxMenu.SpedCargaICMSST1Click(Sender: TObject);
begin
   if not Assigned(BoxSpedBaseST) then

    BoxSpedBaseST := TBoxSpedBaseST.Create(Self);
   BoxSpedBaseST.Show;
end;

procedure TBoxMenu.SpedPreenchimentoICMSST1Click(Sender: TObject);
begin
   if not Assigned(BoxSpedPreenchimentoBaseST) then

    BoxSpedPreenchimentoBaseST := TBoxSpedPreenchimentoBaseST.Create(Self);
   BoxSpedPreenchimentoBaseST.Show;

end;

procedure TBoxMenu.MenuSpedClick(Sender: TObject);
begin
  if not Assigned(BoxSped) then
    BoxSped := TBoxSped.Create(Self);
   BoxSped.Show;
end;

procedure TBoxMenu.MenuSituacoesClick(Sender: TObject);
begin
  if not Assigned(BoxSituacoes) then
    BoxSituacoes := TBoxSituacoes.Create(Self);
   BoxSituacoes.Show;
end;

procedure TBoxMenu.MenuReceitaVeiculosClick(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosGerenciaisReceitasVeiculos) then
    BoxRelatoriosGerenciaisReceitasVeiculos := TBoxRelatoriosGerenciaisReceitasVeiculos.Create(Self);
   BoxRelatoriosGerenciaisReceitasVeiculos.Show;
end;

procedure TBoxMenu.MenuReemissaoClick(Sender: TObject);
begin
  if not Assigned(BoxReemiteNFs) then
    BoxReemiteNFs := TBoxReemiteNFs.Create(Self);
   BoxReemiteNFs.Show;
end;

procedure TBoxMenu.MenuTrocaClick(Sender: TObject);
begin
  if not Assigned(BoxPecasTrocaCodigo) then
    BoxPecasTrocaCodigo := TBoxPecasTrocaCodigo.Create(Self);
   BoxPecasTrocaCodigo.Show;
end;

procedure TBoxMenu.MenuPedidoPecasFabricaClick(Sender: TObject);
begin
  if not Assigned(BoxPedidoPecasFabrica) then
    BoxPedidoPecasFabrica := TBoxPedidoPecasFabrica.Create(Self);
   BoxPedidopecasFabrica.Show;
end;

procedure TBoxMenu.MenuPlanodeContasClick(Sender: TObject);
begin
  if not Assigned(BoxPlanodeContas) then
    BoxPlanodeContas := TBoxPlanodeContas.Create(Self);
   BoxPlanodeContas.Show;
end;

procedure TBoxMenu.MenuCadastroSerieNFsClick(Sender: TObject);
begin
  if not Assigned(BoxCadastroSerieNFs) then
    BoxCadastroSerieNFs := TBoxCadastroSerieNFs.Create(Self);
   BoxCadastroSerieNFs.Show;
end;

procedure TBoxMenu.MenuCapitaldegiroClick(Sender: TObject);
begin
  if not Assigned(BoxcapitalGiro) then
    BoxCapitalGiro := TBoxCapitalGiro.Create(Self);
   BoxCapitalGiro.Show;
end;

procedure TBoxMenu.MenuRelatoriosComissoesClick(Sender: TObject);
begin
  if not Assigned(BoxRelatoriosComissoes) then
    BoxRelatoriosComissoes := TBoxRelatoriosComissoes.Create(Self);
   BoxRelatoriosComissoes.Show;
end;

procedure TBoxMenu.MenuRelatoriosGeraisClick(Sender: TObject);
begin
  if not Assigned(BoxRelatorios) then
    BoxRelatorios := TBoxRelatorios.Create(Self);
   BoxRelatorios.Show;
end;

procedure TBoxMenu.MenuRenegociacaoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroRenegociacao) then
    BoxFinanceiroRenegociacao := TBoxFinanceiroRenegociacao.Create(Self);
   BoxFinanceiroRenegociacao.Show;
end;

procedure TBoxMenu.Timer1Timer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := TimeToStr(Time);
end;

procedure TBoxMenu.ToolButton1Click(Sender: TObject);
begin
  if not Assigned(BoxREnave) then
    BoxREnave := TBoxRenave.Create(Self);
  BoxRenave.Show;

end;

procedure TBoxMenu.Vendasvendedor1Click(Sender: TObject);
begin
    if not Assigned(BoxVendasVendedor) then
    BoxVendasVendedor := TBoxVendasVendedor.Create(Self);
  BoxVendasVendedor.Show;
end;

procedure TBoxMenu.MenuVendaVarejoClick(Sender: TObject);
begin
  if not Assigned(BoxVendaVarejo) then
    BoxVendaVarejo := TBoxVendaVarejo.Create(Self);
  BoxVendaVarejo.Show;
end;

procedure TBoxMenu.NFICMSreemisso1Click(Sender: TObject);
begin
      if not Assigned(BoxReemissaoICMS) then
    BoxReemissaoICMS := TBoxReemissaoICMS.Create(Self);
  BoxReemissaoICMS.Show;
end;

procedure TBoxMenu.Patrimnio1Click(Sender: TObject);
begin
    if not Assigned(BoxRelatorioPatrimonial) then
    BoxRelatorioPatrimonial := TBoxRelatorioPatrimonial.Create(Self);
  BoxRelatorioPatrimonial.Show;
end;

procedure TBoxMenu.Produofinanceiras1Click(Sender: TObject);
begin
    if not Assigned(BoxProducaoFinanceiras) then
    BoxProducaoFinanceiras := TBoxProducaoFinanceiras.Create(Self);
  BoxProducaoFinanceiras.Show;
end;

procedure TBoxMenu.ProduoOS1Click(Sender: TObject);
begin
    if not Assigned(BoxProducaoOS) then
    BoxProducaoOS := TBoxProducaoOS.Create(Self);
  BoxProducaoOS.Show;
end;

procedure TBoxMenu.MenuNFConsorcioClick(Sender: TObject);
begin
  if not Assigned(BoxNFConsorcio) then
    BoxNFConsorcio := TBoxNFConsorcio.Create(Self);
  BoxNFConsorcio.Show;
end;

procedure TBoxMenu.MenuNotaFiscaldeRemessaClick(Sender: TObject);
begin
  if not Assigned(BoxNotaFiscalRemessa) then
    BoxNotaFiscalRemessa := TBoxNotaFiscalRemessa.Create(Self);
  BoxNotaFiscalRemessa.Show;
end;

procedure TBoxMenu.MenuGravacaoArquivosClick(Sender: TObject);
begin
  if not Assigned(BoxExportacao) then
    BoxExportacao := TBoxExportacao.Create(Self);
  BoxExportacao.Show;
end;

procedure TBoxMenu.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TBoxMenu.MenuFinanciamentosClick(Sender: TObject);
begin
  if not Assigned(BoxFinanciamentos) then
    BoxFinanciamentos := TBoxFinanciamentos.Create(Self);
  BoxFinanciamentos.Show;
end;

procedure TBoxMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action :=caFree;
//  BoxMenu := nil;
//  BoxEmpresas.Free;
//  BoxMenu.Free;
//  Application.Destroy;
  Application.Terminate;
  //Close;
end;

procedure TBoxMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  case MessageDlg('Deseja sair do sistema?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: CanClose := True;
     mrNo : CanClose := False;
    end
end;

procedure TBoxMenu.HelpAbout1Execute(Sender: TObject);
begin
  if not Assigned(BoxSobre) then
    BoxSobre := TBoxSobre.Create(Self);
  BoxSobre.Show;
end;

procedure TBoxMenu.MenuCompraImportacaoClick(Sender: TObject);
begin
  if not Assigned(BoxComprasNovosImportacao) then
    BoxComprasNovosImportacao := TBoxComprasNovosImportacao.Create(Self);
  BoxComprasNovosImportacao.Show;
end;

procedure TBoxMenu.MenuCompraImportacaoPecasClick(Sender: TObject);
begin
  if not Assigned(BoxComprasPecasImportacao) then
    BoxComprasPecasImportacao := TBoxComprasPecasImportacao.Create(Self);
  BoxComprasPecasImportacao.Show;
end;

procedure TBoxMenu.MenuLeituraArquivosClick(Sender: TObject);
begin
  if not Assigned(BoxLeitura) then
    BoxLeitura := TBoxLeitura.Create(Self);
  BoxLeitura.Show;
end;

procedure TBoxMenu.MenuTabelasAcessoriosClick(Sender: TObject);
begin
  if not Assigned(BoxTabelasAcessorios) then
    BoxTabelasAcessorios := TBoxTabelasAcessorios.Create(Self);
  BoxTabelasAcessorios.Show;
end;

procedure TBoxMenu.MenuTabelasVeiculosClick(Sender: TObject);
begin
  if not Assigned(BoxTabelas) then
    BoxTabelas := TBoxTabelas.Create(Self);
  BoxTabelas.Show;
end;

procedure TBoxMenu.MenuNFeClick(Sender: TObject);
begin
  if not Assigned(BoxNFe) then
    BoxNFe := TBoxNFe.Create(Self);
  BoxNFe.Show;
end;

procedure TBoxMenu.MenuNFDescontoFinanceiraClick(Sender: TObject);
begin
  if not Assigned(BoxDescontoFinanceira) then
    BoxDescontoFinanceira := TBoxDescontoFinanceira.Create(Self);
  BoxDescontoFinanceira.Show;
end;

procedure TBoxMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
      Close; //Application.Terminate;
end;

procedure TBoxMenu.FormShow(Sender: TObject);
begin
// Showmessage('Tabelas já importadas:(Dados reais não mais para testes)' + #13 +
// 'TMO' + #13 +
// 'Categorias' + #13 +
// 'Peças fábrica' + #13 +
// 'Códigos de despesas');
  StatusBar.panels[1].text := ''+ formatdatetime ('dddd", "dd" de "mmmm" de "yyyy"',DataAtual);
  Label2.Caption := BoxEmpresas.ConcessionariaEmUso.Text;
  Label3.Caption := BoxEmpresas.ID_ConcessionariaEmUso.Text;
  Label6.Caption := BoxIniFile.ip.Text;
  if DateToStr(DataAtual) <> DateToStr(Date) then
     Showmessage('Seu micro está com a data errada.' + #13 + 'Data do servidor:' +
       #13 + DateToStr(DataAtual) + #13 + 'Data local:' + #13 + DateToStr(Date));
  DataSource1.DataSet.Open;   {Login}
  DataSource2.DataSet.Open;  {Concessionaria}
  DataSource3.DataSet.Open;  {Usuario Concessionaria}
  Datasource3.Dataset.First;
 if (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuUsuarios.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso1.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuCategoria.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso2.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuCFOP.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso3.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuConcessionaria.Enabled := False;
   end;

 if (FDB1.IBDataSetLoginacesso6.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnPecas.Enabled := False;
     MenuPecas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso7.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnPessoas.Enabled := False;
     MenuPessoas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso8.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuTMO.Enabled := False;
   end;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') AND
   (FDB1.IBDataSetLoginAcesso12.AsString <> 'T') then {peças}
    begin
      BtnVendasPecas.Enabled := False;
      MenuVendasPecas.Enabled := False;
    end;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') AND
   (FDB1.IBDataSetLoginAcesso11.AsString <> 'T') then {veículos}
    begin
      BtnVendasVeiculos.Enabled := False;
      MenuVendasVeiculos.Enabled := False;
    end;
 if (FDB1.IBDataSetLoginacesso13.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnVeiculos.Enabled := False;
     MenuVeiculos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso14.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnPosVenda.Enabled := False;
     MenuPosVenda.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso19.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnCaixa.Enabled := False;
     MenuCaixa.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso21.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnBancos.Enabled := False;
     MenuBancos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso23.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuContasReceber.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso27.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuContasPagar.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso29.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuParametros.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso30.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuFaturamento.Enabled := False;
     BtnFaturamento.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso23.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuContasReceber.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso27.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuContasPagar.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso35.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuDebitoCliente.Enabled := False;
     BtnDebitos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso36.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuPagamentosCliente.Enabled := False;
     BtnPagamentos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso37.AsString <> 'T') AND //importacao
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuLeituraArquivos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso38.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuGravacaoArquivos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso40.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuFechamentoPedidos.Enabled := False;
     BtnPedidoVeiculos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso41.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuPecasFabrica.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso44.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuTabelas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso45.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuNFDescontoFinanceira.Enabled := False;
   end;

 if (FDB1.IBDataSetLoginacesso46.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuFinanciamentos.Enabled := False;
   end;
 if ((FDB1.IBDataSetLoginacesso47.AsString <> 'T') AND
    (FDB1.IBDataSetLoginacesso48.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T'))  then
   begin
     MenuRenegociacao.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso49.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnNFe.Enabled := False;   
     MenuNFe.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso51.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuRelatorios.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso52.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuCadastroSerieNFs.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso54.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuRelatoriosGerenciais.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginADM.AsString <> 'T') AND
    (FDB1.IBDataSetLoginacesso37.AsString <> 'T') then  //importacao
   begin
     MenuCompraImportacao.Enabled := False;
     MenuCompraImportacaoPecas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginADM.AsString <> 'T') and
    (FDB1.IBDataSetLoginacesso68.AsString <> 'T') then
   begin
     MenuTroca.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso67.AsString <> 'T') AND  //devolucao de veiculos
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuDevolucaoVeiculos.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso69.AsString <> 'T') AND  //relatorios de comissões
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuRelatoriosComissoes.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso70.AsString <> 'T') AND  //cadastro de taxas
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuTaxas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso72.AsString <> 'T') AND  //cadastro de taxas
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuPlanodeContas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso73.AsString <> 'T') AND  //devoluçaõ de peças
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuDevolucaoPecas.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso74.AsString <> 'T') AND  //devoluçaõ de peças
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuTransferenciaPecas.Enabled := False;
   end;                          //75 cancelamento de pedido de peças
 if (FDB1.IBDataSetLoginacesso76.AsString <> 'T') AND  //cadastro de situações
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuSituacoes.Enabled := False;
   end;
    //77 autoriza faturamento de peças qualquer valor.
     //4 alteraçãod e localização das peças
    //78 autoriza alteração de cadastro das peças
 if (FDB1.IBDataSetLoginacesso79.AsString <> 'T') AND      // 79 pedido de peças fábrica
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuPedidoPecasFabrica.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso80.AsString <> 'T') AND      // 80 AUTORIZACAO PARA REGISTRAR BAE
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuBAE.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso81.AsString <> 'T') AND      // 81 Brindes
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuBrindes.Enabled := False;
     BtnBrindes.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso82.AsString <> 'T') AND      // 82 relatorio venda varejo
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuVendaVarejo.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso83.AsString <> 'T') AND      // 83 relatorio mala direta
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuMalaDireta.Enabled := False;
   end;
//84             taxas
//85 taxas extras
 if (FDB1.IBDataSetLoginacesso86.AsString <> 'T') AND      // 86 EFD
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuEFD.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso87.AsString <> 'T') AND      // 87 NF de consorcio
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuNFConsorcio.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso88.AsString <> 'T') AND      // 88 SPED
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuSped.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso89.AsString <> 'T') AND      // 89 Ajuste NFEntrada
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuAjusteNFEntrada.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso91.AsString <> 'T') AND      // 91 nf de remessa
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuNotaFiscaldeRemessa.Enabled := False;
   end;
 if      // ICMS ST SPED CARGA CADASTRO.
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     SpedCargaICMSST1.Enabled := False;
     SpedPreenchimentoICMSST1.Enabled := False;
     NFICMSreemisso1.Enabled := False;
   end;


//90 registra/cancela avaria em veiculo
//92 Consulta do sisntegra na NFE
//93 libera os menus de entrada de pedidos pelo caixa - boleto e cheque Pos
//94 autoriza lançar valor de taxas superior ao valor lançado no pedido.

 if (FDB1.IBDataSetLoginacesso95.AsString <> 'T') AND      // 95 avaliacao de veiculos
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnAvaliacao.Enabled := False;
     MenuAvaliacao.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso96.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuRelatorioVendas.Enabled := False;
   end;
// if FDB1.IBDataSetLoginADM.AsString = 'T' then
//    BoxVendasDiarias.ShowModal;
 if (FDB1.IBDataSetLoginacesso98.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuCaixaGeral.Enabled := False;
   end;

 if (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     SpedCargaICMSST1.Enabled := False;
     SpedPreenchimentoICMSST1.Enabled := False;
     NFICMSreemisso1.Enabled := False;
   end;
 // 99 Autoriza a faturar nf de motocicleta com valor diferente ao total do pedido.
  //100 autoriza o menu de concilicacao de cartoes
   if (FDB1.IBDataSetLoginacesso100.AsString <> 'T') AND
      (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     MenuConciliacaoCartoes.Enabled := False;
   end;
end;


end.

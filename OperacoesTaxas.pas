unit OperacoesTaxas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls;

type
  TBoxTaxas = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    BtnEdita: TBitBtn;
    BtnPagamentos: TBitBtn;
    DataSourceClientes: TDataSource;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
    tblPessoasCPF: TIBStringField;
    tblPessoasNUM_CPF: TIBStringField;
    tblPessoasNASCIMENTO: TDateField;
    tblPessoasPAI: TIBStringField;
    tblPessoasMAE: TIBStringField;
    tblPessoasENDERECO: TIBStringField;
    tblPessoasBAIRRO: TIBStringField;
    tblPessoasCIDADE: TIBStringField;
    tblPessoasESTADO: TIBStringField;
    tblPessoasCEP: TIBStringField;
    tblPessoasCADASTRO: TDateField;
    tblPessoasDESCONTO: TIBBCDField;
    tblPessoasFONE1: TIBStringField;
    tblPessoasFONE2: TIBStringField;
    tblPessoasFONE3: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMPRESA: TIBStringField;
    tblPessoasADMISSAO: TDateField;
    tblPessoasSALARIO: TIBBCDField;
    tblPessoasEMPR_ENDERECO: TIBStringField;
    tblPessoasEMPR_BAIRRO: TIBStringField;
    tblPessoasEMPR_CIDADE: TIBStringField;
    tblPessoasEMPR_ESTADO: TIBStringField;
    tblPessoasEMPR_CEP: TIBStringField;
    tblPessoasEMPR_FONE: TIBStringField;
    tblPessoasREF_NOME1: TIBStringField;
    tblPessoasREF_FONE1: TIBStringField;
    tblPessoasREF_NOME2: TIBStringField;
    tblPessoasREF_FONE2: TIBStringField;
    tblPessoasREF_COML1: TIBStringField;
    tblPessoasREF_COML_FONE1: TIBStringField;
    tblPessoasREF_COML2: TIBStringField;
    tblPessoasREF_COML_FONE2: TIBStringField;
    tblPessoasREF_BANC: TIBStringField;
    tblPessoasREF_AG_BANC: TIBStringField;
    tblPessoasREF_CTA_BANC: TIBStringField;
    tblPessoasFOTO: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    DataSourcePedidoVeiculos: TDataSource;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    tblPedidoVeiculosID_USUARIO: TIntegerField;
    tblPedidoVeiculosUSUARIO: TIBStringField;
    tblPedidoVeiculosCOR: TIBStringField;
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosVALOR_VIP: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField;
    tblPedidoVeiculosVALOR_VIP2: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField;
    Label2: TLabel;
    Label7: TLabel;
    CodigoCliente: TJvDBMaskEdit;
    Pedido: TJvDBMaskEdit;
    SpeedButton4: TSpeedButton;
    NomeCliente: TJvDBMaskEdit;
    Marca: TJvDBMaskEdit;
    Modelo: TJvDBMaskEdit;
    ChassiVeiculo: TJvDBMaskEdit;
    AnoFabricacao: TJvDBMaskEdit;
    AnoModelo: TJvDBMaskEdit;
    Cor: TJvDBMaskEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Renavam: TJvDBMaskEdit;
    Placa: TJvDBMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Valor: TJvDBMaskEdit;
    Btnxml: TBitBtn;
    Label6: TLabel;
    BtnConsulta: TBitBtn;
    OpenDialog1: TOpenDialog;
    ArquivoAnexado: TLabel;
    tblPedidoVeiculosAcessorios: TIBDataSet;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField;
    tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField;
    DataSourcePedidoVeiculosAcessorios: TDataSource;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idPedido : Integer;
  end;

var
  BoxTaxas: TBoxTaxas;
  Retorno : String;

implementation

uses FDB, empresas, Biblioteca;

{$R *.dfm}

procedure TBoxTaxas.BtnConsultaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o arquivo de taxas';
  OpenDialog1.DefaultExt := '*.jpg';
  OpenDialog1.Filter := 'Arquivos jpg (*.jpg)|*.jpg|Arquivos jpg (*.jpg)|*.jpg|Todos os Arquivos (*.*)|*.*';
//  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
    if OpenDialog1.Execute then

end;

procedure TBoxTaxas.FormShow(Sender: TObject);
begin
  BtnPagamentos.Enabled := False;
  if (FDB1.IBDataSetLoginacesso71.AsString = 'T') or  //pagamento de taxas
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     BtnPagamentos.Enabled := True;
   end;

end;

procedure TBoxTaxas.PedidoExit(Sender: TObject);
begin
if Pedido.Text = '' then
   Pedido.Text := '0';
idPedido := StrToInt(Pedido.Text);
if StrtoInt(pedido.Text) = 0 then
  begin
   SpeedButton4.Click;
   Pedido.SetFocus;
  end
else
  begin
    with tblPedidoVeiculos do
      begin
       if idPedido<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idPedido;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Pedido inexistente.');
             Pedido.SetFocus;
            end
          else
            begin
             with tblPessoas do
               begin
//                 Close;
//                 ParamByName('id').AsInteger := StrtoInt(CodigoVendedor.Text);
//                 Open;
//                 NomeVendedor.Text := tblPessoas.FieldByName('Nome').AsString;
                 Close;
                 ParamByName('id').AsInteger := StrtoInt(CodigoCliente.Text);
                 Open;
                 NomeCliente.Text := tblPessoas.FieldByName('Nome').AsString;
                end;
               if (FieldByName('Status').AsString <> 'Faturado') and
                  (FieldByName('Status').AsString <> 'Fechado') then
                begin
                  showmessage('Este pedido não está faturado.');// + #13 +
                  Pedido.SetFocus;
                end
               else
//                if FieldByName('Status').AsString = 'Fechado' then
//                 begin
//                  showmessage('Este pedido está fechado.');
//                  Pedido.SetFocus;
//                 end
//                else
                 begin
                  Renavam.SetFocus;
                 end;
            end;
         end;
      end;
  end;
end;

procedure TBoxTaxas.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de veículos','Pedido_veiculos',
      ['Modelo','Id_Pedido_veiculos','Chassi','Id_Concessionaria'],
      ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
      'Chassi','Id_pedido_veiculos',Fdb1.SQLConnection1,'','','');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
     end;
     Pedido.SetFocus;
end;

end.

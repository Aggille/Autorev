unit OperacoesTaxasPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, rxToolEdit, DBCtrls,
  Buttons, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls,
  IBQuery, JvExStdCtrls, JvEdit, JvExControls, JvDBLookup;

type
  TBoxOperacoesTaxasPagamento = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblPedidoVeiculosAcessorios: TIBDataSet;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField;
    tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField;
    DataSourcePedidoVeiculosAcessorios: TDataSource;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    DataSourceClientes: TDataSource;
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
    tblPedidoVeiculosRENAVAM: TIBStringField;
    DataSourcePedidoVeiculos: TDataSource;
    tblCaixa: TIBDataSet;
    tblCaixaID_CAIXA: TIntegerField;
    tblCaixaID_CONCESSIONARIA: TIntegerField;
    tblCaixaID_CLIENTES: TIntegerField;
    tblCaixaDOCUMENTO: TIBStringField;
    tblCaixaORIGEM: TIBStringField;
    tblCaixaNATUREZA: TIBStringField;
    tblCaixaFORMA_PAG: TIBStringField;
    tblCaixaDATA_LANCAMENTO: TDateField;
    tblCaixaDATA_RECEBIMENTO: TDateField;
    tblCaixaVALOR: TIBBCDField;
    tblCaixaCONTA: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    DataSourceCaixa: TDataSource;
    tblBanco: TIBDataSet;
    tblBancoID_BANCO: TIntegerField;
    tblBancoID_CONCESSIONARIA: TIntegerField;
    tblBancoID_CLIENTES: TIntegerField;
    tblBancoID_AVALISTA: TIntegerField;
    tblBancoDOCUMENTO: TIBStringField;
    tblBancoNATUREZA: TIBStringField;
    tblBancoDATA: TDateField;
    tblBancoVALOR: TIBBCDField;
    tblBancoBANCO: TIBStringField;
    tblBancoCONTA: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    tblBancoORIGEM: TIBStringField;
    DataSourceBanco: TDataSource;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    CodigoCliente: TJvDBMaskEdit;
    Label7: TLabel;
    Label1: TLabel;
    Marca: TJvDBMaskEdit;
    Modelo: TJvDBMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    ChassiVeiculo: TJvDBMaskEdit;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Renavam: TJvDBMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Placa: TJvDBMaskEdit;
    Label6: TLabel;
    Valor: TJvDBMaskEdit;
    Banco: TDBLookupComboBox;
    Label8: TLabel;
    tblPlaconBanco: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    DataSourcePlaconBanco: TDataSource;
    RadioGroup1: TRadioGroup;
    Bevel1: TBevel;
    Label9: TLabel;
    BtnConfirma: TBitBtn;
    tblPedidoVeiculosTaxas: TIBDataSet;
    DataSourceVeiculosTaxas: TDataSource;
    tblPedidoVeiculosTaxasID_PEDIDO_VEICULOS_TAXAS: TIntegerField;
    tblPedidoVeiculosTaxasID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosTaxasDATA_PAGAMENTO: TDateField;
    tblPedidoVeiculosTaxasVALOR: TIBBCDField;
    tblPedidoVeiculosTaxasTIPO_PAGAMENTO: TIBStringField;
    DataPagamento: TJvDBDateEdit;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    NomeConta: TDBEdit;
    IBQuery1: TIBQuery;
    Pedido: TJvEdit;
    CodigoConta: TJvEdit;
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULO: TIntegerField;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    DataSourceDespesas: TDataSource;
    tblBancoID_CRECEBER: TIntegerField;
    IBQuery2: TIBQuery;
    tblBancoID_DESPESAS: TIntegerField;
    tblPedidoVeiculosAcessoriosENTREGA: TDateField;
    tblPedidoVeiculosAcessoriosCUSTO: TIBBCDField;
    tblPedidoVeiculosAcessoriosENTREGUE_POR: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblConcessionaria: TIBDataSet;
    tblConcessionariaID_CONCESSIONARIA: TIntegerField;
    tblConcessionariaEMPRESA: TIBStringField;
    tblConcessionariaENDERECO: TIBStringField;
    tblConcessionariaCIDADE: TIBStringField;
    tblConcessionariaESTADO: TIBStringField;
    tblConcessionariaCNPJ: TIBStringField;
    tblConcessionariaIE: TIBStringField;
    tblConcessionariaCONCESSION: TIBStringField;
    tblConcessionariaTELEFONE: TIBStringField;
    tblConcessionariaCOD_CONCES: TIBStringField;
    tblConcessionariaALIQUOTA_ISS: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    tblConcessionariaCODIGO_EMPRESA_JB: TIBStringField;
    tblConcessionariaIM: TIBStringField;
    tblConcessionariaCNAE: TIBStringField;
    tblConcessionariaFANTASIA: TIBStringField;
    tblConcessionariaCEP: TIBStringField;
    tblConcessionariaNUMERO: TIBStringField;
    tblConcessionariaCOMPLEMENTO: TIBStringField;
    tblConcessionariaCODIGO_MUNICIPIO: TIBStringField;
    tblConcessionariaBAIRRO: TIBStringField;
    tblConcessionariaHOST: TIBStringField;
    tblConcessionariaPORT: TIBStringField;
    tblConcessionariaUSUARIO: TIBStringField;
    tblConcessionariaPASS: TIBStringField;
    DataSourceConcessionaria: TDataSource;
    Concessionaria: TJvDBLookupCombo;
    Label10: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoConta1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
    procedure tblPedidoVeiculosAfterPost(DataSet: TDataSet);
    procedure ConcessionariaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   idConta : Integer;
   idPedido : Integer;
   retorno : String;
   idConcessionariaGravar : Integer;
  end;

var
  BoxOperacoesTaxasPagamento: TBoxOperacoesTaxasPagamento;

implementation

uses Empresas, FDB, Biblioteca, efuncoes;

{$R *.dfm}

procedure TBoxOperacoesTaxasPagamento.BtnConfirmaClick(Sender: TObject);
var
  idDespesas : Integer;
begin
                  with tblPedidoVeiculosAcessorios do
                   begin
                     Close;
                     ParamByName('idPedidoVeiculos').AsInteger := idPedido;
                     Open;
                     edit;
                   end;

 if ((tblPedidoVeiculosAcessorios.FieldbYName('Custo').AsCurrency +
    tblPedidoVeiculosTaxas.FieldByName('Valor').AsCurrency >
    tblPedidoVeiculosAcessorios.FieldbYName('Valor_Acessorio').AsCurrency) and
    ((FDB1.IBDataSetLoginacesso94.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T')))        then
   Showmessage('Valor maior que o autorizado.')
 else
  try
    {Pegar sequence para despesas}
    IBQuery2.Open;
    IdDespesas := IBQuery2.FieldByName('id_Despesas').AsInteger;
    IBQuery2.Close;
    with tblPedidoVeiculosAcessorios do
     begin
      Edit;
      FieldByName('Custo').AsCurrency :=  FieldByName('Custo').AsCurrency +
        tblPedidoVeiculosTaxas.FieldByName('Valor').AsCurrency;
      FieldByName('Entrega').AsDateTime := DataPagamento.Date;
      Post;
     end;
    with tblPedidoVeiculosTaxas do
     begin
      FieldByName('Id_pedido_veiculos').AsInteger :=
        tblPedidoVeiculos.fieldByName('id_pedido_veiculos').AsInteger;
      if RadioGroup1.ItemIndex = 1 then
       FieldByName('Tipo_Pagamento').AsString := 'Banco'
      else
       FieldByName('Tipo_Pagamento').AsString := 'Caixa';
      Post;
     end;
     with IBQuery1 do
      begin
       Close;
       ParamByName('idPedidoVeiculos').AsInteger := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsInteger;
       Open;
       if (IBQuery1.FieldByName('valor').AsCurrency >
         tblPedidoVeiculosAcessorios.FieldByName('Valor_Acessorio').AsCurrency) and
          (FDB1.IBDataSetLoginacesso85.AsString <> 'T') and      // 84 taxas
          (FDB1.IBDataSetLoginADM.AsString <> 'T')
          then
         begin
           showmessage('O total de taxas pagas é maior que o autorizado.');
           abort;
         end;
      end;
     tblPedidoVeiculos.FieldByName('Valor_Taxas').AsCurrency := IBQuery1.FieldByName('Valor').AsCurrency;
     tblPedidoVeiculos.Post;
     if RadioGroup1.ItemIndex = 1 then //banco
       begin
         with tblBanco do
           begin
             Insert;
             FieldByName('id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             FieldByName('Id_Clientes').AsInteger := tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
             FieldByName('Documento').AsString := 'TAXAS';
             FieldByName('Natureza').AsString := 'S';
             FieldByName('Data').AsDateTime := DataPagamento.Date;
             FieldByName('Valor').AsCurrency := tblPedidoVeiculosTaxas.FieldByName('Valor').AsCurrency;
             FieldByName('Banco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
             FieldByName('Conta').AsString := tblPlacon.FieldByName('Conta').AsString;
             FieldByName('Historico').AsString := Substr('Pgto.Taxas Veíc.placa ' +
               tblPedidoVeiculos.FieldByName('Placa').AsString + '-' + NomeCliente.Text,1,60);
             FieldByName('Origem').AsString := 'V';
             FieldByName('Id_Despesas').AsInteger := idDespesas;
             Post;
           end;
       end
     else
       begin  //Caixa
         with tblCaixa do
           begin
             Insert;
             FieldByName('id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             FieldByName('Id_Clientes').AsInteger := tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
             FieldByName('Documento').AsString := 'TAXAS';
             FieldByName('Origem').AsString := 'V';
             FieldByName('Natureza').AsString := 'S';
             FieldByName('Forma_Pag').AsString := 'DINHEIRO';
             FieldByName('Data_Lancamento').AsDateTime := DataAtual;
             FieldByName('Data_recebimento').AsDateTime := DataPagamento.Date;
             FieldByName('Valor').AsCurrency := tblPedidoVeiculosTaxas.FieldByName('Valor').AsCurrency;
             FieldByName('Conta').AsString := tblPlacon.FieldByName('Conta').AsString;
             FieldByName('Historico').AsString := Substr('Pgto.Taxas Veíc.placa ' +
               tblPedidoVeiculos.FieldByName('Placa').AsString + '-' + NomeCliente.Text,1,60);
             FieldByName('Status').AsString := 'Processado';
             Post;
           end;
       end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Despesas').AsInteger := idDespesas;
     FieldByName('Id_Concessionaria').AsInteger := idConcessionariaGravar;
     //tblConcessionaria.FieldByName('id_Concessionaria').AsInteger;
//       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Conta').AsString := CodigoConta.Text;
     FieldByName('Historico').AsString := Substr('Pgto.Taxas Veíc.placa ' +
       tblPedidoVeiculos.FieldByName('Placa').AsString + '-' + NomeCliente.Text,1,60);
     FieldByName('Data').AsDateTime := tblPedidoVeiculosTaxas.FieldByName('Data_Pagamento').AsDateTime;
     FieldByName('Setor').AsString := 'V';
     FieldByName('Valor').AsCurrency := tblPedidoVeiculosTaxas.FieldByName('Valor').AsCurrency;
     Post;
   end;
  except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
  end;
  showmessage('Dados gravados');
  CodigoConta.Text := '';
  Pedido.Text := '';
  NomeConta.Text := '';
  NomeCliente.Text := '';
  FecharDs;
  AbrirDs;
  Pedido.SetFocus;
end;

procedure TBoxOperacoesTaxasPagamento.CodigoConta1Exit(Sender: TObject);
begin
if CodigoConta.Text = '' then
   CodigoConta.Text := '0';
idConta := StrToInt(CodigoConta.Text);
if StrtoInt(CodigoConta.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoConta.SetFocus;
  end
else
  begin
    with tblPlacon do
      begin
       if idConta<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idConta;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Conta inexistente.');
             CodigoConta.SetFocus;
            end
          else
            begin
              NomeConta.Text := FieldbyName('Descricao').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxOperacoesTaxasPagamento.ConcessionariaChange(Sender: TObject);
begin
  idConcessionariaGravar := tblConcessionaria.FieldByName('id_Concessionaria').AsInteger;
end;

procedure TBoxOperacoesTaxasPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FecharDs;
end;

procedure TBoxOperacoesTaxasPagamento.FecharDs;
begin
   tblPedidoVeiculos.Close;
   tblPedidoVeiculosTaxas.Close;
   tblBanco.Close;
   tblPlaconBanco.Close;
   tblDespesas.Close;
   tblPlacon.Close;
   tblCaixa.Close;
   tblConcessionaria.Close;
end;

procedure TBoxOperacoesTaxasPagamento.AbrirDs;
begin
   tblConcessionaria.Open;
   with tblConcessionaria do
   begin
     first;
     while not eof do
     begin
       if StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)= fieldByName('Id_Concessionaria').AsInteger then
         break;
       next;
     end;
   end;
   Concessionaria.DisplayEmpty := tblConcessionaria.FieldByName('Empresa').AsString;
   idConcessionariaGravar := tblConcessionaria.FieldByName('Id_Concessionaria').AsInteger;
   tblPedidoVeiculos.Open;
   tblPedidoVeiculosTaxas.Open;
   tblBanco.Open;
   tblPlaconBanco.Open;
   tblPlacon.Open;
   tblDespesas.Open;
   tblCaixa.Open;
   RadioGroup1.ItemIndex := 1;
end;

procedure TBoxOperacoesTaxasPagamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
end;

procedure TBoxOperacoesTaxasPagamento.FormShow(Sender: TObject);
begin
   AbrirDs;
end;

procedure TBoxOperacoesTaxasPagamento.PedidoExit(Sender: TObject);
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
                 begin
                  tblPedidoVeiculos.Edit;
                  tblPedidoVeiculosTaxas.Insert;
                  tblPedidoveiculosTaxas.FieldByName('Data_Pagamento').AsDateTime := DataAtual;
                  Renavam.SetFocus;
                 end;
            end;
         end;
      end;
  end;
end;

procedure TBoxOperacoesTaxasPagamento.RadioGroup1Click(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 1 then
    begin
      Banco.SetFocus;
    end
  else
    begin
      CodigoConta.SetFocus;
    end;
end;

procedure TBoxOperacoesTaxasPagamento.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        idConta := tblPlacon.FieldByName('conta').AsInteger;
        tblBanco.FieldByName('Conta').Asstring :=
          tblPlacon.FieldByName('Conta').AsString;
        NomeConta.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoConta.SetFocus;
end;

procedure TBoxOperacoesTaxasPagamento.SpeedButton4Click(Sender: TObject);
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

procedure TBoxOperacoesTaxasPagamento.tblPedidoVeiculosAfterCancel(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxOperacoesTaxasPagamento.tblPedidoVeiculosAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

end.


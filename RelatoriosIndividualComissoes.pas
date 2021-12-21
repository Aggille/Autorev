unit RelatoriosIndividualComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Buttons, Mask, rxToolEdit, DB,
  IBCustomDataSet, frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvDBControls;

type
  TBoxRelatoriosIndividualComissoes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    Panel6: TPanel;
    Label7: TLabel;
    NomeVendedor: TDBEdit;
    CodigoVendedor: TEdit;
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
    DataSourcePedidoVeiculos: TDataSource;
    DataSourceComissoes: TDataSource;
    frxReport1: TfrxReport;
    tblRelPedidoVeiculos: TfrxDBDataset;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
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
    DataSourcePessoas: TDataSource;
    tblRelConcessionaria: TfrxDBDataset;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULO: TIntegerField;
    tblPedidoVeiculosFORMA_VISITA: TIBStringField;
    tblPedidoVeiculosID_VEICULO_USADO: TIntegerField;
    tblPedidoVeiculosDATA_PEDIDO: TDateField;
    tblPedidoVeiculosNOME: TIBStringField;
    JvDBGrid1: TJvDBGrid;
    JvDBNavigator1: TJvDBNavigator;
    tblComissoes: TIBDataSet;
    tblComissoesID_COMISSOES: TIntegerField;
    tblComissoesID_PEDIDO: TIntegerField;
    tblComissoesID_VENDEDOR: TIntegerField;
    tblComissoesID_CLIENTES: TIntegerField;
    tblComissoesMODELO: TIBStringField;
    tblComissoesANO_FABRICACAO: TIBStringField;
    tblComissoesANO_MODELO: TIBStringField;
    tblComissoesCHASSI: TIBStringField;
    tblComissoesVALOR_VENDA: TIBBCDField;
    tblComissoesBASE_COMISSAO: TIBBCDField;
    tblComissoesTABELA_VIP: TIBBCDField;
    tblComissoesTABELA_NORMAL: TIBBCDField;
    tblComissoesTABELA_EXCLUSIVA: TIBBCDField;
    tblComissoesPERCENTUAL: TIBBCDField;
    tblComissoesVALOR_COMISSAO: TIBBCDField;
    tblComissoesPERIODO: TIBStringField;
    tblComissoesNOME: TIBStringField;
    BtnImprimir: TBitBtn;
    ComboBoxLoja: TComboBox;
    SpeedButton2: TSpeedButton;
    BtnConclui: TBitBtn;
    procedure tblComissoesAfterCancel(DataSet: TDataSet);
    procedure tblComissoesAfterPost(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConcluiClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   idVendedor : Integer;
  end;

var
  Retorno : String;
  BoxRelatoriosIndividualComissoes: TBoxRelatoriosIndividualComissoes;

implementation

uses FDB, Biblioteca;

{$R *.dfm}

procedure TBoxRelatoriosIndividualComissoes.BitBtn1Click(Sender: TObject);
begin
                   showmessage('asasas');

{   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
     Open;
     First;
    end;
   with tblComissoes do
    begin
      Close;
      ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
      Open;
    end;
                  }

    end;

procedure TBoxRelatoriosIndividualComissoes.BitBtn2Click(Sender: TObject);
begin
showmessage('sa');
end;

procedure TBoxRelatoriosIndividualComissoes.BtnConcluiClick(Sender: TObject);
begin
    showmessage('10');
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
     Open;
     First;
    end;
    showmessage('13');
   with tblComissoes do
    begin
    showmessage('1');
      Close;
      ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
      //Verificar de existe lançamentos para o vendedor no perído e se tiver pergunta se quer apagar.
      //Criar lançamentos novos para o período / vendedor.
      Open;
      while not tblPedidoVeiculos.Eof do
      begin
        Insert;
                         showmessage('11');
        FieldByName('id_pedido').AsInteger := tblPedidoVeiculos.FieldByName('id_pedido').AsInteger;
        FieldByName('id_vendedor').AsInteger := tblPedidoVeiculos.FieldByName('id_vendedor').AsInteger;
        FieldByName('id_clientes').AsInteger := tblPedidoVeiculos.FieldByName('id_clientes').AsInteger;
        FieldByName('modelo').AsString := tblPedidoVeiculos.FieldByName('modelo').AsString;
        FieldByName('ano_fabricacao').AsString := tblPedidoVeiculos.FieldByName('ano_fabricacao').AsString;
        FieldByName('ano_modelo').AsString := tblPedidoVeiculos.FieldByName('ano_modelo').AsString;
        FieldByName('chassi').AsString := tblPedidoVeiculos.FieldByName('chassi').AsString;
        FieldByName('valor_venda').AsCurrency := tblPedidoVeiculos.FieldByName('valor_da_venda').AsCurrency;
        FieldByName('base_comissao').AsCurrency := tblPedidoVeiculos.FieldByName('base_comissao').AsCurrency;
        FieldByName('tabela_vip').AsCurrency := tblPedidoVeiculos.FieldByName('valor_vip').AsCurrency;
        FieldByName('tabela_normal').AsCurrency := tblPedidoVeiculos.FieldByName('valor_normal').AsCurrency;
        FieldByName('tabela_exclusiva').AsCurrency := tblPedidoVeiculos.FieldByName('valor_exclusivo').AsCurrency;
        FieldByName('tabela_vip').AsCurrency := tblPedidoVeiculos.FieldByName('valor_vip').AsCurrency;
        FieldByName('percentual').AsCurrency := tblPedidoVeiculos.FieldByName('percentual').AsCurrency;
        FieldByName('valor_comissao').AsCurrency := tblPedidoVeiculos.FieldByName('base_comissao').AsCurrency *
                                                    tblPedidoVeiculos.FieldByName('percentual').AsCurrency;
        Post;
        tblPedidoVeiculos.next;
      end;
    end;
end;

procedure TBoxRelatoriosIndividualComissoes.BtnImprimirClick(Sender: TObject);
begin
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
     Open;
    end;
   frxReport1.Variables.clear;
   frxReport1.Variables['DataInicial'] := DataInicial.Date;
   frxReport1.Variables['DataFinal'] := DataFinal.Date;
   frxReport1.ShowReport;
end;

procedure TBoxRelatoriosIndividualComissoes.CodigoVendedorExit(Sender: TObject);
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idVendedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idVendedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoVendedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                Codigovendedor.SetFocus;
               end;
            end;
            NomeVendedor.Text := FieldbyName('Nome').Text;
//            if FieldByName('Vendedor_Ynova').AsString = 'T' then
//              VendedorYnova := True
//            else
//              VendedorYnova := False;
         end;
      end;
  end;

end;

procedure TBoxRelatoriosIndividualComissoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxRelatoriosIndividualComissoes.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
begin
 if ComboBoxLoja.ItemIndex = 0 then
  begin
   frxReport1.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip').AsFloat;
   frxReport1.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal').AsFloat;
   frxReport1.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo').Asfloat;
  end
 else
  begin
   frxReport1.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip2').AsCurrency;
   frxReport1.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal2').AsCurrency;
   frxReport1.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo2').AsCurrency;
  end;
 // if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency > tblPedidoVeiculos.FieldByName('Valor_Exclusivo').AsCurrency then
  frxReport1.variables['perc'] := 0.8;
  if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency >= tblPedidoVeiculos.FieldByName('Valor_Normal').AsCurrency then
    frxReport1.variables['perc'] := 1.0;
  if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency >=  tblPedidoVeiculos.FieldByName('Valor_VIP').AsCurrency then
    frxReport1.variables['perc'] := 1.2;
end;

procedure TBoxRelatoriosIndividualComissoes.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblPedidoVeiculos.FieldByName('Id_Vendedor').AsString :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeVendedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoVendedor.SetFocus;
end;

procedure TBoxRelatoriosIndividualComissoes.tblComissoesAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxRelatoriosIndividualComissoes.tblComissoesAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

end.

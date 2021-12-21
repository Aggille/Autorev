unit RelatoriosGerenciaisReceitasVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, Mask, rxToolEdit,
  ExtCtrls, frxClass, DB, IBCustomDataSet, frxDBSet, IBQuery;

type
  TBoxRelatoriosGerenciaisReceitasVeiculos = class(TForm)
    GroupBox2: TGroupBox;
    Shape1: TShape;
    DadosFiltro: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    BtnImprimir: TBitBtn;
    tblRelConcessionaria: TfrxDBDataset;
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
    DataSourcePedidoVeiculos: TDataSource;
    tblPedidoVeiculos: TIBDataSet;
    tblRelPedidoVeiculos: TfrxDBDataset;
    frxReport1: TfrxReport;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosNOTA_ENT: TIBStringField;
    tblVeiculosDATA_ENT: TDateField;
    tblVeiculosFONE: TIBStringField;
    tblVeiculosCONSIG: TIBStringField;
    tblVeiculosCUSTO: TIBBCDField;
    tblVeiculosCUSTO_ICMS: TIBBCDField;
    tblVeiculosPRECO: TIBBCDField;
    tblVeiculosDATA_SAI: TDateField;
    tblVeiculosNF_SAIDA: TIBStringField;
    tblVeiculosVENDA: TIBStringField;
    tblVeiculosMOTOR: TIBStringField;
    tblVeiculosFINANC_PRO: TIBStringField;
    tblVeiculosSTATUS: TIBStringField;
    tblVeiculosRESERVADA: TDateField;
    tblVeiculosFOTO: TIBStringField;
    tblVeiculosRESERVADA_POR: TIBStringField;
    tblVeiculosESTOQUE: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    DataSourceVeiculos: TDataSource;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosCUSTO_ICMS: TIBBCDField;
    tblPedidoVeiculosEMPRESA: TIBStringField;
    tblPedidoVeiculosCIDADE: TIBStringField;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    IBQuery2: TIBQuery;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA1: TIntegerField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblPedidoVeiculosCalcFields(DataSet: TDataSet);
    procedure tblPedidoVeiculosAfterPost(DataSet: TDataSet);
    procedure tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatoriosGerenciaisReceitasVeiculos: TBoxRelatoriosGerenciaisReceitasVeiculos;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.BtnImprimirClick(Sender: TObject);
begin
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
     case MessageDlg('Recalcular valores?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes :
        begin
         IBQuery2.SQL.Clear;
         IBQuery2.Sql.Add('select sum(Pedido_veiculos_recebimento.valor_original) as Valor');
         IBQuery2.SQL.Add('from Pedido_veiculos_recebimento');
         IBQuery2.SQL.Add('where Pedido_veiculos_recebimento.Id_Pedido_veiculos =');
         IBQuery2.Sql.Add(':idPedidoVeiculos');
         tblPedidoveiculos.First;
         while not tblPedidoVeiculos.eof do
          begin
            IBQuery2.Close;
            IBQuery2.Parambyname('idPedidoVeiculos').AsInteger :=
               tblPedidoveiculos.FieldByName('id_pedido_veiculos').AsInteger;
            IBQuery2.Open;
            tblPedidoVeiculos.Edit;
            tblPedidoveiculos.FieldByName('Valor_a_receber').AsCurrency :=
              IBQuery2.FieldByName('Valor').AsCurrency;
            tblPedidoVeiculos.Post;
            tblPedidoVeiculos.Next;
          end;
         tblPedidoVeiculos.Close;
         tblPedidoVeiculos.Open;
       end;
      end;
    end;
   frxReport1.Variables.clear;
   frxReport1.Variables['DataInicial'] := DataInicial.Date;
   frxReport1.Variables['DataFinal'] := DataFinal.Date;
   frxReport1.ShowReport;
end;

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourcePedidoVeiculos.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
  DataSourceVeiculos.Dataset.Close;
  Action :=caFree;
  BoxRelatoriosGerenciaisReceitasVeiculos := nil;
end;

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   {: se apertou ESC, fecha janela}
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

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.FormShow(Sender: TObject);
begin
  DataSourcePedidoVeiculos.Dataset.Open;
  DataSourceConcessionaria.Dataset.Open;
  DataSourceVeiculos.Dataset.Open;
  DataInicial.SetFocus;
end;

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.tblPedidoVeiculosAfterCancel(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.tblPedidoVeiculosAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxRelatoriosGerenciaisReceitasVeiculos.tblPedidoVeiculosCalcFields(
  DataSet: TDataSet);
begin
{   with tblPedidoveiculos do
   begin
     if ( fieldbyname( 'origem' ).asString = 'O' ) then // and ( fieldbyname( 'val_serv' ).asFloat <> 0 ) then
        fieldbyname( 'desc_origem' ).asString := 'Pós-venda';

//     if ( fieldbyname( 'origem' ).asString = 'O' ) and ( fieldbyname( 'TOT_PROD' ).asFloat <> 0 )then
//        fieldbyname( 'desc_origem' ).asString := 'Pós-venda';

     if ( fieldbyname( 'origem' ).asString = 'P' ) then
        fieldbyname( 'desc_origem' ).asString := 'Venda peças';

   end;}
end;

end.

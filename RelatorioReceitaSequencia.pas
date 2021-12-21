unit RelatorioReceitaSequencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, frxClass,
  frxDBSet, Mask, rxToolEdit, DBClient, IBQuery, Grids, DBGrids;

type
  TBoxReceitaSequencia = class(TForm)
    Panel1: TPanel;
    tblNofisa: TIBDataSet;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaVALOR: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaEMPRESA: TIBStringField;
    tblNofisaCIDADE: TIBStringField;
    tblNofisaDESC_ORIGEM: TStringField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    DataSourceNofisa: TDataSource;
    DataSourceConcessionaria: TDataSource;
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
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    DataSourcePedidoVeiculos: TDataSource;
    DadosFiltro: TLabel;
    StatusBar1: TStatusBar;
    tblAuxReceita: TClientDataSet;
    tblAuxReceitaALIQ_ICMS: TFloatField;
    tblAuxReceitaTOTAL: TCurrencyField;
    tblAuxReceitaBASE_ICMS: TCurrencyField;
    tblAuxReceitaICMS: TCurrencyField;
    tblAuxReceitaBASE_ICMS_ST: TCurrencyField;
    tblAuxReceitaICMS_ST: TCurrencyField;
    tblAuxReceitaVLR_IPI: TCurrencyField;
    tblAuxReceitaRECEITA_VEICULO: TCurrencyField;
    IBQuery1: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery3: TIBQuery;
    tblPedidoVeiculos: TIBDataSet;
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
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA1: TIntegerField;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    dts1: TDataSource;
    tblAuxReceitaMESANO: TStringField;
    IBQuery2: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    tblAuxReceitaLUCRO: TCurrencyField;
    tblAuxReceitaICMS2: TCurrencyField;
    tblAuxReceitaCUSTO: TCurrencyField;
    tblAuxReceitaPRECO_PECAS: TCurrencyField;
    tblAuxReceitaLUCRO_PECAS: TCurrencyField;
    IBQuery9: TIBQuery;
    tblAuxReceitaPRECO_PECAS_OFICINA: TCurrencyField;
    tblAuxReceitaICMS_OFICINA: TCurrencyField;
    tblAuxReceitaCUSTO_OFICINA: TCurrencyField;
    tblAuxReceitaLUCRO_PECAS_OFICINA: TCurrencyField;
    tblAuxReceitaLUCRO20: TCurrencyField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxReceitaSequencia: TBoxReceitaSequencia;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxReceitaSequencia.BitBtn1Click(Sender: TObject);
//var
// MesInicial, AnoInicial, MesFinal, AnoFinal : String;
begin
//  MesInicial := formatdatetime('mm',strtodatetime(DataInicial.Text));
//  AnoInicial := formatdatetime('yy',strtodatetime(DataInicial.text));
//  MesFinal := formatdatetime('mm',strtodatetime(DataFinal.Text));
//  AnoFinal := formatdatetime('yy',strtodatetime(DataFinal.text));
  tblAuxReceita.Open;
  With tblAuxReceita do
   while (DataInicial.Date < DataFinal.Date) do
    begin
     Insert;
     FieldByName('MesAno').AsString := formatdatetime('mm',strtodatetime(DataInicial.Text)) + '/' +
                                        formatdatetime('yyyy',strtodatetime(DataInicial.text));
     IBQuery1.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery1.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery1.Open;
     FieldByName('Receita_Veiculos').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency;
     IBQuery2.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery2.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery2.Open;
     FieldByName('Receita_Pecas_Oficina').AsCurrency := IBQuery2.FieldbyName('Valor').AsCurrency;
     IBQuery3.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery3.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery3.Open;
     FieldByName('Receita_Pecas').AsCurrency := IBQuery3.FieldbyName('Valor').AsCurrency;
     IBQuery4.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery4.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery4.Open;
     FieldByName('Receita_MO').AsCurrency := IBQuery4.FieldbyName('Valor').AsCurrency;
     IBQuery5.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery5.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery5.Open;
     FieldByName('Custo_Veiculos').AsCurrency := IBQuery5.FieldbyName('Valor').AsCurrency;
     FieldByName('Lucro_Veiculos').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency -
                                                 IBQuery5.FieldbyName('Valor').AsCurrency;
     IBQuery6.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery6.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery6.Open;
     FieldByName('Despesas').AsCurrency := IBQuery6.FieldbyName('Valor').AsCurrency;
//     FieldByName('DespesasTotais').AsCurrency := IBQuery6.FieldbyName('Valor').AsCurrency;
//     IBQuery7.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
//     IBQuery7.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
//     IBQuery7.Open;
//     FieldByName('Taxas').AsCurrency := IBQuery7.FieldbyName('Valor').AsCurrency;
//     FieldByName('Despesas').AsCurrency := FieldbyName('DespesasTotais').AsCurrency - FieldByName('Taxas').AsCurrency;
     IBQuery8.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery8.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery8.Open;
     FieldByName('Preco_Pecas').AsCurrency := IBQuery8.FieldbyName('Valor').AsCurrency;
     FieldByName('ICMS').AsCurrency := IBQuery8.FieldbyName('ValorICMS').AsCurrency;
     FieldByName('CUSTO').AsCurrency := IBQuery8.FieldbyName('ValorCusto').AsCurrency;
     FieldByName('LUCRO_Pecas').AsCurrency := IBQuery8.FieldbyName('Valor').AsCurrency-
      IBQuery8.FieldbyName('ValorCusto').AsCurrency-IBQuery8.FieldbyName('ValorICMS').AsCurrency;
     IBQuery9.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery9.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery9.Open;
     FieldByName('Preco_Pecas_Oficina').AsCurrency := IBQuery9.FieldbyName('Valor').AsCurrency;
     FieldByName('ICMS_Oficina').AsCurrency := IBQuery9.FieldbyName('ValorICMS').AsCurrency;
     FieldByName('CUSTO_Oficina').AsCurrency := IBQuery9.FieldbyName('ValorCusto').AsCurrency;
     FieldByName('LUCRO_Pecas_Oficina').AsCurrency := IBQuery9.FieldbyName('Valor').AsCurrency-
      IBQuery9.FieldbyName('ValorCusto').AsCurrency-IBQuery9.FieldbyName('ValorICMS').AsCurrency;


     FieldByName('Total_MC').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency -
                                           IBQuery5.FieldbyName('Valor').AsCurrency +
                                           IBQuery4.FieldbyName('Valor').AsCurrency +
                                           FieldByName('Lucro_pecas').AsCurrency +
                                           FieldByName('Lucro_pecas_Oficina').AsCurrency;
                                    //       ((IBQuery3.FieldbyName('Valor').AsCurrency +IBQuery2.FieldbyName('Valor').AsCurrency)*0.2);
     FieldByName('Lucro').AsCurrency := (IBQuery1.FieldbyName('Valor').AsCurrency -
                                         IBQuery5.FieldbyName('Valor').AsCurrency +
                                         IBQuery4.FieldbyName('Valor').AsCurrency +
                                         FieldByName('Lucro_pecas').AsCurrency +
                                         FieldByName('Lucro_pecas_Oficina').AsCurrency) -
                                         IBQuery6.FieldbyName('Valor').AsCurrency;
     FieldByName('Lucro20').AsCurrency := (IBQuery1.FieldbyName('Valor').AsCurrency -
                                         IBQuery5.FieldbyName('Valor').AsCurrency +
                                         IBQuery4.FieldbyName('Valor').AsCurrency +
                                         ((IBQuery3.FieldbyName('Valor').AsCurrency +IBQuery2.FieldbyName('Valor').AsCurrency)*0.2)) -
                                         IBQuery6.FieldbyName('Valor').AsCurrency;
     Post;
     IBQuery1.Close;
     IBQuery2.Close;
     IBQuery3.Close;
     IBQuery4.Close;
     IBQuery5.Close;
     IBQuery6.Close;
     IBQuery7.Close;
     IBQuery8.Close;
     IBQuery9.Close;
     DataInicial.Date := IncMonth(DataInicial.Date);
//     Showmessage(DateToSTR(DataInicial.Date));
    end;
end;

procedure TBoxReceitaSequencia.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //teste
end;

procedure TBoxReceitaSequencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
  Action :=caFree;
  BoxReceitaSequencia := nil;
end;

procedure TBoxReceitaSequencia.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxReceitaSequencia.FormShow(Sender: TObject);
begin
  DataSourceNofisa.Dataset.Open;
  DataSourceConcessionaria.Dataset.Open;
  DataInicial.Date := now;
  DataFinal.Date := now;
end;

end.


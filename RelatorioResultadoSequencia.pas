unit RelatorioResultadoSequencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, frxClass,
  frxDBSet, Mask, rxToolEdit, DBClient, IBQuery, Grids, DBGrids;

type
  TBoxResultadoSequencia = class(TForm)
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
    DBGrid2: TDBGrid;
    tblAuxReceita2: TClientDataSet;
    StringField1: TStringField;
    CurrencyField1: TCurrencyField;
    FloatField1: TFloatField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    CurrencyField17: TCurrencyField;
    dts2: TDataSource;
    IBQuery11: TIBQuery;
    IBQuery15: TIBQuery;
    IBQuery16: TIBQuery;
    IBQuery17: TIBQuery;
    IBQueryUsuarioConcessionaria: TIBQuery;
    IBQuery10: TIBQuery;
    IBQuery12: TIBQuery;
    IBQuery13: TIBQuery;
    IBQuery14: TIBQuery;
    IBQuery18: TIBQuery;
    IBQuery19: TIBQuery;
    BitBtn2: TBitBtn;
    IBQuery20: TIBQuery;
    IBQuery21: TIBQuery;
    tblAuxReceitaBRINDES: TCurrencyField;
    tblAuxReceita2BRINDES: TCurrencyField;
    IBQuery22: TIBQuery;
    tblAuxReceitaQUITACAO: TCurrencyField;
    IBQuery23: TIBQuery;
    tblAuxReceita2QUITACAO: TCurrencyField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxResultadoSequencia: TBoxResultadoSequencia;

implementation

uses FDB, RelatorioReceitaSequencia;

{$R *.dfm}

procedure TBoxResultadoSequencia.BitBtn1Click(Sender: TObject);
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

     IBQuery20.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery20.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery20.Open;
     FieldByName('Brindes').AsCurrency := IBQuery20.FieldbyName('Valor').AsCurrency;

     IBQuery22.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery22.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery22.Open;
     FieldByName('Quitacao').AsCurrency := IBQuery22.FieldbyName('Valor').AsCurrency;

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
                                                 IBQuery5.FieldbyName('Valor').AsCurrency -
                                                 IBQuery20.FieldbyName('Valor').AsCurrency ;
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
                                           IBQuery20.FieldbyName('Valor').AsCurrency -
                                           IBQuery5.FieldbyName('Valor').AsCurrency +
                                           IBQuery4.FieldbyName('Valor').AsCurrency +
                                           FieldByName('Lucro_pecas').AsCurrency +
                                           FieldByName('Lucro_pecas_Oficina').AsCurrency;
                                    //       ((IBQuery3.FieldbyName('Valor').AsCurrency +IBQuery2.FieldbyName('Valor').AsCurrency)*0.2);
     FieldByName('Lucro').AsCurrency := (IBQuery1.FieldbyName('Valor').AsCurrency -
                                         IBQuery20.FieldbyName('Valor').AsCurrency -
                                         IBQuery5.FieldbyName('Valor').AsCurrency +
                                         IBQuery4.FieldbyName('Valor').AsCurrency +
                                         FieldByName('Lucro_pecas').AsCurrency +
                                         FieldByName('Lucro_pecas_Oficina').AsCurrency) -
                                         IBQuery6.FieldbyName('Valor').AsCurrency;
     FieldByName('Lucro20').AsCurrency := (IBQuery1.FieldbyName('Valor').AsCurrency -
                                         IBQuery20.FieldbyName('Valor').AsCurrency -
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
     IBQuery20.Close;
     IBQuery22.Close;
     DataInicial.Date := IncMonth(DataInicial.Date);
    end;
end;

procedure TBoxResultadoSequencia.BitBtn2Click(Sender: TObject);
var
  I: TClientDataSet;
  o : Integer;
begin
//  MesInicial := formatdatetime('mm',strtodatetime(DataInicial.Text));
//  AnoInicial := formatdatetime('yy',strtodatetime(DataInicial.text));
//  MesFinal := formatdatetime('mm',strtodatetime(DataFinal.Text));
//  AnoFinal := formatdatetime('yy',strtodatetime(DataFinal.text));
  tblAuxReceita2.Open;
  With tblAuxReceita2 do
//   while (DataInicial.Date < DataFinal.Date) do
    begin
     for o := 1 to 10 do

     begin
     Insert;
     FieldByName('MesAno').AsString := formatdatetime('mm',strtodatetime(DataInicial.Text)) + '/' +
                                        formatdatetime('yyyy',strtodatetime(DataInicial.text));
     IBQuery11.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery11.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery11.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery11.Open;
     FieldByName('Receita_Veiculos').AsCurrency := IBQuery11.FieldbyName('Valor').AsCurrency;

     IBQuery12.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery12.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery12.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery12.Open;
     FieldByName('Receita_Pecas_Oficina').AsCurrency := IBQuery12.FieldbyName('Valor').AsCurrency;

     IBQuery21.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery21.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery21.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery21.Open;
     FieldByName('Brindes').AsCurrency := IBQuery21.FieldbyName('Valor').AsCurrency;

     IBQuery23.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery23.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery23.Open;
     FieldByName('Quitacao').AsCurrency := IBQuery23.FieldbyName('Valor').AsCurrency;

     IBQuery13.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery13.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery13.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery13.Open;
     FieldByName('Receita_Pecas').AsCurrency := IBQuery13.FieldbyName('Valor').AsCurrency;

     IBQuery14.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery14.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery14.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery14.Open;
     FieldByName('Receita_MO').AsCurrency := IBQuery14.FieldbyName('Valor').AsCurrency;

     IBQuery15.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery15.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery15.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery15.Open;
     FieldByName('Custo_Veiculos').AsCurrency := IBQuery15.FieldbyName('Valor').AsCurrency;

     FieldByName('Lucro_Veiculos').AsCurrency := IBQuery11.FieldbyName('Valor').AsCurrency -
                                                 IBQuery21.FieldbyName('Valor').AsCurrency -
                                                 IBQuery15.FieldbyName('Valor').AsCurrency;
     IBQuery16.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery16.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery16.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery16.Open;
     FieldByName('Despesas').AsCurrency := IBQuery16.FieldbyName('Valor').AsCurrency;
//     FieldByName('DespesasTotais').AsCurrency := IBQuery6.FieldbyName('Valor').AsCurrency;
//     IBQuery7.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
//     IBQuery7.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
//     IBQuery7.Open;
//     FieldByName('Taxas').AsCurrency := IBQuery7.FieldbyName('Valor').AsCurrency;
//     FieldByName('Despesas').AsCurrency := FieldbyName('DespesasTotais').AsCurrency - FieldByName('Taxas').AsCurrency;
     IBQuery18.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery18.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery18.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery18.Open;
     FieldByName('Preco_Pecas').AsCurrency := IBQuery18.FieldbyName('Valor').AsCurrency;
     FieldByName('ICMS').AsCurrency := IBQuery18.FieldbyName('ValorICMS').AsCurrency;
     FieldByName('CUSTO').AsCurrency := IBQuery18.FieldbyName('ValorCusto').AsCurrency;
     FieldByName('LUCRO_Pecas').AsCurrency := IBQuery18.FieldbyName('Valor').AsCurrency-
      IBQuery18.FieldbyName('ValorCusto').AsCurrency-IBQuery18.FieldbyName('ValorICMS').AsCurrency;
     IBQuery19.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery19.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery19.ParamByName('IdConcessionaria').AsInteger := o;
     IBQuery19.Open;
     FieldByName('Preco_Pecas_Oficina').AsCurrency := IBQuery19.FieldbyName('Valor').AsCurrency;
     FieldByName('ICMS_Oficina').AsCurrency := IBQuery19.FieldbyName('ValorICMS').AsCurrency;
     FieldByName('CUSTO_Oficina').AsCurrency := IBQuery19.FieldbyName('ValorCusto').AsCurrency;
     FieldByName('LUCRO_Pecas_Oficina').AsCurrency := IBQuery19.FieldbyName('Valor').AsCurrency-
      IBQuery19.FieldbyName('ValorCusto').AsCurrency-IBQuery19.FieldbyName('ValorICMS').AsCurrency;


     FieldByName('Total_MC').AsCurrency := IBQuery11.FieldbyName('Valor').AsCurrency -
                                           IBQuery21.FieldbyName('Valor').AsCurrency -
                                           IBQuery15.FieldbyName('Valor').AsCurrency +
                                           IBQuery14.FieldbyName('Valor').AsCurrency +
                                           FieldByName('Lucro_pecas').AsCurrency +
                                           FieldByName('Lucro_pecas_Oficina').AsCurrency;
                                    //       ((IBQuery3.FieldbyName('Valor').AsCurrency +IBQuery2.FieldbyName('Valor').AsCurrency)*0.2);
     FieldByName('Lucro').AsCurrency := (IBQuery11.FieldbyName('Valor').AsCurrency -
                                         IBQuery21.FieldbyName('Valor').AsCurrency -
                                         IBQuery15.FieldbyName('Valor').AsCurrency +
                                         IBQuery14.FieldbyName('Valor').AsCurrency +
                                         FieldByName('Lucro_pecas').AsCurrency +
                                         FieldByName('Lucro_pecas_Oficina').AsCurrency) -
                                         IBQuery16.FieldbyName('Valor').AsCurrency;
    FieldByName('Lucro20').AsInteger := o;
  {   FieldByName('Lucro20').AsCurrency := (IBQuery11.FieldbyName('Valor').AsCurrency -
                                         IBQuery21.FieldbyName('Valor').AsCurrency -
                                         IBQuery15.FieldbyName('Valor').AsCurrency +
                                         IBQuery14.FieldbyName('Valor').AsCurrency +
                                         ((IBQuery13.FieldbyName('Valor').AsCurrency +IBQuery12.FieldbyName('Valor').AsCurrency)*0.2)) -
                                         IBQuery16.FieldbyName('Valor').AsCurrency;
                                                                                         }
     Post;
     if (FieldByName('Receita_veiculos').AsInteger = 0) and
        (FieldByName('Receita_pecas').AsInteger = 0) and
        (FieldByName('Receita_MO').AsInteger = 0)  then
       delete;
     IBQuery11.Close;
     IBQuery12.Close;
     IBQuery13.Close;
     IBQuery14.Close;
     IBQuery15.Close;
     IBQuery16.Close;
     IBQuery17.Close;
     IBQuery18.Close;
     IBQuery19.Close;
     IBQuery21.Close;
     IBQuery23.Close;
     next;
     end;
     DataInicial.Date := IncMonth(DataInicial.Date);

     //     Showmessage(DateToSTR(DataInicial.Date));
    end;
end;

procedure TBoxResultadoSequencia.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //teste
end;

procedure TBoxResultadoSequencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
  Action :=caFree;
  BoxReceitaSequencia := nil;
end;

procedure TBoxResultadoSequencia.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxResultadoSequencia.FormShow(Sender: TObject);
begin
  DataSourceNofisa.Dataset.Open;
  DataSourceConcessionaria.Dataset.Open;
  DataInicial.Date := now;
  DataFinal.Date := now;
end;

end.


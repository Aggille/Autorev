unit RelatorioPatrimonial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, IBQuery, IBCustomDataSet, Grids, DBGrids, ComCtrls,
  StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls;

type
  TBoxRelatorioPatrimonial = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DadosFiltro: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    BtnImprimir: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSourcePedidoVeiculos: TDataSource;
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
    DataSourceNofisa: TDataSource;
    tblAuxReceita: TClientDataSet;
    tblAuxReceitaMESANO: TStringField;
    tblAuxReceitaRECEITA_VEICULO: TCurrencyField;
    tblAuxReceitaALIQ_ICMS: TFloatField;
    tblAuxReceitaTOTAL: TCurrencyField;
    tblAuxReceitaBASE_ICMS: TCurrencyField;
    tblAuxReceitaICMS: TCurrencyField;
    tblAuxReceitaPendencias_Pedidos: TCurrencyField;
    tblAuxReceitaLUCRO: TCurrencyField;
    DataSource1: TDataSource;
    IBQuery8: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery9: TIBQuery;
    tblAuxReceitaCx_Bancos: TCurrencyField;
    tblAuxReceitaPL2: TCurrencyField;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatorioPatrimonial: TBoxRelatorioPatrimonial;

implementation

{$R *.dfm}

procedure TBoxRelatorioPatrimonial.BitBtn1Click(Sender: TObject);
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
     FieldByName('Total_MC').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency -
                                           IBQuery5.FieldbyName('Valor').AsCurrency +
                                           IBQuery4.FieldbyName('Valor').AsCurrency +
                                           ((IBQuery3.FieldbyName('Valor').AsCurrency +IBQuery2.FieldbyName('Valor').AsCurrency)*0.2);
     FieldByName('Lucro').AsCurrency := (IBQuery1.FieldbyName('Valor').AsCurrency -
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
     DataInicial.Date := IncMonth(DataInicial.Date);
//     Showmessage(DateToSTR(DataInicial.Date));
    end;

end;

end.


unit RelatorioCapitalGiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, frxClass,
  frxDBSet, Mask, rxToolEdit, DBClient, IBQuery, Grids, DBGrids, DBCtrls;

type
  TBoxCapitalGiro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DadosFiltro: TLabel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    IBQuery6: TIBQuery;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery9: TIBQuery;
    IBQuery10: TIBQuery;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    IBQuery11: TIBQuery;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    IBQuery12: TIBQuery;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    tblAuxReceita: TClientDataSet;
    dts1: TDataSource;
    DBEdit14: TDBEdit;
    IBQuery13: TIBQuery;
    IBQuery14: TIBQuery;
    DBEdit19: TDBEdit;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    tblAuxReceitaVEICULOS: TCurrencyField;
    tblAuxReceitaVEICULOSEMVENDA: TCurrencyField;
    tblAuxReceitaPECAS: TCurrencyField;
    tblAuxReceitaCONTASARECEBER: TCurrencyField;
    tblAuxReceitaCONTASARECEBERVENCIDAS: TCurrencyField;
    tblAuxReceitaCONTASAPAGAR: TCurrencyField;
    tblAuxReceitaCAIXA: TCurrencyField;
    tblAuxReceitaBANCOS: TCurrencyField;
    tblAuxReceitaTOTAL: TCurrencyField;
    tblAuxReceitaLIQUIDEZ: TCurrencyField;
    tblAuxReceitaPENDENCIAS: TCurrencyField;
    tblAuxReceitaPENDENCIASMOTOS: TCurrencyField;
    tblAuxReceitaPENDENCIASOUTROS: TCurrencyField;
    tblAuxReceitaPENDENCIASMOTOSNUMERO: TIntegerField;
    tblAuxReceitaVEICULOSUSADOS: TCurrencyField;
    tblAuxReceitaQTDEUSADOS: TIntegerField;
    tblAuxReceitaVEICULOSNOVOS: TCurrencyField;
    tblAuxReceitaQTDENOVOS: TIntegerField;
    tblAuxReceitaQTDETOTALUSADAS: TIntegerField;
    IBQuery15: TIBQuery;
    Label18: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    tblAuxReceitaVALORTOTALUSADAS2: TCurrencyField;
    tblAuxReceitaQTDEUSADASEMPEDIDOS: TIntegerField;
    tblAuxReceitaVALORUSADASEMPEDIDOS: TCurrencyField;
    IBQuery16: TIBQuery;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    tblAuxReceitaCONTASRECEBER30: TCurrencyField;
    tblAuxReceitaCONTASRECEBERMAIS30: TCurrencyField;
    DBEdit25: TDBEdit;
    tblAuxReceitaQTDEEMVENDA: TIntegerField;
    tblAuxReceitaVEICULOSIMOBILIZADO: TCurrencyField;
    tblAuxReceitaQTDEIMOBILIZADO: TIntegerField;
    IBQuery17: TIBQuery;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label21: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxCapitalGiro: TBoxCapitalGiro;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxCapitalGiro.BitBtn1Click(Sender: TObject);
//var
// MesInicial, AnoInicial, MesFinal, AnoFinal : String;
begin
//  MesInicial := formatdatetime('mm',strtodatetime(DataInicial.Text));
//  AnoInicial := formatdatetime('yy',strtodatetime(DataInicial.text));
//  MesFinal := formatdatetime('mm',strtodatetime(DataFinal.Text));
//  AnoFinal := formatdatetime('yy',strtodatetime(DataFinal.text));
  tblAuxReceita.Open;
  With tblAuxReceita do
//   while (DataInicial.Date < DataFinal.Date) do
    begin
     Insert;
     IBQuery1.ParamByName('Id').AsDateTime := DataInicial.Date;
     IBQuery1.Open;
     FieldByName('ContasaReceber').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency;

     IBQuery2.ParamByName('Id').AsDateTime := DataInicial.Date;
     IBQuery2.Open;
     FieldByName('ContasaReceberVencidas').AsCurrency := IBQuery2.FieldbyName('Valor').AsCurrency;

     IBQuery16.ParamByName('Id').AsDateTime := DataInicial.Date;
     IBQuery16.Open;
     FieldByName('ContasReceber30').AsCurrency := IBQuery16.FieldbyName('Valor').AsCurrency;
     FieldByName('ContasRecebermais30').AsCurrency := IBQuery2.FieldbyName('Valor').AsCurrency-IBQuery16.FieldbyName('Valor').AsCurrency;

     IBQuery3.Open;
     FieldByName('ContasaPagar').AsCurrency := IBQuery3.FieldbyName('Valor').AsCurrency;

     IBQuery4.Open;
     IBQuery5.Open;
     FieldByName('Caixa').AsCurrency := IBQuery4.FieldbyName('Valor').AsCurrency -
        IBQuery5.FieldbyName('Valor').AsCurrency;

     IBQuery6.Open;
     FieldByName('Pecas').AsCurrency := IBQuery6.FieldbyName('Valor').AsCurrency;

     IBQuery7.Open;
     FieldByName('Veiculos').AsCurrency := IBQuery7.FieldbyName('Valor').AsCurrency;

     IBQuery13.Open;
     FieldByName('VeiculosNovos').AsCurrency := IBQuery13.FieldbyName('Valor').AsCurrency;
     FieldByName('QtdeNovos').AsCurrency := IBQuery13.FieldbyName('qtde').AsCurrency;

     IBQuery14.Open;
     FieldByName('VeiculosUsados').AsCurrency := IBQuery14.FieldbyName('Valor').AsCurrency;
     FieldByName('qtdeUsados').AsCurrency := IBQuery14.FieldbyName('qtde').AsCurrency;

     IBQuery17.Open;
     FieldByName('VeiculosImobilizado').AsCurrency := IBQuery17.FieldbyName('Valor').AsCurrency;
     FieldByName('qtdeimobilizado').AsCurrency := IBQuery17.FieldbyName('qtde').AsCurrency;

     IBQuery8.Open;
     FieldByName('VeiculosEmVenda').AsCurrency := IBQuery8.FieldbyName('Valor').AsCurrency;
     FieldByName('QtdeEmVenda').AsCurrency := IBQuery8.FieldByName('Numero').AsCurrency;

     IBQuery9.Open;
     IBQuery10.Open;
     FieldByName('Bancos').AsCurrency := IBQuery9.FieldbyName('Valor').AsCurrency -
                  IBQuery10.FieldbyName('Valor').AsCurrency;

     IBQuery11.Open;
     FieldByName('Pendencias').AsCurrency := IBQuery11.FieldbyName('Valor').AsCurrency;

     IBQuery12.Open;
     FieldByName('PendenciasMotos').AsCurrency := IBQuery12.FieldbyName('Valor').AsCurrency;
     FieldByName('PendenciasMotosNumero').AsCurrency := IBQuery12.FieldbyName('Numero').AsCurrency;

     FieldByName('PendenciasOutros').AsCurrency := IBQuery11.FieldbyName('Valor').AsCurrency-IBQuery12.FieldbyName('Valor').AsCurrency;

     FieldByName('QtdeTotalUsadas').AsCurrency := FieldByName('qtdeUsados').AsCurrency +
                                                  FieldByName('PendenciasMotosNumero').AsCurrency;
     FieldByName('ValorTotalUsadas').AsCurrency := FieldByName('VeiculosUsados').AsCurrency +
                                                   FieldByName('PendenciasMotos').AsCurrency;

     IBQuery15.Open;
     FieldByName('QtdeUsadasEmPedidos').AsCurrency := IBQuery15.FieldbyName('Numero').AsCurrency;

     FieldByName('ValorUsadasEmPedidos').AsCurrency := IBQuery15.FieldbyName('Valor').AsCurrency;

     FieldByName('Liquidez').AsCurrency :=
                                        IBQuery11.FieldbyName('Valor').AsCurrency + //Pendencias
                                        IBQuery7.FieldbyName('Valor').AsCurrency + //veiculos
                                        IBQuery8.FieldbyName('Valor').AsCurrency - //veiculos em venda
                                        IBQuery3.FieldbyName('Valor').AsCurrency + //contas a pagar
                                        (IBQuery4.FieldbyName('Valor').AsCurrency - //entradas caixa
                                        IBQuery5.FieldbyName('Valor').AsCurrency) + //saida caixa = saldo caixa
                                       (IBQuery9.FieldbyName('Valor').AsCurrency - //entrada bancos
                                        IBQuery10.FieldbyName('Valor').AsCurrency);//saida bancos = saldo banco

     FieldByName('Total').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency + //contas a receber
                                        IBQuery11.FieldbyName('Valor').AsCurrency + //Pendencias
                                        IBQuery2.FieldbyName('Valor').AsCurrency - //contas a receber vencida
                                        IBQuery3.FieldbyName('Valor').AsCurrency + //contas a pagar
                                        (IBQuery4.FieldbyName('Valor').AsCurrency - //entradas caixa
                                        IBQuery5.FieldbyName('Valor').AsCurrency) + //saida caixa = saldo caixa
                                        IBQuery6.FieldbyName('Valor').AsCurrency + //pecas
                                        IBQuery7.FieldbyName('Valor').AsCurrency + //veiculos
                                        IBQuery8.FieldbyName('Valor').AsCurrency + //veiculos em venda
                                       (IBQuery9.FieldbyName('Valor').AsCurrency - //entrada bancos
                                        IBQuery10.FieldbyName('Valor').AsCurrency);//saida bancos = saldo banco
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
     IBQuery10.Close;
     IBQuery11.Close;
     IBQuery12.Close;
     IBQuery13.Close;
     IBQuery14.Close;
     IBquery15.Close;
     DataInicial.Date := IncMonth(DataInicial.Date);
//     Showmessage(DateToSTR(DataInicial.Date));
    end;
end;

procedure TBoxCapitalGiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxCapitalGiro := nil;
end;

procedure TBoxCapitalGiro.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxCapitalGiro.FormShow(Sender: TObject);
begin
  DataInicial.Date := now;
end;

end.


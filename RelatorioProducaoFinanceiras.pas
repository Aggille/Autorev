unit RelatorioProducaoFinanceiras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Mask, rxToolEdit, Grids,
  Wwdbigrd, Wwdbgrid, DB, IBCustomDataSet, IBQuery, DBCtrls, rxCurrEdit,
  JvExMask, JvToolEdit;

type
  TBoxProducaoFinanceiras = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    tblPedidoVeiculos: TIBDataSet;
    DataSourcePedidoVeiculos: TDataSource;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    BtnAtualiza2: TBitBtn;
    DBGrid2: TwwDBGrid;
    DadosFiltro: TLabel;
    Label1: TLabel;
    TotalVendas: TEdit;
    Label4: TLabel;
    VendasAVista: TEdit;
    tblAVista: TIBDataSet;
    DataSourceAVista: TDataSource;
    SomaVendasAVista: TCurrencyEdit;
    tblTotalVendas: TIBQuery;
    TotalValorVendas: TCurrencyEdit;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    tblPedidoVeiculosTOTAL: TIntegerField;
    tblPedidoVeiculosSOMA: TIBBCDField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosNOME: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAtualiza2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxProducaoFinanceiras: TBoxProducaoFinanceiras;

implementation

uses FDB, Empresas;

{$R *.dfm}

procedure TBoxProducaoFinanceiras.BtnAtualiza2Click(Sender: TObject);
begin
  with tblPedidoVeiculos do
   begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
   end;
  with tblAVista do
   begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
   end;
  SomaVendasAVista.Text := tblAVista.FieldByName('Soma').AsString;
  VendasAVista.Text     := tblAVista.FieldByName('Total').AsString;
  with tblTotalVendas do
   begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
   end;
  TotalValorVendas.Text := tblTotalVendas.FieldByName('Soma').AsString;
  TotalVendas.Text     := tblTotalVendas.FieldByName('Total').AsString;

end;

procedure TBoxProducaoFinanceiras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblTotalVendas.Close;
  tblPedidoVeiculos.Close;
  tblAVista.Close;
end;

procedure TBoxProducaoFinanceiras.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxProducaoFinanceiras.FormShow(Sender: TObject);
begin
  DataFinal.Date := DataAtual;
  DataInicial.Date := DataAtual;
  DataInicial.SetFocus;
end;

end.


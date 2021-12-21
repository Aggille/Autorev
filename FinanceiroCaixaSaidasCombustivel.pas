unit FinanceiroCaixaSaidasCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin;

type
  TBoxFinanceiroCaixaSaidasCombustivel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LabelDuplicata: TLabel;
    LabelCartao: TLabel;
    LabelChequePos: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    LabelForma: TLabel;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
    ChequePos: TCurrencyEdit;
    Cartao: TCurrencyEdit;
    Duplicata: TCurrencyEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Cliente: TDBEdit;
    Conta: TDBEdit;
    NomeConta: TDBEdit;
    Historico: TDBEdit;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    StatusBar1: TStatusBar;
    RadioGroup2: TRadioGroup;
    tblCxProv: TIBDataSet;
    tblCxProvID_CXPROV: TIntegerField;
    tblCxProvID_CLIENTES: TIntegerField;
    tblCxProvDOCUMENTO: TIBStringField;
    tblCxProvORIGEM: TIBStringField;
    tblCxProvDATA: TDateField;
    tblCxProvVALOR: TIBBCDField;
    tblCxProvHISTORICO: TIBStringField;
    DataSourceCxProv: TDataSource;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    tblCaixa: TIBDataSet;
    tblCaixaID_CAIXA: TIntegerField;
    tblCaixaID_CONCESSIONARIA: TIntegerField;
    tblCaixaDOCUMENTO: TIBStringField;
    tblCaixaNATUREZA: TIBStringField;
    tblCaixaDATA: TDateField;
    tblCaixaVALOR: TIBBCDField;
    tblCaixaFORMA_PAG: TIBStringField;
    tblCaixaCONTA: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaID_CLIENTES: TIntegerField;
    DataSourceCaixa: TDataSource;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnConfirma: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaSaidasCombustivel: TBoxFinanceiroCaixaSaidasCombustivel;

implementation

{$R *.dfm}

procedure TBoxFinanceiroCaixaSaidasCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaSaidasCombustivel := nil;
end;

procedure TBoxFinanceiroCaixaSaidasCombustivel.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaSaidasCombustivel.FormShow(Sender: TObject);
begin
  BtnNovo.SetFocus;
end;

end.

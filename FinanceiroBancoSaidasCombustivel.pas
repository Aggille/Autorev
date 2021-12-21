unit FinanceiroBancoSaidasCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, Grids, DBGrids, Mask, DBCtrls,
  Buttons, rxCurrEdit, rxToolEdit;

type
  TBoxFinanceiroBancoSaidasCombustivel = class(TForm)
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
    Entradas: TTabSheet;
    TabSheet2: TTabSheet;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    Documento: TDBEdit;
    Conta: TDBEdit;
    DBEdit3: TDBEdit;
    Banco: TDBEdit;
    DBEdit5: TDBEdit;
    Historico: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BtnSalvar: TBitBtn;
    BtnEntradas: TBitBtn;
    BtnSaidas: TBitBtn;
    RadioGroup2: TRadioGroup;
    BtnCancelar: TBitBtn;
    Natureza: TDBEdit;
    Data: TDateEdit;
    Valor: TCurrencyEdit;
    DateEdit1: TDateEdit;
    procedure DoAfterClose;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure HistoricoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnSaidasClick(Sender: TObject);
    procedure BtnEntradasClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroBancoSaidasCombustivel: TBoxFinanceiroBancoSaidasCombustivel;
  i : integer;

implementation

uses FDB, PesquisaGeral;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidasCombustivel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoSaidasCombustivel := nil;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.FormShow(Sender: TObject);
begin
   BtnEntradas.Setfocus;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.HistoricoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    BtnSalvar.Enabled := True;
    BtnSalvar.SetFocus;
  end
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.BtnCancelarClick(Sender: TObject);
begin
    DataSource1.DataSet.Cancel;
    BtnEntradas.Enabled := True;
    BtnSaidas.Enabled := True;
    BtnSalvar.Enabled := False;
    BtnCancelar.Enabled := False;
    RadioGroup1.Visible := False;
    RadioGroup2.Visible := False;
    Data.Enabled := False;
    Valor.Enabled := False;
    Conta.Enabled := False;
    Banco.Enabled := False;
    Historico.Enabled := False;
    Documento.Enabled := False;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.BtnEntradasClick(Sender: TObject);
begin
    DataSource1.DataSet.Open;
    DataSource1.DataSet.Insert;
    RadioGroup1.Visible := True;
    RadioGroup2.Visible := False;
    BtnSaidas.Enabled := False;
    BtnCancelar.Enabled := True;
    Natureza.EditText := 'E';
    RadioGroup1.Setfocus;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.BtnSaidasClick(Sender: TObject);
begin
    DataSource1.DataSet.Open;
    DataSource1.DataSet.Insert;
    RadioGroup1.Visible := False;
    RadioGroup2.Visible := True;
    BtnEntradas.Enabled := False;
    BtnCancelar.Enabled := True;
    Natureza.EditText := 'S';
    RadioGroup2.Setfocus;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.BtnSalvarClick(Sender: TObject);
begin
    case MessageDlg('Salvar dados?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
       DataSource1.Dataset.Post;
       BtnEntradas.Enabled := True;
       BtnSaidas.Enabled := True;
       BtnSalvar.Enabled := False;
       BtnCancelar.Enabled := False;
       RadioGroup1.Visible := False;
       RadioGroup2.Visible := False;
       Data.Enabled := False;
       Valor.Enabled := False;
       Conta.Enabled := False;
       Banco.Enabled := False;
       Historico.Enabled := False;
       Documento.Enabled := False;
      end;
     mrNo: DataSource1.DataSet.Cancel;
    end;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.DoAfterClose;
begin
    DataSource1.Dataset.Close;
end;

procedure TBoxFinanceiroBancoSaidasCombustivel.RadioGroup1Click(Sender: TObject);
begin
    Data.Enabled := True;
    Valor.Enabled := True;
    Conta.Enabled := True;
    Banco.Enabled := True;
    Historico.Enabled := True;
    Documento.Enabled := True;
    Documento.SetFocus;
end;

end.

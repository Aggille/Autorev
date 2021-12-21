unit FinanceiroCaixaVelho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, rxCurrEdit,
  rxToolEdit, RxCalc, IBCustomDataSet, JvExMask, JvToolEdit, JvDBControls,
  ToolWin;

type
  TBoxCaixa = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    LabelDuplicata: TLabel;
    LabelCartao: TLabel;
    LabelChequePos: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    LabelForma: TLabel;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Cliente: TDBEdit;
    Conta: TDBEdit;
    NomeConta: TDBEdit;
    Historico: TDBEdit;
    RadioGroup2: TRadioGroup;
    DataSourceCaixa: TDataSource;
    Label1: TLabel;
    Documento: TDBEdit;
    StatusBar1: TStatusBar;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
    ChequePos: TCurrencyEdit;
    Cartao: TCurrencyEdit;
    Duplicata: TCurrencyEdit;
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
    Data: TJvDBDateEdit;
    tblCaixaID_CLIENTES: TIntegerField;
    SpeedButton1: TSpeedButton;
    DataSourcePlacon: TDataSource;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    ToolBar1: TToolBar;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnSaidas: TBitBtn;
    BtnEntradas: TBitBtn;
    DataSourceCxProv: TDataSource;
    tblCxProv: TIBDataSet;
    tblCxProvID_CXPROV: TIntegerField;
    tblCxProvID_CLIENTES: TIntegerField;
    tblCxProvDOCUMENTO: TIBStringField;
    tblCxProvORIGEM: TIBStringField;
    tblCxProvDATA: TDateField;
    tblCxProvVALOR: TIBBCDField;
    tblCxProvHISTORICO: TIBStringField;
    SpeedButton2: TSpeedButton;
    procedure DoAfterClose;
    procedure EnablePainel1;
    procedure FormShow(Sender: TObject);
    procedure BtnEntradasClick(Sender: TObject);
    procedure BtnSaidasClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure EnableDisableButtons(Value1: Boolean; Value2: Boolean; Value3: Boolean; Value4: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tblCaixaAfterCancel(DataSet: TDataSet);
    procedure tblCaixaAfterPost(DataSet: TDataSet);
    procedure DocumentoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDs; virtual;
  end;

var
  Retorno: String;
  BoxCaixa: TBoxCaixa;

implementation

uses FDB, Biblioteca;

{$R *.dfm}

procedure TBoxCaixa.BtnEntradasClick(Sender: TObject);
begin
   TblCaixa.Insert;
   EnableDisableButtons(False,True,True,1);
end;

procedure TBoxCaixa.BtnSaidasClick(Sender: TObject);
begin
   TblCaixa.Insert;
   EnableDisableButtons(False,True,False,2);
end;

procedure TBoxCaixa.BtnSalvarClick(Sender: TObject);
begin
   EnableDisableButtons(True,False,False,3);
end;

procedure TBoxCaixa.BtnCancelarClick(Sender: TObject);
begin
   EnableDisableButtons(True,False,False,4);
end;

procedure TBoxCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TBoxCaixa.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxCaixa.DoAfterClose;
begin
    DataSourceCaixa.Dataset.Close;
end;

procedure TBoxCaixa.DocumentoExit(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then  {Balcao}
    showmessage('balcao');

end;

procedure TBoxCaixa.FormShow(Sender: TObject);
begin
   EnableDisableButtons(True,False,False,4);
   AbrirDs;
end;

procedure TBoxCaixa.RadioGroup1Click(Sender: TObject);
begin
   EnablePainel1;
   Dinheiro.Enabled := True;
   Cheque.Enabled := True;
   ChequePos.Enabled := True;
   Cartao.Enabled := True;
   Duplicata.Enabled := True;
   if RadioGroup1.ItemIndex = 1 then  {Balcao}
     begin
      SpeedButton2.Click;
     end;
   Documento.SetFocus;
end;

procedure TBoxCaixa.RadioGroup2Click(Sender: TObject);
begin
   EnablePainel1;
   Dinheiro.Enabled := True;
   Cheque.Enabled := True;
   ChequePos.Enabled := False;
   Cartao.Enabled := False;
   Duplicata.Enabled := False;
   Documento.SetFocus;
end;

procedure TBoxCaixa.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Plano de contas','Placon',
      ['Id_Placon','Conta','Descricao','Id_Concessionaria'],
      ['Sequência:','Conta:','Descrição:','Concessionária:',''],
      'Conta','Id_Placon',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        Conta.Text := tblPlacon.FieldByName('Id_Placon').Text;
        NomeConta.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     Conta.SetFocus;
end;

procedure TBoxCaixa.SpeedButton2Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex = 1 then
   begin
     Retorno := Biblioteca.PesquisaGeral('Caixa à receber','Cxprov',
      ['Id_CxProv','Documento','Valor','Id_Concessionaria'],
      ['Sequência:','Documento:','Valor:','Concessionária:',''],
      'Conta','Id_CxProv',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        Conta.Text := tblCxprov.FieldByName('Documento').Text;
     end;
     Conta.SetFocus;
   end;
 if RadioGroup1.ItemIndex = 3 then
   begin
     Retorno := Biblioteca.PesquisaGeral('Contas à receber','CReceber',
      ['Id_Creceber','Documento','Valor','id_Cliente','Id_Concessionaria'],
      ['Sequência:','Documento:','Valor:','Cliente:','Concessionária:',''],
      'Documento','Id_Creceber',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        Conta.Text := tblPlacon.FieldByName('Documento').Text;
        Cliente.Text := tblCreceber.FieldByName('Descricao').Text;
     end;
     Conta.SetFocus;
   end;
end;

procedure TBoxCaixa.tblCaixaAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCaixa.tblCaixaAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxCaixa.EnablePainel1;
begin
    Documento.Enabled := True;
    Data.Enabled := True;
    Cliente.Enabled := True;
    Conta.Enabled := True;    
    Historico.Enabled := True;
end;

procedure TBoxCaixa.EnableDisableButtons(Value1: Boolean; Value2: Boolean;
          Value3: Boolean; Value4: Integer);
begin
   { Value1 --> habilita e desabilita botões entradas e saidas
     Value2 --> habilita e desabilita botões Salvar e Cancelar
     Value3 --> habilita e desabilita campos de entrada e saida  }
  { Habilita/desabilita os botões }
   BtnEntradas.Enabled := Value1;
   BtnSaidas.Enabled := Value1;
   BtnSalvar.Enabled := Value2;
   BtnCancelar.Enabled := Value2;
   LabelChequePos.Visible := Value3;
   LabelCartao.Visible := Value3;
   LabelDuplicata.Visible :=Value3;
   Duplicata.Visible := Value3;
   Cartao.Visible := Value3;
   ChequePos.Visible := Value3;
   if Value4 = 1 then
     begin
      LabelForma.Caption := 'Forma de recebimento:';
      LabelData.Caption := 'Data de recebimento:';
      RadioGroup1.Visible := True;
      RadioGroup2.Visible := False;
     end;
   if Value4 = 2 then
    begin
      LabelForma.Caption := 'Forma de pagamento:';
      LabelData.Caption := 'Data de pagamento:';
      RadioGroup1.Visible := False;
      RadioGroup2.Visible := True;
    end;
   if (Value4 = 3) or (Value4 = 4) then
     begin
      LabelForma.Caption := 'Forma';
      LabelData.Caption := 'Data';
      RadioGroup1.Visible := False;
      RadioGroup2.Visible := False;
     end;
end;

procedure TBoxCaixa.AbrirDs;
begin
  DataSourceCaixa.Dataset.Open;
end;

end.

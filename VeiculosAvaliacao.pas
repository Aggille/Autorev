unit VeiculosAvaliacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ComCtrls, ExtCtrls, ImgList, ActnList, StdCtrls,
  Buttons, ToolWin, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, Mask,
  wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, RxLookup, IBQuery, System.ImageList, System.Actions;

type
  TBoxAvaliacao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblVeiculosAvaliacao: TIBDataSet;
    DataSource1: TDataSource;
    tblVeiculosAvaliacaoID_VEICULOS_AVALIACAO: TIntegerField;
    tblVeiculosAvaliacaoID_MODVEIC: TIntegerField;
    tblVeiculosAvaliacaoANO_MODELO: TIBStringField;
    tblVeiculosAvaliacaoANO_FABRICACAO: TIBStringField;
    tblVeiculosAvaliacaoCOR: TIBStringField;
    tblVeiculosAvaliacaoFIPE: TIBBCDField;
    tblVeiculosAvaliacaoREPAROS: TIBBCDField;
    tblVeiculosAvaliacaoVALOR_AVALIACAO: TIBBCDField;
    tblVeiculosAvaliacaoDATA: TDateField;
    tblVeiculosAvaliacaoAVALIADOR: TIBStringField;
    tblVeiculosAvaliacaoID_PEDIDO_VEICULOS: TIntegerField;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    ActionList1: TActionList;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    Panel2: TPanel;
    tblVeiculosAvaliacaoMODELO: TIBStringField;
    Label35: TLabel;
    Label37: TLabel;
    Cor: TDBEdit;
    Label42: TLabel;
    AnoFabricacao: TJvDBMaskEdit;
    Label41: TLabel;
    AnoModelo: TJvDBMaskEdit;
    MarcaUsados: TDBEdit;
    Label34: TLabel;
    Label44: TLabel;
    Custo: TDBEdit;
    Label45: TLabel;
    PrecoVenda: TDBEdit;
    Combustivel: TDBEdit;
    Label38: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Sequencia: TJvDBMaskEdit;
    Modelo: TDBEdit;
    tblVeiculosAvaliacaoPLACA: TIBStringField;
    Label2: TLabel;
    PLACA: TJvDBMaskEdit;
    qryAvaliacao: TIBQuery;
    IBDataSet1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    DateField1: TDateField;
    IBStringField4: TIBStringField;
    IntegerField3: TIntegerField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure tblVeiculosAvaliacaoAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure SequenciaExit(Sender: TObject);
    procedure PLACAExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   idAvaliacao : String;
  end;

var
  BoxAvaliacao: TBoxAvaliacao;
  Retorno : String;

implementation

uses FDB, Menu, Biblioteca;

{$R *.dfm}

procedure TBoxAvaliacao.BtnConsultarClick(Sender: TObject);
begin
  Sequencia.SetFOCUS;
end;

procedure TBoxAvaliacao.BtnEditarClick(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
 if not DataSource1.DataSet.IsEmpty then
  if not(tblVeiculosAvaliacao.FieldByName('Avaliador').AsString = BoxMenu.DataSource1.DataSet.FieldByName('Login').AsString) then
   SHOWMESSAGE('Você não pode editar esta avaliação.')
  else
   if not (tblVeiculosAvaliacao.FieldByName('Id_pedido_veiculos').IsNull) then
     Showmessage('Esta avaliação já foi utilizada. Faça nova avaliação')
   else
   begin
 //   DataSource1.Dataset.Open;
  //  showmessage(inttostr(Datasource1.DataSet.RecNo));
    DataSource1.Dataset.Edit;
//    EnableDisableControls(True, False, True);
 //   PermissoesForm;
 //   Restricoes;
  //  JVDBMaskEditCodigo.SetFocus;
   end;

end;

procedure TBoxAvaliacao.BtnNovoClick(Sender: TObject);
begin
  {: novo registro}
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
//  EnableDisableControls(True, False, True);
  tblVeiculosAvaliacao.FieldByName('Avaliador').AsString := BoxMenu.DataSource1.DataSet.FieldByName('Login').AsString;
//  BtnExcluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
//  Excluir.Enabled := false;
//  EditSequencia.Enabled := False;
//  EditSequencia.Text := '';
  //JVDBMaskEditCodigo.SetFocus;
 // PermissoesForm;
//  Restricoes;
  Placa.SetFocus;
end;

procedure TBoxAvaliacao.BtnSalvarClick(Sender: TObject);
begin
  {: salvo os dados se os campos estiverem preenchidos}
//  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    tblVeiculosAvaliacao.FieldByName('Data').AsDateTime := DATE;
    tblveiculosAvaliacao.FieldByName('id_Pedido_veiculos').AsInteger := 0;
    DataSource1.DataSet.Post;
//    EnableDisableControls(False, True, False);
//    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    MessageDlg('Dados Gravados. Avaliação válida por 15 dias.', mtInformation, [mbOK], 0);
//    Limpatela;
    BtnConsultar.Setfocus;
  end;

end;

procedure TBoxAvaliacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxAvaliacao := nil;
end;

procedure TBoxAvaliacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
//    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end

end;

procedure TBoxAvaliacao.PLACAExit(Sender: TObject);
begin
  with qryAvaliacao do
   begin
     Close;
     ParamByName('idPlaca').AsString := tblVeiculosAvaliacao.FieldByName('Placa').ASString;
     Open;
     if RecordCount > 0 then
      begin
       showmessage('Veículo já tem avaliação válida.');
       Placa.SetFocus;
      end;
   end;
end;

procedure TBoxAvaliacao.SequenciaExit(Sender: TObject);
begin
idAvaliacao := (Sequencia.Text);
if Sequencia.Text = '' then
  begin
   SpeedButton1.Click;
   Sequencia.SetFocus;
  end
else
  begin
    with tblVeiculosAvaliacao do
      begin
       if idAvaliacao<>'' then
         begin
          Close;
          parambyname( 'idVeiculosAvaliacao' ).AsString := idAvaliacao;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Documento inexistente.');
             Sequencia.SetFocus;
            end
          else
           begin
            Sequencia.Text := FieldByName('id_veiculos_avaliacao').AsString;
//            CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
           end;
         end;
      end;
  end;
end;

procedure TBoxAvaliacao.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Avaliação de veículos','Veiculos_Avaliacao',
      ['Placa','Modelo','Valor_Avaliacao',''],
      ['Placa:','Modelo:','Valor avaliação:','',''],
      'Placa','Id_veiculos_avaliacao',Fdb1.SQLConnection1,'','','');
     with tblVeiculosAvaliacao do
     begin
        Close;
        Parambyname('idVeiculosAvaliacao').AsInteger := StrToInt(Retorno);
        Open;
        Sequencia.Text := tblVeiculosAvaliacao.FieldByName('Id_Veiculos_Avaliacao').AsString;
     end;
     Sequencia.SetFocus;
end;

procedure TBoxAvaliacao.tblVeiculosAvaliacaoAfterPost(DataSet: TDataSet);
begin
    fdb1.IBTransaction.CommitRetaining;
end;

end.


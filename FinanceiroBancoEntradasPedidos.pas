unit FinanceiroBancoEntradasPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, JvMaskEdit, JvExControls, JvDBLookup;

type
  TBoxFinanceiroBancoEntradasPedidos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Dinheiro: TCurrencyEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    Cliente: TDBEdit;
    Valor: TDBEdit;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    StatusBar1: TStatusBar;
    tblCreceber: TIBDataSet;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Historico: TDBEdit;
    Label3: TLabel;
    BtnConfirma: TBitBtn;
    Label4: TLabel;
    DataRecebimento: TJvDBDateEdit;
    DataSourceBanco: TDataSource;
    DataSourceCreceber: TDataSource;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblBanco: TIBDataSet;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    Label7: TLabel;
    CodigoBanco: TDBEdit;
    SpeedButton1: TSpeedButton;
    NomeBanco: TJvDBMaskEdit;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    DataSourcePlacon: TDataSource;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    tblBancoID_BANCO: TIntegerField;
    tblBancoID_CONCESSIONARIA: TIntegerField;
    tblBancoID_CLIENTES: TIntegerField;
    tblBancoID_AVALISTA: TIntegerField;
    tblBancoDOCUMENTO: TIBStringField;
    tblBancoNATUREZA: TIBStringField;
    tblBancoDATA: TDateField;
    tblBancoVALOR: TIBBCDField;
    tblBancoBANCO: TIBStringField;
    tblBancoCONTA: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    tblConcessionaria: TIBDataSet;
    DataSourceConcessionaria: TDataSource;
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
    Concessionaria: TJvDBLookupCombo;
    Label8: TLabel;
    Concessionaria1: TJvDBLookupCombo;
    tblConcessionaria1: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    DataSourceConcessionaria1: TDataSource;
    tblBancoORIGEM: TIBStringField;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblCreceberHISTORICO: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoBancoExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure ConcessionariaChange(Sender: TObject);
    procedure Concessionaria1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idBanco : Integer;
    Retorno : String;
    idConcessionariaGravar : Integer;
    procedure AbrirDs; virtual;
    procedure FecharDs; virtual;
    procedure CancelaRecebimento; virtual;
    procedure GravaDados; virtual;
  end;

var
  BoxFinanceiroBancoEntradasPedidos: TBoxFinanceiroBancoEntradasPedidos;

implementation

uses Empresas, FDB, Biblioteca;

{$R *.dfm}

procedure TBoxFinanceiroBancoEntradasPedidos.BtnConfirmaClick(Sender: TObject);
begin
  if Dinheiro.Value < tblCreceber.FieldByName('Valor').AsCurrency then
     begin
      case MessageDlg('O valor recebido é inferior ao valor total. Confirma recebimento?', mtConfirmation, [mbYes,mbNo], 0) of
        mrYes: GravaDados;
        mrNo : Dinheiro.SetFocus;
      end
     end
  else
    begin
      GravaDados;
    end;
  tblCreceber.Close;
  tblCreceber.Open;
  DBGrid1.Refresh;
  Dinheiro.AsInteger := 0;
  Documento.Text := '';
  Historico.Text := '';
end;

procedure TBoxFinanceiroBancoEntradasPedidos.GravaDados;
var
  matriz: array[1..7] of String;
  i: integer;
begin
 try
  {Alterar Contas a receber}
    With tblCreceber do
     begin
       Edit;
       FieldByName('Status').AsString := 'Recebido';
       FieldByName('Valor_Pago').AsCurrency := Dinheiro.Value;
       Post;
     end;
  {Alterar pedido de veículos}
    With tblPedidoVeiculosRecebimento do
     begin
        Close;
        ParamByName('id').AsInteger :=
          tblCreceber.FieldByName('id_CReceber').AsInteger;
        Open;
        Edit;
        FieldByName('Cx_bc').AsString := 'Banco';
        FieldByName('Data_recebimento').AsDateTime :=
          tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor_recebido').AsCurrency :=
          tblCreceber.FieldByName('Valor_Pago').AsCurrency;
        Post;
     end;
  {Gravar Banco - reg.novo}
     matriz[1] := 'Id_Concessionaria';
     matriz[2] := 'Id_Clientes';
     matriz[3] := 'Id_Avalista';
     matriz[4] := 'Documento';
     matriz[5] := 'Conta';
     matriz[6] := 'Banco';
     matriz[7] := 'Historico';
     With tblBanco do
       begin
        Insert;
        FieldByName('Natureza').AsString := 'E';
        Fdb1.AtualizaDataAtual;
        FieldByName('Data').AsDateTime :=
          tblCreceber.FieldByName('Pagamento').AsDateTime; ;
        FieldByName('Valor').AsCurrency :=
          tblCreceber.FieldByName('Valor_Pago').AsCurrency;
        FieldByName('Juros').AsCurrency :=
          tblCreceber.FieldByName('Valor_Pago').AsCurrency -
          tblCreceber.FieldByName('Valor').AsCurrency;;
        for I := 1 to 7 do
          begin
           FieldByName(matriz[i]).AsString :=
             tblCreceber.FieldByName(matriz[i]).AsString;
          end;
        FieldByName('Id_Concessionaria').AsInteger := idConcessionariaGravar;   
        Post;
       end;
except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
end;
  showmessage('Dados gravados');

end;

procedure TBoxFinanceiroBancoEntradasPedidos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Contas bancárias','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Descrição:','Sequência:','Conta:'],
      'Conta','Conta',Fdb1.SQLConnection1,'Conta_Bancaria = ','T','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblCreceber.FieldByName('Banco').AsString := tblPlacon.FieldByName('Conta').AsString;
        NomeBanco.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.DBEdit1Exit(Sender: TObject);
begin
  BtnConfirma.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.DBGrid1Exit(Sender: TObject);
begin
  CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.DinheiroExit(Sender: TObject);
begin
  tblCreceber.Edit;
  Fdb1.AtualizaDataAtual;
  tblCreceber.FieldByName('Pagamento').AsDateTime := DataAtual;
//  tblCreceber.Post;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoEntradasPedidos := nil;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (tblCreceber.FieldByName('Pagamento').AsDateTime <> null)  and
   (tblCreceber.FieldByName('Status').AsString = 'Pendente') then
    case MessageDlg('Cancela recebimento?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        CanClose :=  True;
        CancelaRecebimento;
       end;
      mrNo :
       begin
        CanClose := False;
       end;
    end;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.CancelaRecebimento;
begin
  with tblCreceber do
   begin
    Edit;
    FieldByName('Pagamento').Value := Null;
    Post;
   end;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.CodigoBancoExit(Sender: TObject);
begin
tblCreceber.edit;
//tblCreceber.FieldByName('Historico').AsString :=
//  tblCreceber.FieldByName('Historico').AsString + ' - ' +
//  NomeCliente.Text;
if CodigoBanco.Text = '' then
   CodigoBanco.Text := '0';
idBanco := StrToInt(CodigoBanco.Text);
if StrtoInt(CodigoBanco.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoBanco.SetFocus;
  end
else
  begin
    with tblPlacon do
      begin
       if idBanco<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idBanco;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Conta inexistente.');
             CodigoBanco.SetFocus;
            end
          else
            begin
              NomeBanco.Text := FieldbyName('Descricao').Text;
              Dinheiro.SetFocus;
            end;
         end;
      end;
  end;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.Concessionaria1Change(
  Sender: TObject);
begin
  idConcessionariaGravar := tblConcessionaria1.FieldByName('id_Concessionaria').AsInteger;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.ConcessionariaChange(
  Sender: TObject);
begin
  with tblCreceber do
  begin
    Close;
    ParamByName('id').AsInteger := tblConcessionaria.FieldByName('id_Concessionaria').AsInteger;
    Open;
  end;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoEntradasPedidos.FormShow(Sender: TObject);
begin
//  Panel1.Enabled := False;
  Concessionaria.SetFocus;
  tblCreceber.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoEntradasPedidos.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroBancoEntradasPedidos.AbrirDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
   DataSourceBanco.Dataset.Open;
   DataSourcePlacon.DataSet.Open;
   DataSourceConcessionaria.Dataset.Open;
   with tblConcessionaria do
   begin
     first;
     while not eof do
     begin
       if StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)= fieldByName('Id_Concessionaria').AsInteger then
         break;
       next;
     end;
   end;
   Concessionaria.DisplayEmpty := tblConcessionaria.FieldByName('Empresa').AsString;
   DataSourceConcessionaria1.Dataset.Open;
   with tblConcessionaria1 do
   begin
     first;
     while not eof do
     begin
       if StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)= fieldByName('Id_Concessionaria').AsInteger then
         break;
       next;
     end;
   end;
   Concessionaria1.DisplayEmpty := tblConcessionaria1.FieldByName('Empresa').AsString;
   idConcessionariaGravar := tblConcessionaria1.FieldByName('Id_Concessionaria').AsInteger;
end;

Procedure TBoxFinanceiroBancoEntradasPedidos.FecharDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
   DataSourceBanco.Dataset.Close;
   DataSourcePlacon.DataSet.Close;
   DataSourceConcessionaria.Dataset.Close;   
end;

end.

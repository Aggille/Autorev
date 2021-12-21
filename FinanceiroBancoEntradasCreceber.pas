unit FinanceiroBancoEntradasCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, IBQuery, JvMaskEdit, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP;

type
  TBoxFinanceiroBancoEntradasCreceber = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Dinheiro: TCurrencyEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Valor: TDBEdit;
    Vencimento: TJvDBDateEdit;
    StatusBar1: TStatusBar;
    tblBanco: TIBDataSet;
    DataSourceBanco: TDataSource;
    DBGrid1: TDBGrid;
    tblCreceber: TIBDataSet;
    DataSourceCreceber: TDataSource;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    tblPessoas: TIBDataSet;
    DataSourceClientes: TDataSource;
    DataRecebimento: TJvDBDateEdit;
    Label4: TLabel;
    BtnConfirma: TBitBtn;
    Label3: TLabel;
    Valor_devido: TCurrencyEdit;
    Label7: TLabel;
    CodigoBanco: TDBEdit;
    DataSourcePlacon: TDataSource;
    tblPlacon: TIBDataSet;
    SpeedButton1: TSpeedButton;
    NomeBanco: TJvDBMaskEdit;
    Historico: TDBEdit;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    Documento: TEdit;
    CodigoCliente: TMaskEdit;
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
    tblBancoHISTORICO: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    tblBancoORIGEM: TIBStringField;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DocumentoExit(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CodigoBancoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCliente : Integer;
    idBanco : integer;
//    mHistorico : String;
    procedure AbrirDs;
    procedure FecharDs;
    procedure PreencherGridContas;
    procedure GravaRecebimento;
    procedure CancelaRecebimento;
    procedure PreencheValores;
    procedure EnviarEmail;
  end;

var
  retorno: String;
  BoxFinanceiroBancoEntradasCreceber: TBoxFinanceiroBancoEntradasCreceber;

implementation

uses Empresas, FDB, Biblioteca, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroBancoEntradasCreceber.CodigoBancoExit(Sender: TObject);
begin
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

procedure TBoxFinanceiroBancoEntradasCreceber.BtnConfirmaClick(Sender: TObject);
begin
   if (Dinheiro.Value) < CalculaJuros(tblCreceber.FieldByName('Pagamento').AsDateTime ,
       tblCreceber.FieldByName('Vencimento').AsDateTime ,
       tblCreceber.FieldByName('Valor').AsCurrency) then
      begin
       if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
        (FDB1.IBDataSetLoginAcesso22.AsString <> 'T') then
          begin
           Showmessage('Valor de recebimento não autorizado.');
           Dinheiro.SetFocus;
          end
       else
        begin
         if dinheiro.Value <> tblBanco.FieldByName('Valor').AsCurrency then
           begin
             case MessageDlg('Pagamento com juros/desconto ?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes: GravaRecebimento;
             end;
           end
         else
           GravaRecebimento;
        end;
      end
    else
   GravaRecebimento;
   tblCreceber.Close;
   tblCreceber.Open;
   DBGrid1.Refresh;
   Documento.Text := '';
   CodigoCliente.Text := '';
//   Documento.SetFocus;
   with tblCreceber do
    begin
     Close;
     SelectSql.Clear;
     SelectSql.Add('Select c.*,f.ID_FORMAS_PAGAMENTO, f.forma_pagamento from Creceber C ');
     SelectSql.Add('inner join formas_pagamento f on (c.Id_forma_pagamento = f.id_Formas_pagamento)');
     SelectSql.Add('where c.status<>' +''''+'Pendente'+'''');
     SelectSql.Add(' and c.status<> '+''''+'Cancelado'+'''');
     SelectSql.Add(' and c.status<> '+''''+'Recebido'+'''');
     SelectSql.Add(' and c.status<> '+''''+'Renegociado'+'''');
     SelectSql.Add(' and c.status<> '+''''+'Financiado'+'''');
     SelectSql.Add(' and c.Id_Clientes = :idClientes');
//     SelectSql.Add(' and c.id_Concessionaria = :id and c.Id_Clientes = :idCliente');
  //   ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  ///   ParamByName('idDocumento').AsString := documento.Text;
  //   Open;
    end;
   SpeedButton3.Click;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.GravaRecebimento;
var
  matriz: array[1..8] of String;
  i: Integer;
begin
try
  with tblCreceber do
  begin
  //  Edit;
    FieldByName('Valor_Pago').AsCurrency := Dinheiro.Value;
    FieldByName('Status').AsString := 'Recebido';
    Post;
  end;
  with tblBanco do
   begin
    matriz[1] := 'Id_Concessionaria';
    matriz[2] := 'Id_Clientes';
    matriz[3] := 'Id_Avalista';
    matriz[4] := 'Documento';
    matriz[5] := 'Conta';
    matriz[6] := 'Banco';
    matriz[7] := 'Historico';
    matriz[8] := 'Id_Creceber';
    Insert;
    FieldByName('Natureza').AsString := 'E';
    Fdb1.AtualizaDataAtual;
    FieldByName('Data').AsDateTime :=
      tblCreceber.FieldByName('Pagamento').AsDateTime;
    FieldByName('Valor').AsCurrency := Dinheiro.Value;
//    FieldByName('Historico').AsString := mHistorico;
    for I := 1 to 8 do
      begin
        FieldByName(matriz[i]).AsString :=
          tblCreceber.FieldByName(matriz[i]).AsString;
      end;
    FieldByName('id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
        //StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Juros').AsCurrency := dinheiro.Value -
      tblCreceber.FieldByName('Valor').AsCurrency;
    Post;
   end;
     //Se cliente no SPC e recebimento em atraso enviar e-mail de verificação
      if (tblPessoas.FieldByName('Reg_SPC').AsString = 'T') or (tblPessoas.FieldByName('Reg_SPC').AsString = 'X') or
         (tblPessoas.FieldByName('Reg_SPC').AsString = 't') or (tblPessoas.FieldByName('Reg_SPC').AsString = 'x') then
       begin
          EnviarEmail;
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

procedure TBoxFinanceiroBancoEntradasCReceber.EnviarEmail;
var
 SmtpHost : String;
 SmtpPort : String;
 SmtpUser : String;
 SmtpPass : String;
 EmailAssunto : String;
 Para : String;
 Mensagem : TStringList;
begin
   Mensagem := TStringList.Create();
   with mensagem do
     begin
       add( 'Foi recebido um valor do cliente: ');
       add( '' + tblPessoas.FieldByName('Id_Clientes').AsString + ' - ' + tblPessoas.FieldByName('Nome').AsString);
       add( 'que está registrado no SPC.' );
       add( '' );
       add( 'Valor do recebimento: '  + tblCreceber.FieldByName('Valor_Pago').AsString);
       add( 'Data do recebimento: ' + tblCreceber.FieldByName('Pagamento').AsString);
       add( '' );
       add( '' );
       add( 'Sem mais,' );
       add( '' );
       add( '' );
       add( BoxEmpresas.Fantasia);
       add( '' );
       add( '' );
       add( 'Não responda este e-mail.');
       add( 'E-mail gerado automaticamente por Autorev-DS - Dealer System' );
     end;

  SmtpHost      := BoxEmpresas.Host;//Ini.ReadString( 'Email','Host'   ,'') ;
  SmtpPort      := BoxEmpresas.Port;//Ini.ReadString( 'Email','Port'   ,'') ;
  SmtpUser      := BoxEmpresas.Usuario;//.ReadString( 'Email','User'   ,'') ;
  SmtpPass      := BoxEmpresas.Pass;//Ini.ReadString( 'Email','Pass'   ,'') ;
  EmailAssunto  := 'Recebimento de cliente no SPC';//Ini.ReadString( 'Email','Assunto','') ;
  Para          := 'contasapagar@yamavale.com.br';
//  Para := 'nfe.recebimento@yamavale.com.br';
  try
   idMessage1.Recipients.EMailAddresses := Para;
   idMessage1.Subject := EmailAssunto;
   idMessage1.Body := Mensagem;
   idSMTP1.Host := BoxEmpresas.Host;
   idSMTP1.Port := StrToInt(BoxEmpresas.Port);
   idSMTP1.Username := BoxEmpresas.Usuario;
   idSMTP1.Password := BoxEmpresas.Pass;
   idSMTP1.Connect;
   idSMTP1.Send(IdMessage1);
   idSMTP1.Disconnect;
   Showmessage('e-mail enviado com sucesso.');
  except
     on e:Exception do
      begin
         Showmessage('Erro no envio do e-mail'+ #13 + e.Message );
      end;
  end;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end
             else
               begin
                 NomeCliente.Text := FieldbyName('Nome').Text;
                 PreencherGridContas;
               end;
            end;
         end;
      end;
  end;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.PreencherGridContas;
begin
with tblCreceber do
  begin
    Close;
    SelectSql.Clear;
    SelectSql.Add('Select c.*,f.ID_FORMAS_PAGAMENTO, f.forma_pagamento from Creceber C ');
    SelectSql.Add('inner join formas_pagamento f on (c.Id_forma_pagamento = f.id_Formas_pagamento)');
    SelectSql.Add('where c.status<>' +''''+'Pendente'+'''');
    SelectSql.Add(' and c.status<> '+''''+'Cancelado'+'''');
    SelectSql.Add(' and c.status<> '+''''+'Recebido'+'''');
    SelectSql.Add(' and c.status<> '+''''+'Renegociado'+'''');
    SelectSql.Add(' and c.status<> '+''''+'Financiado'+'''');
    SelectSql.Add(' and c.Id_Clientes = :idClientes');
//    SelectSql.Add(' and c.id_Concessionaria = :id and c.Id_Clientes = :idCliente');
//    ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idClientes').AsInteger := StrToInt(CodigoCliente.Text);
    Open;
          if recordCount = 0 then
            begin
             showmessage('Cliente sem débitos nesta concessionária.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if fieldByName('id_concessionaria').AsInteger <> StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
              case MessageDlg('Documento não é desta concessionária, receber mesmo assim?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes:
                begin
                 Documento.Text := FieldByName('Documento').AsString;
                 DBGrid1.SetFocus;
                end;
              end;
              DBGrid1.SetFocus;
            end;

  {  if recordCount = 0 then
       begin
         showmessage('Cliente sem débitos nesta concessionária.');
         CodigoCliente.SetFocus;
       end
    else
      begin
        Documento.Text := FieldByName('Documento').AsString;
        DBGrid1.SetFocus;
      end;}
  end;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.DBGrid1ColExit(Sender: TObject);
begin
    PreencheValores;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.PreencheValores;
begin
  Documento.Text := tblCreceber.FieldByName('Documento').AsString;
//  mHistorico := tblCreceber.FieldByName('Historico').AsString;
  Fdb1.AtualizaDataAtual;
  if tblCreceber.FieldByName('Vencimento').AsDateTime = DataAtual then
    begin
      Valor_devido.Value := tblCreceber.FieldByName('Valor').AsCurrency;
    end
  else
   if (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =6) or
    (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =4) or
    (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =3) or
     (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =2) or
   (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =1) then
     begin
      Fdb1.AtualizaDataAtual;
      Valor_devido.Value := CalculaJuros(DataAtual, tblCreceber.FieldByName('Vencimento').AsDateTime,
        tblCreceber.FieldByName('valor').AsCurrency);

     end
   else
     Valor_devido.Value := tblCreceber.FieldByName('Valor').AsCurrency;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.DBGrid1Exit(Sender: TObject);
var
 mformapagamento : String;

begin
  PreencheValores;
  tblCreceber.Edit;

if tblCreceber.FieldByName('Forma_pagamento').AsString = 'CARTAO VISA' then
   mformapagamento := 'VISA';
if tblCreceber.FieldByName('Forma_pagamento').AsString = 'CARTAO MASTER' then
   mformapagamento := 'MASTER';
if tblCreceber.FieldByName('Forma_pagamento').AsString = 'CARTAO HIPER' then
   mformapagamento := 'HIPER';
if tblCreceber.FieldByName('Forma_pagamento').AsString = 'BANRICOMPRAS' then
   mformapagamento := 'BANRI';
if tblCreceber.FieldByName('Forma_pagamento').AsString = 'CARTAO ELO' then
   mformapagamento := 'CARTAO ELO';
if tblCreceber.FieldByName('Forma_pagamento').AsString = 'CARTAO AMEX' then
   mformapagamento := 'CARTAO AMEX';


//tblCreceber.edit;
 tblCreceber.FieldByName('Historico').AsString :=
  Substr(RTrim(tblCreceber.FieldByName('Historico').AsString) + ' - ' +
  mformaPagamento + ' - ' +   NomeCliente.Text,1,60);


  CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  PreencheValores;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.DinheiroExit(Sender: TObject);
begin
  Fdb1.AtualizaDataAtual;
  tblCreceber.FieldByName('Pagamento').AsDateTime := DataAtual;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.DocumentoExit(Sender: TObject);
begin
  if documento.Text <> '' then
    begin
      with tblCreceber do
        begin
          Close;
          SelectSql.Clear;
          SelectSql.Add('Select c.*,f.ID_FORMAS_PAGAMENTO, f.forma_pagamento from Creceber C ');
          SelectSql.Add('inner join formas_pagamento f on (c.Id_forma_pagamento = f.id_Formas_pagamento)');
          SelectSql.Add('where c.status<>' +''''+'Pendente'+'''');
          SelectSql.Add(' and c.status<> '+''''+'Cancelado'+'''');
          SelectSql.Add(' and c.status<> '+''''+'Recebido'+'''');
          SelectSql.Add(' and c.status<> '+''''+'Renegociado'+'''');
          SelectSql.Add(' and c.status<> '+''''+'Financiado'+'''');
          SelectSql.Add(' and c.documento = :idDocumento');
//          SelectSql.Add(' and c.id_Concessionaria = :id and c.documento = :idDocumento');
 //         ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          ParamByName('idDocumento').AsString := documento.Text;
          Open;
          if recordCount = 0 then
            begin
             showmessage('Documento inexistente nesta concessionária.');
             Documento.SetFocus;
            end
          else
            begin
             if fieldByName('id_concessionaria').AsInteger <> StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
              case MessageDlg('Documento não é desta concessionária, receber mesmo assim?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes:
                begin
                 CodigoCliente.Text := FieldByName('id_Clientes').AsString;
                 CodigoCliente.SetFocus;
                end;
              end;
            end;
       end;
    end;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoEntradasCreceber := nil;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{  if (tblCreceber.FieldByName('Pagamento').AsDateTime <> null)  and
   (documento.Text <> '') then
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
    end;         }
end;

procedure TBoxFinanceiroBancoEntradasCreceber.CancelaRecebimento;
begin
{  with tblCreceber do
   begin
    Edit;
    FieldByName('Pagamento').Value := Null;
    FieldByName('Valor_Pago').Value := null;
    Post;
   end;}
end;

procedure TBoxFinanceiroBancoEntradasCreceber.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoEntradasCreceber.FormShow(Sender: TObject);
begin
  AbrirDs;
  SpeedButton3.Click;
//  Documento.SetFocus;
//  tblCaixa.ParamByName('id').AsInteger :=
//    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);

end;

procedure TBoxFinanceiroBancoEntradasCreceber.SpeedButton1Click(
  Sender: TObject);
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

procedure TBoxFinanceiroBancoEntradasCreceber.SpeedButton2Click(
  Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.SpeedButton3Click(
  Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Contas à receber','Creceber',
      ['Documento','Id_Forma_Pagamento','Id_Creceber','Id_Concessionaria','Valor','Vencimento','Id_Clientes'],
      ['Documento:','Forma_Pagamento:','Sequência:','Concessionária:','Valor:','Vencimento:','Seq.Cliente:'],
      'Descricao','ID_Clientes',Fdb1.SQLConnection1,'Status =','Processado','');
     with tblCreceber do
     begin
        Close;
//        ParamByName('Id').AsInteger := strToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Parambyname('IdClientes').AsString := Retorno;
        Open;
        IdCliente := FieldByName('Id_Clientes').AsInteger;
        CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
        Documento.Text := FieldByName('Documento').AsString;
     end;
       CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoEntradasCreceber.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroBancoEntradasCreceber.AbrirDs;
begin
   DataSourceBanco.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
   DataSourceClientes.Dataset.Open;
end;

Procedure TBoxFinanceiroBancoEntradasCreceber.FecharDs;
begin
   DataSourceBanco.Dataset.Close;
   DataSourceClientes.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
end;

end.

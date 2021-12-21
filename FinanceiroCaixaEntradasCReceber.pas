unit FinanceiroCaixaEntradasCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, IBQuery, JvMaskEdit, ACBrBase, ACBrExtenso, OleServer,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage;

type
  TBoxFinanceiroCaixaEntradasCreceber = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    LabelForma: TLabel;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Valor: TDBEdit;
    Vencimento: TJvDBDateEdit;
    StatusBar1: TStatusBar;
    tblCaixa: TIBDataSet;
    DataSourceCaixa: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Historico: TDBEdit;
    tblCreceber: TIBDataSet;
    DataSourceCreceber: TDataSource;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
    tblPessoasCPF: TIBStringField;
    tblPessoasNUM_CPF: TIBStringField;
    tblPessoasNASCIMENTO: TDateField;
    tblPessoasPAI: TIBStringField;
    tblPessoasMAE: TIBStringField;
    tblPessoasENDERECO: TIBStringField;
    tblPessoasBAIRRO: TIBStringField;
    tblPessoasCIDADE: TIBStringField;
    tblPessoasESTADO: TIBStringField;
    tblPessoasCEP: TIBStringField;
    tblPessoasCADASTRO: TDateField;
    tblPessoasDESCONTO: TIBBCDField;
    tblPessoasFONE1: TIBStringField;
    tblPessoasFONE2: TIBStringField;
    tblPessoasFONE3: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMPRESA: TIBStringField;
    tblPessoasADMISSAO: TDateField;
    tblPessoasSALARIO: TIBBCDField;
    tblPessoasEMPR_ENDERECO: TIBStringField;
    tblPessoasEMPR_BAIRRO: TIBStringField;
    tblPessoasEMPR_CIDADE: TIBStringField;
    tblPessoasEMPR_ESTADO: TIBStringField;
    tblPessoasEMPR_CEP: TIBStringField;
    tblPessoasEMPR_FONE: TIBStringField;
    tblPessoasREF_NOME1: TIBStringField;
    tblPessoasREF_FONE1: TIBStringField;
    tblPessoasREF_NOME2: TIBStringField;
    tblPessoasREF_FONE2: TIBStringField;
    tblPessoasREF_COML1: TIBStringField;
    tblPessoasREF_COML_FONE1: TIBStringField;
    tblPessoasREF_COML2: TIBStringField;
    tblPessoasREF_COML_FONE2: TIBStringField;
    tblPessoasREF_BANC: TIBStringField;
    tblPessoasREF_AG_BANC: TIBStringField;
    tblPessoasREF_CTA_BANC: TIBStringField;
    tblPessoasFOTO: TIBStringField;
    DataSourceClientes: TDataSource;
    CodigoCliente: TMaskEdit;
    Documento: TEdit;
    Label4: TLabel;
    BtnConfirma: TBitBtn;
    Label3: TLabel;
    Valor_devido: TCurrencyEdit;
    DataRecebimento: TJvDateEdit;
    SpeedButton3: TSpeedButton;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    ACBrExtenso1: TACBrExtenso;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    tblCaixaID_CAIXA: TIntegerField;
    tblCaixaID_CONCESSIONARIA: TIntegerField;
    tblCaixaID_CLIENTES: TIntegerField;
    tblCaixaDOCUMENTO: TIBStringField;
    tblCaixaORIGEM: TIBStringField;
    tblCaixaNATUREZA: TIBStringField;
    tblCaixaFORMA_PAG: TIBStringField;
    tblCaixaDATA_LANCAMENTO: TDateField;
    tblCaixaDATA_RECEBIMENTO: TDateField;
    tblCaixaVALOR: TIBBCDField;
    tblCaixaCONTA: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
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
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCliente : Integer;
//    mHistorico : String;
    procedure AbrirDs; virtual;
    procedure FecharDs; virtual;
    procedure ReceberValor;
    procedure PreencherGridContas; virtual;
    procedure GravaRecebimento;
    procedure EnviarEmail;
    procedure CancelaRecebimento; virtual;
    procedure PreencheValores; virtual;
  end;

var
  retorno: String;
  BoxFinanceiroCaixaEntradasCreceber: TBoxFinanceiroCaixaEntradasCreceber;

implementation

uses Empresas, FDB, Biblioteca, Menu, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasCreceber.BtnConfirmaClick(Sender: TObject);
begin
 if ((tblCreceber.FieldByName('Id_forma_pagamento').AsInteger = 3) or (tblCreceber.FieldByName('Id_forma_pagamento').AsInteger = 4))
    and
   (tblCreceber.FieldByName('Vencimento').AsDateTime > tblCreceber.FieldByName('PAgamento').AsDateTime) then
  Case MessageDlg('Confirma recebimento do cheque antes do vencimento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
       ReceberValor;
      end;
   end
 else
  ReceberValor;
end;


procedure TBoxFinanceiroCaixaEntradasCreceber.ReceberValor;
begin
       if(Dinheiro.Value+Cheque.Value >
         (TblCreceber.FieldByName('Valor').AsCurrency *0.9)) and
          (FDB1.IBDatasetLoginAcesso57.AsString = 'T') then
           GravaRecebimento
       else
        begin
         if (Dinheiro.Value+Cheque.Value) <
            CalculaJuros(tblCreceber.FieldByName('Pagamento').AsDateTime ,
             tblCreceber.FieldByName('Vencimento').AsDateTime + 3 ,
             tblCreceber.FieldByName('Valor').AsCurrency) then
            begin
              if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
               (FDB1.IBDataSetLoginAcesso20.AsString <> 'T') then
                 begin
                   Showmessage('Valor de recebimento não autorizado.');
                   Dinheiro.SetFocus;
                 end
              else
               begin
                if dinheiro.Value + Cheque.Value <>
                  tblCaixa.FieldByName('Valor').AsCurrency then
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
        end;
   tblCreceber.Close;
   Documento.Text := '';
   CodigoCliente.Text := '';
   tblCreceber.Open;
   DBGrid1.Refresh;
   SpeedButton3.Click;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.GravaRecebimento;
var
  matriz: array[1..5] of String;
  i: Integer;
begin

try
   with tblCreceber do
  begin
    Edit;
    FieldByName('Pagamento').AsDateTime := StrToDate(DataRecebimento.EditText);
    FieldByName('Valor_Pago').AsCurrency := Dinheiro.Value + Cheque.Value;
    FieldByName('Status').AsString := 'Recebido';
    Post;
  end;
  with tblCaixa do
   begin
    matriz[1] := 'Documento';
    matriz[2] := 'Historico';
    matriz[3] := 'Id_concessionaria';
    matriz[4] := 'Id_clientes';
    matriz[5] := 'Origem';
//    matriz[6] := 'Historico';
    if Dinheiro.value > 0 then{grava caixa}
      begin
        Insert;
        FieldByName('Natureza').AsString := 'E';
        Fdb1.AtualizaDataAtual;
        FieldByName('Data_lancamento').AsDateTime := DataAtual;
        FieldByName('Data_recebimento').AsDateTime :=
           tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor').AsCurrency := Dinheiro.Value;
        for I := 1 to 5 do
           begin
             FieldByName(matriz[i]).AsString :=
               tblCreceber.FieldByName(matriz[i]).AsString;
           end;
//        FieldByName('Historico').AsString := mHistorico;
        FieldByName('Status').AsString := 'Processado';
        FieldByName('Forma_Pag').AsString := 'DINHEIRO';
        FieldByName('Juros').AsCurrency := dinheiro.Value + Cheque.Value -
          tblCreceber.FieldByName('Valor').AsCurrency;
        Post;
      end;
    if Cheque.Value > 0 then{Grava caixa}
      begin
        Insert;
        FieldByName('Natureza').AsString := 'E';
        Fdb1.AtualizaDataAtual;
        FieldByName('Data_lancamento').AsDateTime := DataAtual;
        FieldByName('Data_recebimento').AsDateTime :=
           tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor').AsCurrency := Cheque.Value;
        for I := 1 to 5 do
           begin
             FieldByName(matriz[i]).AsString :=
               tblCreceber.FieldByName(matriz[i]).AsString;
           end;
//        FieldByName('Historico').AsString := mHistorico;
        FieldByName('Status').AsString := 'Processado';
        FieldByName('Forma_Pag').AsString := 'CHEQUE';
        FieldByName('Status_Banco').AsString := 'Receb.Cx.';
        FieldByName('Juros').AsCurrency := dinheiro.Value + Cheque.Value -
          tblCreceber.FieldByName('Valor').AsCurrency;
        Post;
      end;
    if MessageDlg('Deseja emitir o recibo para o cliente ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      with boxMenu.frxRecibo do
      begin
        acbrextenso1.valor            := (dinheiro.value + cheque.value);
        variables['valor']            := quotedStr( floatToStrF( dinheiro.value + cheque.value , ffCurrency, 16 , 2 ) );
        variables['data']             := quotedStr( BoxEmpresas.ConcessionariaCidade.Text +
            ', ' + formatDateTime( 'dd ''de'' MMMM ''de'' yyyy' , dataRecebimento.Date ) );
        variables['numero']           := '000';
        variables['nomecliente']      := quotedStr( nomecliente.Text );
        variables['valorextenso']     := quotedStr(acbrextenso1.texto);
        variables['incricao_cliente'] := tblPessoas.fieldbyname( 'num_cpf' ).asString;
        variables['referente']        := quotedStr('Pagamento ' + tblcReceber.fieldbyname( 'historico' ).asString );
        variables['documento']        := quotedStr(documento.Text);
        Variables['concessionaria']   := quotedStr(BoxEmpresas.ConcessionariaEmUso.Text);
        showReport(true);
      end;

     //Se cliente no SPC e recebimento em atraso enviar e-mail de verificação
      if (tblPessoas.FieldByName('Reg_SPC').AsString = 'T') or (tblPessoas.FieldByName('Reg_SPC').AsString = 'X') or
         (tblPessoas.FieldByName('Reg_SPC').AsString = 't') or (tblPessoas.FieldByName('Reg_SPC').AsString = 'x') then
       begin
          EnviarEmail;
       end;
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

procedure TBoxFinanceiroCaixaEntradasCReceber.EnviarEmail;
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


procedure TBoxFinanceiroCaixaEntradasCreceber.CodigoClienteExit(Sender: TObject);
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

procedure TBoxFinanceiroCaixaEntradasCreceber.PreencherGridContas;
begin
with tblCreceber do
  begin
    Close;
    SelectSql.Clear;
    SelectSql.Add('Select * from Creceber');
    SelectSql.Add('where status<>' +''''+'Pendente'+'''');
    SelectSql.Add(' and status<> '+''''+'Recebido'+'''');
    SelectSql.Add(' and status<> '+''''+'Renegociado'+'''');    
    SelectSql.Add(' and id_Concessionaria = :id and Id_Clientes = :idClientes');
    ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idClientes').AsInteger := StrToInt(CodigoCliente.Text);
//    showmessage(selectsql.Text);
    Open;
    if recordCount = 0 then
       begin
         showmessage('Cliente sem débitos nesta concessionária.');
         CodigoCliente.SetFocus;
       end
    else
      begin
        Documento.Text := FieldByName('Documento').AsString;
        DBGrid1.SetFocus;
      end;
  end;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.DBGrid1ColExit(Sender: TObject);
begin
    PreencheValores;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.PreencheValores;
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

procedure TBoxFinanceiroCaixaEntradasCreceber.DBGrid1Exit(Sender: TObject);
begin
  PreencheValores;
  Dinheiro.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  PreencheValores;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.DinheiroExit(Sender: TObject);
begin
  tblCreceber.Edit;
  tblCreceber.FieldByName('Historico').AsString :=
    Substr(tblCreceber.FieldByName('Historico').AsString + ' - ' +
    NomeCliente.Text,1,60);
  Fdb1.AtualizaDataAtual;
  tblCreceber.FieldByName('Pagamento').AsDateTime := DataAtual;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.DocumentoExit(Sender: TObject);
begin
  if documento.Text <> '' then
    begin
      with tblCreceber do
        begin
          Close;
          SelectSql.Clear;
          SelectSql.Add('Select * from Creceber');
          SelectSql.Add('where status<>' +''''+'Pendente'+'''');
          SelectSql.Add(' and status<> '+''''+'Recebido'+'''');
          SelectSql.Add(' and status<> '+''''+'Renegociado'+'''');          
          SelectSql.Add(' and id_Concessionaria = :id and documento = :idDocumento');
          ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          ParamByName('idDocumento').AsString := documento.Text;
          Open;
          if recordCount = 0 then
            begin
             showmessage('Documento inexistente nesta concessionária.');
             documento.SetFocus;
            end
          else
            begin
             CodigoCliente.Text := FieldByName('id_Clientes').AsString;
             with tblPessoas do
             begin
               Close;
               ParamByName('id').AsInteger :=
                 tblCreceber.FieldByName('id_clientes').AsInteger;
               Open;  
               NomeCliente.Text := FieldByName('Nome').AsString;
             end;
             PreencherGridContas;
//             CodigoCliente.SetFocus;
             Dinheiro.SetFocus;
            end;
       end;
    end;
 end;

procedure TBoxFinanceiroCaixaEntradasCreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasCreceber := nil;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.FormCloseQuery(Sender: TObject;
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
    end;}
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.CancelaRecebimento;
begin
{  with tblCreceber do
   begin
    Edit;
    FieldByName('Pagamento').Value := Null;
    FieldByName('Valor_Pago').Value := Null;
    Post;
   end;}
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasCreceber.FormShow(Sender: TObject);
begin
  DataRecebimento.Text := DateToStr(DataAtual);
//  Documento.SetFocus;
//  tblCaixa.ParamByName('id').AsInteger :=
//    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
  SpeedButton3.Click;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.SpeedButton2Click(
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

procedure TBoxFinanceiroCaixaEntradasCreceber.SpeedButton3Click(
  Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Contas à receber','Creceber',
      ['Documento','Id_Creceber','Id_Concessionaria','Valor','Vencimento','Id_Clientes'],
      ['Documento:','Sequência:','Concessionária:','Valor:','Vencimento:','Seq.Cliente:'],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Status =','Processado','');
     with tblCreceber do
     begin
        Close;
        SelectSql.Clear;
        SelectSql.Add('Select * from Creceber');
        SelectSql.Add('where status<>' +''''+'Pendente'+'''');
        SelectSql.Add(' and status<> '+''''+'Recebido'+'''');
        SelectSql.Add(' and status<> '+''''+'Renegociado'+'''');        
        SelectSql.Add(' and id_Concessionaria = :id and Id_Clientes = :idClientes');
        ParamByName('Id').AsInteger := strToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Parambyname('IdClientes').AsString := Retorno;
        Open;
        IdCliente := FieldByName('Id_Clientes').AsInteger;
        CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
        Documento.Text := FieldByName('Documento').AsString;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasCreceber.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasCreceber.AbrirDs;
begin
   DataSourceCaixa.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
   DataSourceClientes.Dataset.Open;
end;

Procedure TBoxFinanceiroCaixaEntradasCreceber.FecharDs;
begin
   DataSourceCaixa.Dataset.Close;
   DataSourceClientes.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
end;

end.

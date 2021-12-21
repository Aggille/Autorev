unit FinanceiroConciliacaoCartoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, System.Math,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, Vcl.DBCtrls, JvMaskEdit, RxToolEdit, RxCurrEdit, DateUtils;

type
  TBoxFinanceiroConciliacaoCartoes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    BtnImporta: TBitBtn;
    Memo: TMemo;
    wwDBGrid1: TwwDBGrid;
    DataSourceCartoes: TDataSource;
    DataSourceCreceber: TDataSource;
    wwDBGrid2: TwwDBGrid;
    tblCartoes: TIBDataSet;
    tblCartoesID_CONCILIACAO_CARTOES: TIntegerField;
    tblCartoesCODIGO_ESTABELECIMENTO: TIBStringField;
    tblCartoesCARTAO: TIBStringField;
    tblCartoesDATA_PAGAMENTO: TDateField;
    tblCartoesPARCELA: TIBStringField;
    tblCartoesVALOR_BRUTO: TIBBCDField;
    tblCartoesTAXA_TARIFA: TIBBCDField;
    tblCartoesVALOR_LIQUIDO: TIBBCDField;
    tblCartoesNUMERO_CV: TIBStringField;
    tblBancos: TIBDataSet;
    DataSourceBancos: TDataSource;
    tblBancosID_BANCO: TIntegerField;
    tblBancosID_CONCESSIONARIA: TIntegerField;
    tblBancosID_CLIENTES: TIntegerField;
    tblBancosID_AVALISTA: TIntegerField;
    tblBancosDOCUMENTO: TIBStringField;
    tblBancosNATUREZA: TIBStringField;
    tblBancosDATA: TDateField;
    tblBancosVALOR: TIBBCDField;
    tblBancosBANCO: TIBStringField;
    tblBancosCONTA: TIBStringField;
    tblBancosHISTORICO: TIBStringField;
    tblBancosJUROS: TIBBCDField;
    tblBancosORIGEM: TIBStringField;
    tblBancosID_CRECEBER: TIntegerField;
    tblBancosID_DESPESAS: TIntegerField;
    Label7: TLabel;
    Label4: TLabel;
    BtnConfirma: TBitBtn;
    Banco: TEdit;
    Data: TJvDateEdit;
    NomeCliente: TJvDBMaskEdit;
    LabelCliente: TLabel;
    tblPessoas: TIBDataSet;
    DataSourceClientes: TDataSource;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblCreceberNUMERO_CV: TIBStringField;
    tblCreceberID_FORMAS_PAGAMENTO: TIntegerField;
    tblCreceberFORMA_PAGAMENTO: TIBStringField;
    tblCreceberRECEBER: TIBStringField;
    BitBtn1: TBitBtn;
    Label12: TLabel;
    TotalCartoes: TCurrencyEdit;
    NumeroCartoes: TEdit;
    Saldo: TCurrencyEdit;
    Juros: TCurrencyEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    BitBtn4: TBitBtn;
    procedure BtnImportaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1CellChanged(Sender: TObject);
    procedure wwDBGrid1CellChanged2(Sender: TObject);
    procedure tblCartoesAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImportaExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    function FormataCampo(campo: string; delimitador: char; coluna, linhaLista: integer; lista: TStringList; var temAspasInicial, achouAspasFinal: boolean): string;
  	procedure ImportaArquivoCSV(arquivo: string; delimitador: char; numColunas: integer);
  	procedure RemoveLinhaStringGrid(linha: integer);
    procedure PreencheGrid;
  public
    { Public declarations }
  end;

var
  BoxFinanceiroConciliacaoCartoes: TBoxFinanceiroConciliacaoCartoes;

implementation

{$R *.dfm}

uses FDB, efuncoes, Empresas;

procedure TBoxFinanceiroConciliacaoCartoes.BitBtn1Click(Sender: TObject);
begin
   with tblCreceber do
   begin
     first;
     while not eof  do
     begin
       wwDBGrid2DblClick( wwdbGrid2 );
       next;
       application.ProcessMessages;
     end;
   end;
end;

procedure TBoxFinanceiroConciliacaoCartoes.BitBtn2Click(Sender: TObject);
begin
 with tblCartoes do
   begin
     First;
     While RecordCount > 0 do
       Delete;
     Close;
     Open;
     if tblCartoes.RecordCount > 0 then
      wwDBGrid1.OnCellChanged := wwDBGrid1CellChanged
     else
      wwDBGrid1.OnCellChanged := wwdbGrid1CellChanged2;
   end;
end;

procedure TBoxFinanceiroConciliacaoCartoes.BitBtn3Click(Sender: TObject);
Var Arquivo : TStringList;
  str1, str2 : String;
  texto : string;
	Cont : Integer;
	NMemoText: AnsiString;
  i: Integer;
  Arq : TextFile;

Begin

 If (OpenDialog1.Execute) And (OpenDialog1.FileName <> '') Then
  Begin
   i := 0;
   Arquivo := TStringList.Create(); // Instancia a variavel do tipo TStringList

   Arquivo.LoadFromFile(OpenDialog1.FileName); //Carrega o arquivo selecionado

//   Memo1.Clear;

//   Memo1.Text := Arquivo.Text; // Recebe o texto do arquivo selecionado
    Texto := Arquivo.Text;

	//inicializa as variáveis
  	NMemoText := '';
  for Cont := 1 to Length(Texto) do
   begin
		//coloca o caracter atual na strng NMemoText (mesmo que seja o caractere separador)
//		NMemoText := NMemoText + Texto[Cont];
		//verifica se é o caractere separador
   	if (Texto[Cont] = '/') and (Texto[Cont+1] = 'r')and (Texto[Cont+2] = '/') and (Texto[Cont+3] = 'n') then
     begin
 		//adiciona um qubra linha ao texto (line feed + carriage return)
  	 	NMemoText := NMemoText + Char(10)+Char(13); //pode ser assim também: NMemoText := NMemoText + #13#10;
      i:= 3;
//      cont := cont+4;
     end
    else
     if i = 0 then
   		NMemoText := NMemoText + Texto[Cont]
     else
        i := i - 1;
   end;
	//adiciona o texto com as quebras de linha(NMemoText) ao memo passado por parametro
	 Texto := NMemoText;

//   showmessage(texto);

    AssignFile(Arq,'Arquivo_Convertido.csv');
//    showmessage('1');

    ReWrite(Arq);
//        showmessage('212');
  //  Reset(Arq);
    //    showmessage('31');
    Writeln(Arq, Texto);
//        showmessage('41');
    CloseFile(Arq);
  Showmessage('Arquivo Convertido');
{   memo2.Clear; //Limpa o memo q receberá as strings
   str1 := memo1.Text; //Guarda em uma string temporária, o texto do memo1


   while Length(str1) <> 0 do //Enquanto houver caracteres na str1, fica no laço
   begin
      str2 := Fetch(str1,'/r/n'); //str2 recebe o texto até o ";", "eliminando" o mesmo da str1
      str2 := Trim(str2); //Trim() retira da str2 os espaços em branco e as quebras de linha.
      if Length(str2) > 0 then
          memo2.Lines.Add(str2); //Caso haja algum caracter na str2, insere no memo2
   end;
   Texto := memo2.Text;
   Showmessage(texto);}
  // Arquivo.Free; //Libera a variavel de memoria
//   Arq.free;
//   i.free;
//   texto.free;
  End;

End;


procedure TBoxFinanceiroConciliacaoCartoes.BitBtn4Click(Sender: TObject);
begin
    with tblCreceber do
   begin
     first;
     while not eof  do
     begin
      if (Monthof(tblCreceber.FieldByName('vencimento').AsDateTime) = Monthof(tblCartoes.FieldByname('Data_Pagamento').AsDateTime))
         and
         (Yearof(tblCreceber.FieldByName('vencimento').AsDateTime) = Yearof(tblCartoes.FieldByname('Data_Pagamento').AsDateTime))
         then
       begin
        wwDBGrid2DblClick( wwdbGrid2 );
       end;
      next;
//       application.ProcessMessages;
     end;
   end;
end;

procedure TBoxFinanceiroConciliacaoCartoes.BtnConfirmaClick(Sender: TObject);
var
 i : integer;
 mformapagamento : String;
// Juros : Extended;
// Saldo : Extended;
begin
 if TotalCartoes.Value = 0 then
   Showmessage('Selecione os cartões para baixar')
 else
  if tblCartoes.FieldByName('Valor_bruto').AsCurrency <> StrToCurr(TotalCartoes.Text) then
   BEGIN
    Showmessage('O total de faturas selecionadas não corresponde ao total do cartão.');
  //  Showmessage(tblCartoes.FieldByName('Valor_bruto').AsString);
//    Showmessage(totalcartoes.Text);
   END
  else
    Case MessageDlg('Confirma identificação do cartão?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes:
       begin
          mFormaPagamento := '';
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
          if banco.Text = '' then
           begin
             Showmessage('Preencha o banco.');
             Banco.SetFocus;
           end
          else
            if (StrToInt(banco.Text)<20) or (StrToInt(banco.Text)>35) then
             begin
               Showmessage('Número do banco errado.');
               Banco.SetFocus;
             end;
         try
          tblCreceber.First;
          i := 0;
          Saldo.Value := TotalCartoes.Value;//tblCartoes.FieldByName('Valor_Liquido').AsCurrency;
//                               showmessage(saldo.Text);

  //        Juros.Value := 0;
          while not tblCreceber.Eof do
           begin
            if tblCreceber.FieldByName('Receber').AsString = 'S' then
             begin
               i := i + 1;
               with tblCreceber do
                begin
                  Edit;
                  FieldByName('Pagamento').AsDateTime := Data.Date;
                  FieldByName('Banco').AsString := Banco.Text;
        //          if i = StrToInt(NumeroCartoes.Text) then
      //             begin
    //                  FieldByName('Valor_Pago').AsCurrency := Saldo.Value
  //                 end
//                  else
                   FieldByName('Valor_Pago').AsCurrency := RoundTo(((FieldByName('Valor').AsCurrency *
                                                           tblCartoes.FieldByName('Valor_liquido').AsCurrency)/
                                                           tblCartoes.FieldByName('Valor_Bruto').AsCurrency),-2);//tblCartoes.FieldByName('Valor_Liquido').AsCurrency;
                  FieldByName('Status').AsString := 'Recebido';
                  FieldByName('Historico').AsString := Substr(RTrim(tblCreceber.FieldByName('Historico').AsString) + ' - ' +
                    mformaPagamento + ' - ' +   NomeCliente.Text,1,60);
                  Post;
//                  Showmessage(saldo.Text);
  //                Showmessage(saldo.Text);
    //              showmessage(fieldByName('Valor_Pago').AsString);

                end;
                with tblBancos do
                begin
                  Open;
                  Insert;
                  FieldByName('id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
                  FieldByName('id_Clientes').AsInteger := tblCreceber.FieldByName('id_Clientes').AsInteger;
                  FieldByName('id_avalista').AsInteger := tblCreceber.FieldByName('id_avalista').AsInteger;
                  FieldByName('Documento').AsString    := tblCreceber.FieldByName('Documento').AsString;
                  FieldByName('Natureza').AsString     := 'E';
                  FieldByName('Data').AsDateTime       := Data.Date;
                  FieldByName('Valor').AsCurrency      := tblCreceber.FieldByName('Valor_Pago').AsCurrency;//tblCartoes.FieldByName('Valor_Liquido').AsCurrency;
                  FieldByName('Banco').AsString        := Banco.Text;
                  FieldByName('Historico').AsString    := tblCreceber.FieldByName('Historico').AsString;
                  FieldByName('Juros').AsCurrency      := tblCreceber.FieldByName('Valor_Pago').AsCurrency -
                                                          tblCreceber.FieldByName('Valor').AsCurrency;// tblCartoes.FieldByName('Valor_Liquido').AsCurrency;
                  FieldByName('Id_Creceber').AsInteger := tblCreceber.FieldByName('id_Creceber').AsInteger;
                  Post;
            //         showmessage(saldo.Text);
              //       sHOWMEssage(tblBancos.FieldByName('valor').AsString);
                //                          sHOWMEssage(tblBancos.FieldByName('juros').AsString);
                  Saldo.Value := Saldo.Value - (tblBancos.FieldByName('Valor').AsCurrency -
                                 tblBancos.FieldByName('Juros').AsCurrency);
                  if (saldo.Value = null) or (saldo.Text = '') then
                     Saldo.Value := 0;
            //         showmessage(saldo.Text);
//                  Juros.Value := Juros.Value + FieldByName('Juros').AsCurrency;
//                  Close;
                end;
                with tblCreceber do
                begin
                  if (i = StrToInt(NumeroCartoes.Text)) and (i > 1) and
                     (Saldo.Value <> 0) then //- FieldByName('Valor_Pago').AsCurrency - Juros.Value) <> 0) then
                   begin
            //         showmessage('a');
                     Edit;
              //       showmessage(saldo.Text);
                     FieldByName('Valor_Pago').AsCurrency := FieldByName('Valor_Pago').AsCurrency +
                                          (StrToCurr(Saldo.Text));// - FieldByName('Valor_Pago').AsCurrency - Juros.Value);
                     Post;
             //        showmessage(fieldByName('Valor_pago').AsString);
                     tblBancos.Edit;
                     tblBancos.FieldByName('Valor').AsCurrency := tblCreceber.FieldByName('Valor_Pago').AsCurrency;
                     tblBancos.Post;
                   end;
                end;
                tblBancos.Close;
             end;
             tblCreceber.Next;
           end;
            with tblCartoes do
              begin
                delete;
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
          TotalCartoes.Value := 0;   // INCLUIDO PARA ZERAR EM 26/09/2019
          NumeroCartoes.Text := '0'; // INCLUIDO PARA ZERAR EM 26/09/2019

       end;
    end;
end;

procedure TBoxFinanceiroConciliacaoCartoes.BtnImportaClick(Sender: TObject);
var
 Arq : TextFile;
 texto : string;
 Pula : String;
 I : Integer;
 o : Integer;
 mData : String;
 mDia : String;
 mMes : String;
 mAno : String;
 function MV : String;
 var
 Monta : String;
 begin
  monta := '';
  inc(I);
  While Texto[I] > '' do //*
  begin
   If Texto[I]= ';' then //; troquei , por ;
   break;
   if (Texto[I] <> 'R') and (Texto[I] <> '$') and (Texto[I] <> '/') and (Texto[I] <> ' ') then //troquei - por /
    begin
     if (Texto[I] = '.') then
       monta := monta + ','
     else
       monta := monta + Texto[I];
    end;
    inc(I);
  end;
  result := monta;
 end;
begin
  if OpenDialog1.Execute then
  begin
    Screen.Cursor := crHourGlass;
    tblCartoes.Open;//a tabela onde quero por os dados excel
    AssignFile(Arq,OpenDialog1.FileName);
    Reset(Arq);
    o := 0;
    if not EOF(Arq) then
    repeat
      o := o + 1;
      ReadLn(Arq,Texto);
//      showmessage(texto);
      if o > 2 then
       begin
        With tblCartoes do
        begin
          if not (DataSourceCartoes.State in [dsInsert]) then
            tblCartoes.Insert;
          I := 0;
//CÓDIGO CENTRALIZADOR,CÓDIGO,VENCIMENTO,PRODUTO,LANÇAMENTO,PLANO DE VENDA,PARCELA,TOTAL DE PARCELAS,CARTÃO,AUTORIZAÇÃO,NÚMERO CV,TERMINAL,DATA DA VENDA,VALOR ORIGINAL,VALOR BRUTO,DESCONTOS,LÍQUIDO
          FieldByName('Codigo_estabelecimento').AsString :=  MV;//stg.Cells[0,numlinha];
          pula := MV;//CODIGO

 //         pula := MV;//VENCIMENTO
//          mData := MV;
          mData := MV;
    //      mDia := Substr
  //        mMes := MV;
//          mAno := MV;
         // mDATA := Substr(mData,7,2) + '/' + Substr(mData,5,2) + '/' + Substr(mData,1,4);
          mData := Substr(mData,1,2) + '/' + Substr(mData,3,2) + '/' + Substr(mData,5,4);
          if not (mdata.IsNullOrEmpty(mdata)) then
           FieldByName('Data_Pagamento').AsDateTime := StrToDate(mData);//StrToDate(stg.Cells[2,numlinha]);

          pula := MV; //vENCIMENTO ORIGINAL

          FieldByName('Cartao').AsString := Substr(MV,1,20);// Pula := MV; //cartao

          pula := MV; //lancamento
          pula := MV; //plano de venda
//          pula := MV; //parcela
          FieldByName('Parcela').AsString := Substr(MV,1,2); //parcela
          if Substr(FieldByName('Parcela').AsString,2,1) = 'd' then
             FieldByName('Parcela').AsString := '0' + Substr(FieldByName('Parcela').AsString,1,1);
          pula := MV;//total de parcelas
          pula := MV;//cartao
          pula := MV;//autorizacao
          FieldByName('Numero_CV').AsString := mv;//stg.Cells[16,numlinha];
          pula := MV; //terminal
          pula := MV; //data da venda
//          pula := MV; //numero do terminal
          pula := MV; //valor original
          FieldByName('Valor_bruto').AsString := mv;//StrToFloat(MV);//StrToCurr(stg.Cells[7,numlinha]);
//            mv2 := Substr(mv,2,(len(mv)-1));
          FieldByName('Taxa_tarifa').AsString := mv;//StrToFloat(MV);//stg.Cells[8,numlinha];
  //        if fieldByName('Taxa_tarifa').AsInteger < 0 then
//            FieldByName('Taxa_tarifa').AsString := mv * -1;
//          pula := MV; //parcela
          FieldByName('Valor_liquido').AsString := mv;//StrToFloat(MV);//stg.Cells[3,numlinha];
          if Substr(FieldByName('Cartao').AsString,1,5) <> 'Saldo' then
           if not (FieldByName('Numero_CV').IsNull) then
       //     if not (mdata.IsNullOrEmpty(mdata)) then // RETIRADO PARA AJUSTAR PARCELADO DIA 26.09.2019
             begin
              Post;
             end;
        end;
       end;
    until EOF(Arq);// ate o fim arquivo CSV
    Closefile(Arq);//fecha arquivo CSV
    Screen.Cursor := crDefault;
  end;
  with tblCartoes do
  begin
    Close;
    Open;
    First;
    while not eof do
    begin
      if FieldByName('Numero_CV').IsNull then
        begin
          tblCartoes.Delete;
        end;
        Next;
    end;
  end;
  wwDBGrid1.OnCellChanged := wwDBGrid1CellChanged;
end;


{ FUNCAO ATIVA ANTES DA ALTERACAO DO PORTAL DO GETNET - FUNCIONAVA PARA IMPORTAR O ARQUIVO ANTIGO - 18/11/2020
procedure TBoxFinanceiroConciliacaoCartoes.BtnImportaClick(Sender: TObject);
var
 Arq : TextFile;
 texto : string;
 Pula : String;
 I : Integer;
 o : Integer;
 mData : String;
 function MV : String;
 var
 Monta : String;
 begin
  monta := '';
  inc(I);
  While Texto[I] > '' do //*
  begin
   If Texto[I]= ';' then
   break;
   if (Texto[I] <> 'R') and (Texto[I] <> '$') and (Texto[I] <> '-') and (Texto[I] <> '.') and (Texto[I] <> ' ') then
    begin
     monta := monta + Texto[I];
    end;
    inc(I);
  end;
  result := monta;
 end;
begin
  if OpenDialog1.Execute then
  begin
    Screen.Cursor := crHourGlass;
    tblCartoes.Open;//a tabela onde quero por os dados excel
    AssignFile(Arq,OpenDialog1.FileName);
    Reset(Arq);
    o := 0;
    if not EOF(Arq) then
    repeat
      o := o + 1;
      ReadLn(Arq,Texto);
      if o > 10 then
       begin
        With tblCartoes do
        begin
          if not (DataSourceCartoes.State in [dsInsert]) then
            tblCartoes.Insert;
          I := 0;

          FieldByName('Codigo_estabelecimento').AsString :=  MV;//stg.Cells[0,numlinha];
          FieldByName('Cartao').AsString := Substr(MV,1,20);// Pula := MV; //cartao
          mData := MV;
          if not (mdata.IsNullOrEmpty(mdata)) then
           FieldByName('Data_Pagamento').AsDateTime := StrToDate(mData);//StrToDate(stg.Cells[2,numlinha]);
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //parcela
          FieldByName('Parcela').AsString := Substr(MV,1,2); //parcela
          if Substr(FieldByName('Parcela').AsString,2,1) = 'd' then
             FieldByName('Parcela').AsString := '0' + Substr(FieldByName('Parcela').AsString,1,1);
          pula := MV;//FieldByName('Valor_bruto').AsCurrency := StrToCurr(MV);//StrToCurr(stg.Cells[7,numlinha]);
          pula := MV;//FieldByName('Taxa_tarifa').AsCurrency := StrToCurr(MV);//stg.Cells[8,numlinha];
          pula := MV;//FieldByName('Valor_liquido').AsCurrency := StrToCurr(MV);//stg.Cells[3,numlinha];
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //parcela
          FieldByName('Numero_CV').AsString := mv;//stg.Cells[16,numlinha];
          pula := MV; //parcela
          pula := MV; //parcela
          pula := MV; //numero do terminal
          pula := MV; //valor total da venda
          FieldByName('Valor_bruto').AsString := mv;//StrToFloat(MV);//StrToCurr(stg.Cells[7,numlinha]);
          pula := MV; //parcela
          FieldByName('Taxa_tarifa').AsString := mv;//StrToFloat(MV);//stg.Cells[8,numlinha];
          pula := MV; //parcela
          FieldByName('Valor_liquido').AsString := mv;//StrToFloat(MV);//stg.Cells[3,numlinha];
          if not (FieldByName('Numero_CV').IsNull) then
       //     if not (mdata.IsNullOrEmpty(mdata)) then // RETIRADO PARA AJUSTAR PARCELADO DIA 26.09.2019
             begin
              Post;
             end;
        end;
       end;
    until EOF(Arq);// ate o fim arquivo CSV
    Closefile(Arq);//fecha arquivo CSV
    Screen.Cursor := crDefault;
  end;
  with tblCartoes do
  begin
    Close;
    Open;
    First;
    while not eof do
    begin
      if FieldByName('Numero_CV').IsNull then
        begin
          tblCartoes.Delete;
        end;
        Next;
    end;
  end;
  wwDBGrid1.OnCellChanged := wwDBGrid1CellChanged;
end;



 }
procedure TBoxFinanceiroConciliacaoCartoes.BtnImportaExit(Sender: TObject);
begin
   Data.SetFocus;
end;

procedure TBoxFinanceiroConciliacaoCartoes.RemoveLinhaStringGrid(linha: integer);
//var
	//x, y: integer;
begin
// for x:=linha to stg.RowCount - 2 do
  //for  y:=0 to stg.ColCount - 1 do
		//stg.Cells[y,x]:=stg.Cells[y,x + 1];
// stg.RowCount:=stg.RowCount - 1;
end;


procedure TBoxFinanceiroConciliacaoCartoes.tblCartoesAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroConciliacaoCartoes.wwDBGrid2DblClick(Sender: TObject);
begin
// showmessage('a');
   with tblCreceber do
    begin
     edit;
     if fieldbyname( 'receber' ).asString = 'S' then
       begin
        fieldbyname( 'receber' ).asString := 'N';
        TotalCartoes.value := TotalCartoes.Value - fieldByName('Valor').AsCurrency;
        NumeroCartoes.Text := IntToStr(StrToInt(NumeroCartoes.Text) - 1);
       end
     else
       begin
         FieldByName( 'receber' ).asString := 'S';
         TotalCartoes.Value := TotalCartoes.Value + fieldByName('Valor').AsCurrency;
         NumeroCartoes.Text := IntToStr(StrToInt(NumeroCartoes.Text) + 1);
       end;
     Post;
    end;

end;

procedure TBoxFinanceiroConciliacaoCartoes.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//Showmessage('b');
    TotalCartoes.Value := 0;
    NumeroCartoes.Text := '0';
end;

procedure TBoxFinanceiroConciliacaoCartoes.wwDBGrid1CellChanged2(
  Sender: TObject);
begin
  //  showmessage('ca');
   //
end;

procedure TBoxFinanceiroConciliacaoCartoes.wwDBGrid1CellChanged(
  Sender: TObject);
begin
//Showmessage('bb');

 if tblCartoes.FieldByName('Numero_CV').AsString <> null then
  if tblCartoes.FieldByName('Numero_CV').AsInteger > 1 then
  begin
    With tblCreceber do
    begin
//    showmessage(tblcartoes.FieldByName('Numero_CV').AsString);
//    showmessage('b13');
      Close;
      ParamByName('idNumeroCV').asInteger := tblcartoes.FieldByName('Numero_CV').AsInteger;
//      ParamByName('idNumeroCV').asInteger :=
  //      ifThen(tblCartoes.FieldByName('Numero_CV').AsString = null, tblCartoes.FieldByName('Numero_CV').AsInteger, 0);//Cast(Colaesce(tblCartoes.FieldByName('Numero_CV').AsString, '0') as integer);//StrToInt(Trim(tblcartoes.FieldByName('Numero_CV').AsString));
      //(cast(coalesce(c.numero_cv, '0') as integer) = :idNumeroCV)
      Open;
//          showmessage('b12');
    end;
//    showmessage('b1');
    With tblPessoas do
    begin
      Close;
      ParamByName('id').AsInteger := tblCreceber.FieldByName('id_clientes').AsInteger;
      Open;
    end;
  end;
end;

function TBoxFinanceiroConciliacaoCartoes.FormataCampo(campo: string; delimitador: char; coluna, linhaLista: integer; lista: TStringList; var temAspasInicial, achouAspasFinal: boolean): string;
BEGIN
{
var
	x, aux: integer;
	str: string;
	delimitadorOK, encontrou: Boolean;
begin
 if (not achouAspasFinal) then
  begin
	encontrou:=False;
  for x:=1 to Length(campo) do
    begin
     if(campo[x] = '"') then
     begin
      if (campo[x + 1] = ',') then
        begin
 	  			encontrou:=True;
  				Break;
        end;
     end;
    end;
  if (encontrou) then
    begin
	  	str:=copy(campo,1,x);
  		achouAspasFinal:=True;
 		  lista[linhaLista]:=copy(lista[linhaLista],Length(str) + 2,Length(lista[linhaLista]) - Length(str));
    end
  else
		str:=campo;
  end
 else
  begin
	x:=1;
	aux:=0;
	str:='';
	delimitadorOK:=False;
  while(x < Length(campo) + 1) and (aux < coluna) do
    begin
      if (campo[x] = '"') then
        delimitadorOK:=not delimitadorOK;
      if (campo[x] = delimitador) and (not delimitadorOK) then
        Inc(aux);
      Inc(x);
    end;
	delimitadorOK:=False;
  while (x < Length(campo) + 1) and ((campo[x] <> delimitador) or delimitadorOK) do
    begin
     if(campo[x] = '"') then
      begin
        temAspasInicial:=not temAspasInicial;
        achouAspasFinal:=not achouAspasFinal;
        delimitadorOK:=not delimitadorOK;
      end;
 	   str:=str + campo[x];
  		Inc(x);
    end;
  end;
 FormataCampo:=Trim(str);}
end;

procedure TBoxFinanceiroConciliacaoCartoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   tblCreceber.Close;
   tblCartoes.Close;
   tblPessoas.Close;
   tblBancos.Close;
end;

procedure TBoxFinanceiroConciliacaoCartoes.FormKeyPress(Sender: TObject;
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
  end
end;

procedure TBoxFinanceiroConciliacaoCartoes.FormShow(Sender: TObject);
begin
    tblCartoes.open;
//    showmessage( inttostr(tblCartoes.recordCount));
    if tblCartoes.RecordCount > 0 then
     wwDBGrid1.OnCellChanged := wwDBGrid1CellChanged
    else
     wwDBGrid1.OnCellChanged := wwdbGrid1CellChanged2;
//    tblCartoes.insert;
    Data.Date := DataAtual;
    Banco.Text := '24';
    Data.SetFocus;
end;

procedure TBoxFinanceiroConciliacaoCartoes.ImportaArquivoCSV(arquivo: string; delimitador: char; numColunas: integer);
BEGIN {
var
	listaCSV: TStringList;
	x, xAux, numLinha, numLinhaAux: integer;
	aspasIni, aspasFim: boolean;
	strTemp: string;
begin
 listaCSV:=TStringList.Create;
 try
	stg.ColCount:=numColunas;
	listaCSV.LoadFromFile(arquivo);

	numLinha:= 8;
 	while (numLinha <= listaCSV.Count - 1) do
 	begin
		stg.RowCount:=numLinha + 1;
		x:=0;
		xAux:=0;
		numLinhaAux:=numLinha;
    while (x <= stg.ColCount - 1) do
     begin
			strTemp:=FormataCampo(listaCSV[numLinha],delimitador,xAux,numLinha,listaCSV,aspasIni,aspasFim);
  //    if numlinha <10 then
//       showmessage(strTemp);
      if (stg.Cells[x,numLinhaAux] <> '') then
				strTemp:=stg.Cells[x,numLinhaAux] + #13#10 + strTemp;
      if(strTemp <> '') and (strTemp[1] = '"') and (strTemp[Length(strTemp)] = '"') then
				strTemp:=copy(strTemp,2,Length(strTemp) - 2);
			stg.Cells[x,numLinhaAux]:=strTemp;
      if((aspasIni) and (not aspasFim)) then
        begin
			  	xAux:=-1;
			  	Inc(numLinha);
        end
      else
        begin
          Inc(x);
          Inc(xAux);
          aspasIni:=False;
          aspasFim:=True;
        end;
     end;
		Inc(numLinha);
//    showmessage(inttostr(numlinha));
  end;


	numLinha:=0;
  while (numLinha <= stg.RowCount - 1) do
    begin
     if(stg.Cells[0,numLinha] = '') then
			RemoveLinhaStringGrid(numLinha)
     else
			Inc(numLinha);
    end;
 finally
	listaCSV.Free;
 end;}
end;

procedure TBoxFinanceiroConciliacaoCartoes.PreencheGrid;
BEGIN {
var
 numlinha : integer;
begin
 numlinha := 1;

 while (numLinha <= (stg.RowCount -1)) do
 begin
//  Showmessage(stg.Cells[16,numlinha]);    //a string esta em branco
  if len(AllTrim((stg.Cells[16,numlinha]))) = 0 then //não tem numero de cv então pula registro StrToInt
   begin
   inc(numLinha);
//   showmessage('vazio');
   end
  else
   begin
    with tblCartoes do
     begin
       Insert;
//  Showmessage('a');
       FieldByName('Codigo_estabelecimento').AsString :=  stg.Cells[0,numlinha];
//         Showmessage('a1');
//       FieldByName('Cartao').AsString :=
       FieldByName('Data_Pagamento').AsDateTime := StrToDate(stg.Cells[2,numlinha]);
//       FieldByName('Parcela').AsDateTime := stg.Cells[3,numlinha];
       FieldByName('Valor_bruto').AsCurrency := StrToCurr(stg.Cells[7,numlinha]);
       FieldByName('Taxa_tarifa').AsString := stg.Cells[8,numlinha];
//       FieldByName('Valor_liquido').AsCurrency := stg.Cells[3,numlinha];
       FieldByName('Numero_CV').AsString := stg.Cells[16,numlinha];
//         Showmessage('a2');
       Post;
     end;
    inc(numLinha);
   end;
 end;}
end;
end.

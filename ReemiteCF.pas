unit ReemiteCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet,
  PrnDOS, Printers, Spin, ACBrBase;


type
  TBoxReemiteCF = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    NF: TEdit;
    Label1: TLabel;
    BtnOk: TBitBtn;
    PrintDialog: TPrintDialog;
    EdFonte: TEdit;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblSada: TIBDataSet;
    tblSadaID_SADA: TIntegerField;
    tblSadaID_NOFISA: TIntegerField;
    tblSadaID_CONCESSIONARIA: TIntegerField;
    tblSadaNF: TIBStringField;
    tblSadaCODIGO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
    tblSadaQTDE: TSmallintField;
    tblSadaUNIDADE: TIBStringField;
    tblSadaCST: TIBStringField;
    tblSadaSUBST: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS: TIBBCDField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblSadaPOTENCIA: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
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
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaSAIDA: TDateField;
    tblNofisaHORA: TIBStringField;
    tblNofisaIE_SUBS: TIBStringField;
    tblNofisaDESC_PEC: TIBBCDField;
    tblNofisaDESC_OFI: TIBBCDField;
    tblNofisaBASE_ICMS: TIBBCDField;
    tblNofisaVAL_ICMS: TIBBCDField;
    tblNofisaBASE_ICM_S: TIBBCDField;
    tblNofisaVAL_ICMS_S: TIBBCDField;
    tblNofisaVAL_FRETE: TIBBCDField;
    tblNofisaVAL_SEGURO: TIBBCDField;
    tblNofisaVAL_OUTROS: TIBBCDField;
    tblNofisaVAL_IPI: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaISSQN: TIBBCDField;
    tblNofisaVAL_ISS: TIBBCDField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    tblNofisaPIS: TIBBCDField;
    tblNofisaCOFINS: TIBBCDField;
    tblNofisaCOD_TRANS: TIBStringField;
    tblNofisaFRETE_TIPO: TIBStringField;
    tblNofisaPLACA: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblFormas: TIBDataSet;
    tblFormasID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasFORMA_PAGAMENTO: TIBStringField;
    tblFormasCOEFICIENTE: TFMTBCDField;
    tblFormasPRAZO: TIBStringField;
    tblFormasVEICULOS: TIBStringField;
    tblFormasPECAS: TIBStringField;
    tblFormasPOSVENDA: TIBStringField;
    tblFormasCRECEBER: TIBStringField;
    tblFormasCPAGAR: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblSeda: TIBDataSet;
    tblSedaID_SEDA: TIntegerField;
    tblSedaID_CONCESSIONARIA: TIntegerField;
    tblSedaID_NOFI: TIntegerField;
    tblSedaNF: TIBStringField;
    tblSedaID_TMO: TIntegerField;
    tblSedaDESCRICAO_SERVICO: TIBStringField;
    tblSedaTEMPO: TIBBCDField;
    tblSedaPRECO: TIBBCDField;
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure NFKeyPress(Sender: TObject; var Key: Char);
    procedure EmiteCf;
    procedure ImprimeCF;
    function EmitirCupomFiscal(nf: String): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxReemiteCF: TBoxReemiteCF;
  Retorno : String;

implementation

uses RelatorioNotasFiscais, Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxReemiteCF.BtnOkClick(Sender: TObject);
begin
if EmitirCupomFiscal(nf.text) then
  EmiteCF
else
  Nf.SetFocus
end;

function TBoxReemiteCF.EmitirCupomFiscal(nf: String): Boolean;
begin
  with tblNofisa do
  begin
    Close;
    ParamByName('idNumero').AsInteger := StrToInt(Nf);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if RecordCount = 0 then
     begin
      showmessage('Cupom fiscal não localizado');
      Result := False;
     end
    else
      Result := True;
  end;
end;

procedure TBoxReemiteCF.EmiteCF;
begin
  with tblNofisafaturas do
  begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
  end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
  end;
  with tblPessoas do
  begin
    Close;
    ParamByName('idCliente').AsInteger :=
      tblNofisa.FieldByName('id_Clientes').AsInteger;
    Open;
  end;
  with tblSeda do
   begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
   end;
  with tblFormas do
  begin
    Close;
//    ParamByName('idFormasPagamento').AsInteger := tbl
    Open;
  end;
  case MessageDlg('Emitir Cupom fiscal?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
       If PrintDialog.Execute then
         begin
            ImprimeCF;
  end;
     end;
    end
end;

procedure TBoxReemiteCF.ImprimeCF;
var
//   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
//   Reset(ArquivoTexto); {Abre o arquivo texto}
//   Readln(ArquivoTexto,Texto); {Armazena a linha atual do arquivo na string Texto e salta para a próxima linha}
{with tblNofisa do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data.Date;
    Open;
    First;
    while not eof do
      begin
        tblPessoas.Close;
        tblPessoas.ParamByName('IdCliente').AsInteger :=
           FieldByName('Id_Clientes').AsInteger;
        tblPessoas.Open;
        if tblPessoas.RecordCount = 0 then
           Showmessage('Pessoa não localizada.');
        if FieldByName('Ent_Sai').AsString = 'E' then
        else
          linha := linha + '12.00';
        linha := linha + tblPessoas.FieldByName('Fone1').AsString;
        Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
    //    Next;
  //    end;
//   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
{
            compacta;
            cmpSay( 1 , 128 , ( fieldbyname( 'numero' ).asString ));

            if fieldbyname('ENT_SAI').asString = 'E' then
              cmpSay( 02, 99 , 'XX' )
            else
              cmpSay( 02 , 083, 'XX' );

            cmpsay( 6 , 003 , fieldbyname( 'descricao_codigo_fiscal' ).asString );
            cmpsay( 6 , 048 , fieldbyname( 'codigo_fiscal' ).asString );

            cmpsay( 9 , 003 , tblPessoas.fieldbyname( 'nome' ).asString + ' - ' + fieldbyname( 'id_clientes' ).asString );

            cmpsay( 9 , 093 , tblPessoas.fieldbyname( 'NUM_cpf' ).DisplayText );
            cmpsay( 9 , 124 , fieldbyname( 'emissao' ).asString );

            cmpsay( 11 , 003 , tblPessoas.fieldbyname( 'endereco' ).asString );
            cmpsay( 11 , 058 , tblPessoas.fieldbyname( 'bairro' ).asString );
            cmpsay( 11 , 102 , tblPessoas.fieldbyname( 'cep' ).DisplayText );
            cmpsay( 11 , 124, fieldbyname( 'saida' ).asString );

            cmpsay( 13 , 003 , tblPessoas.fieldbyname( 'cidade' ).asString );
            cmpsay( 13 , 057 , tblPessoas.fieldbyname( 'fone1' ).asString );
            cmpsay( 13 , 082 , tblPessoas.fieldbyname( 'Estado' ).asString );
            if tblPessoas.FieldByName('Cpf').AsString='CNPJ' then
              cmpsay( 13 , 089 , tblPessoas.fieldbyname( 'identidade' ).asString );
            cmpsay( 13 , 124, fieldbyname( 'hora' ).asString );
          end;

          with tblNofisaFaturas do
          begin
            first;
            if not eof then
            begin
              cmpsay( 16 , 003 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString ) );
              cmpsay( 16 , 017 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 16 , 030 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 16    , 046 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString  ));
              cmpsay( 16    , 060 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 16 , 073 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 16    , 089 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString  ));
              cmpsay( 16    , 103 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 16 , 116 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;

            if not eof then
            begin
              cmpsay( 17    , 003 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString  ));
              cmpsay( 17    , 017 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 17 , 030 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 17    , 046 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString ));
              cmpsay( 17    , 060 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 17 , 073 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 17    , 089 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString ));
              cmpsay( 17    , 103 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 17 , 116 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;

            if not eof then
            begin
              cmpsay( 18    , 003 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString  ));
              cmpsay( 18    , 017 , fieldbyname( 'vencimento' ).asString );
              cmpValsay(18 , 030 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 18    , 046 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString ));
              cmpsay( 18    , 060 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 18 , 073 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;
            next;
            if not eof then
            begin
              cmpsay( 18    , 089 , ( fieldbyname( 'fatura' ).asString));// + '-' + fieldbyname( 'parcela' ).asString ));
              cmpsay( 18    , 103 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 18 , 116 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

          end;

          // itens da nota

          linha := 22;

          with tblSada do
          begin
            first;
            while not eof do
            begin
             if FieldByName('Descricao').AsString = 'Motocicleta' then
               begin
                cmpsay(linha, 020, (FieldByName('Marca').AsString));
                cmpsay(linha, 030, ('Modelo:'));
                cmpSay(linha, 039, (FieldByName('Modelo').AsString));
                cmpsay(linha, 060, ('Cor:'));
                cmpSay(linha, 065, (FieldByName('Cor').AsString));
               end
             else
              begin
               cmpsay( linha , 002 , ( fieldbyname( 'CODIGO' ).asString) );
               cmpsay( linha , 020 , ( fieldbyname( 'descricao' ).asString ));
              end;

             if fieldbyname( 'qtde' ).asFloat > 0 then
              begin
                cmpsay(    linha , 076 , ( fieldbyname( 'cst' ).asString));
                cmpsay(    linha , 083 , ( fieldbyname( 'unidade' ).asString ));
                cmpValsay( linha , 081 , fieldbyname( 'qtde' ).asFloat, 5 , 0 ) ;
                cmpValSay( linha , 096 , fieldbyname( 'preco' ).asFloat , 8 , 2 ) ;
                cmpValSay( linha , 110 , fieldbyname( 'preco' ).asFloat*
                fieldbyname( 'qtde' ).asFloat, 8 , 2 ) ;
                cmpValSay( linha , 120 , fieldbyname( 'aliq_icms' ).asFloat,2,0 ) ;
              end;
              next;
              inc( linha );
              if FieldByName('Descricao').AsString = 'Motocicleta' then
               begin
                cmpsay(linha, 020, ('Chassi:'));
                cmpsay(linha, 028, (FieldByName('Chassi').AsString));
                cmpsay(linha, 050, ('Ano Fabricação:'));
                cmpSay(linha, 068, (FieldByName('Ano_Fabricacao').AsString));
                cmpsay(linha, 074, ('Ano Modelo:'));
                cmpSay(linha, 086, (FieldByName('Ano_Modelo').AsString));
                cmpsay(linha+1, 020, ('Renavam:'));
                cmpsay(linha+1, 029, (FieldByName('Renavam').AsString));
                cmpsay(linha+1, 041, ('Motor:'));
                cmpSay(linha+1, 048, (FieldByName('Motor').AsString));
                cmpsay(linha+1, 064, ('Potência:'));
                cmpSay(linha+1, 074, (FieldByName('Potencia').AsString));
                cmpsay(linha+2, 020, ('Combustível:'));
                cmpsay(linha+2, 034, (FieldByName('Combustivel').AsString));
               end

            end;
          with tblNofisa do
          begin
           if FieldByName('Desc_Pec').AsFloat > 0 then
            begin
             cmpSay (40, 012 , 'Desconto especial para esta compra');
             cmpvalSay (40, 110, FieldByName('Desc_Pec').AsCurrency,10,2);
            end;

            if FieldByName('Val_serv').AsFloat > 0 then
             begin
               with tblSeda do
                 First;
                 cmpSay(36,020, FieldByName('id_TMO').AsString);
                 cmpSay(36,027, FieldByName('Descricao_Servico').AsString);
                 cmpSay(36,060, FieldByName('Tempo').AsString);
                 cmpvalSay(36,070, FieldByName('Preco').AsCurrency,10,2);
                 cmpvalSay(36, 110, FieldByName('Val_Serv').AsCurrency,10,2);
                 linha := 1;
                 while not eof do
                  begin
                    cmpSay(36+linha,020, FieldByName('id_TMO').AsString);
                    cmpSay(36+linha,027, FieldByName('Descricao_Servico').AsString);
                    cmpSay(36+linha,060, FieldByName('Tempo').AsString);
                    cmpValSay(36+linha,070, FieldByName('Preco').AsCurrency,10,2);
                  end;

               cmpValSay (38, 096, FieldByName('ISSQN').AsCurrency,10,2);
               cmpValSay (38, 110, FieldByName('Val_Iss').AsCurrency,10,2);
             end;
            
            cmpSay (41, 012 , FieldByName('Obs').AsString); //inclui a observação

            if fieldbyname( 'val_icms' ).asFloat <> 0 then
            cmpSay( 46 , 012 , ( FloatToStrF( fieldbyname( 'base_icms' ).asFloat , ffNumber, 12 , 2 ) ) );

              cmpSay( 46 , 040 , ( FloatToStrF( fieldbyname( 'val_icms' ).asFloat , ffNumber, 10 , 2 )));


            if fieldbyname( 'val_icms_S' ).asFloat <> 0 then
            begin
                 cmpSay( 46 , 065 , ( FloatToStrF( fieldbyname( 'base_icms_s' ).asFloat , ffNumber, 12 , 2 ) ) );
                 cmpSay( 46 , 090 , ( FloatToStrF( fieldbyname( 'val_icms_s' ).asFloat , ffNumber, 12 , 2 ) ) );
            end;

            cmpValSay( 46 , 122, fieldbyname( 'TOT_prod' ).asFloat, 12 ,2 );


            cmpSay( 48 , 012 , ( FloatToStrF( fieldbyname( 'val_frete' ).asFloat, ffNumber, 12 ,2 ) ) );
            cmpSay( 48 , 040 , ( FloatToStrF( fieldbyname( 'val_seguro' ).asFloat , ffNumber,  12 , 2 )  ) );

            cmpValSay( 48 , 122 , fieldbyname( 'tot_nota' ).asFloat , 12 , 2 );
            if fieldByName('Cod_trans').AsString <> '' then
              begin
                with tblPessoas do
                begin
                  Close;
                  ParamByName('IdCliente').AsInteger := FieldByName('Cod_trans').AsInteger;
                  Open;
                end;
              end;

            if fieldbyname( 'Cod_trans' ).asString <> '' then
              cmpSay( 51 , 003 , tblPessoas.fieldbyname( 'Nome' ).asString )
            else
              cmpSay( 51 , 003 , 'O PROPRIO' );
            cmpSay( 51 , 080 , fieldbyname( 'Frete_tipo' ).asString );

            if fieldbyname( 'Cod_trans' ).asString <> '' then
            cmpSay( 51 , 112 , tblPessoas.fieldbyname( 'Num_Cpf' ).DisplayText );

            if fieldbyname( 'Cod_trans' ).asString <> '' then
            cmpSay( 53 , 003 , tblPessoas.fieldbyname( 'endereco' ).asString );

            if fieldbyname( 'Cod_trans' ).asString <> '' then
            cmpSay( 53 , 063 , tblPessoas.fieldbyname( 'cidade' ).asString );

            if fieldbyname( 'Cod_trans' ).asString <> '' then
            cmpSay( 53 , 110 , tblPessoas.fieldbyname( 'Estado' ).asString );
              cmpSay( 58 , 003 ,(  fieldbyname( 'Dados_ad01' ).asString ));
              cmpSay( 59 , 003 ,(  fieldbyname( 'Dados_ad02' ).asString ));
              cmpSay( 60 , 003 ,(  fieldbyname( 'Dados_ad03' ).asString ));
              cmpSay( 61 , 003 ,(  fieldbyname( 'Dados_ad04' ).asString ));
            cmpSay( 68 , 122 ,(  fieldbyname( 'numero' ).asString ));

          end;

       end;

       EndPage;  { Eject }
//       EndPrint;
//  end;
//end;
//  end;}
end;

procedure TBoxReemiteCF.FormShow(Sender: TObject);
begin
 NF.SetFocus;
end;

procedure TBoxReemiteCF.NFKeyPress(Sender: TObject; var Key: Char);
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

end.

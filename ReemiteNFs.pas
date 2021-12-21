unit ReemiteNFs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet,
  PrnDOS, Printers, Spin;


type
  TBoxReemiteNFs = class(TForm)
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    function  ThereDraft10cpi: Boolean;
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure NFKeyPress(Sender: TObject; var Key: Char);
    procedure EmiteNf;
    procedure ImprimeNF;
    procedure FecharDs;
    function EmitirNotaFiscal(nf: String): Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxReemiteNFs: TBoxReemiteNFs;
  Retorno : String;

implementation

uses RelatorioNotasFiscais, Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxReemiteNFs.BtnOkClick(Sender: TObject);
begin
//  with tblNofisa do
//  begin
//    Close;
 //   ParamByName('idNumero').AsInteger := StrToInt(Nf.Text);
///    ParamByName('idConcessionaria').AsInteger :=
 //     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
 //   Open;
 //   if RecordCount = 0 then
 //     showmessage('Nota fiscal não localizada')
//    else
if EmitirNotaFiscal(nf.text) then
  EmiteNF
else
  Nf.SetFocus
end;

function TBoxReemiteNFs.EmitirNotaFiscal(nf: String): Boolean;
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
      showmessage('Nota fiscal não localizada');
      Result := False;
     end
    else
      Result := True;
  end;
end;

procedure TBoxReemiteNFs.EmiteNF;
//var
//  ModoTexto: TPrnDOS;
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
  case MessageDlg('Emitir Nota fiscal?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
//      Retorno := Biblioteca.ImprimirNota(BoxDataNota.tblNofisa,
  //      BoxDataNota.tblNofisaFaturas, BoxDataNota.tblSada,
    //    BoxDataNota.tblPessoas, BoxDataNota.tblFormas);
        //NotaFiscal.TNotaFiscal.Imprime;
       If PrintDialog.Execute then
         begin
          //Verifica se a impressora possue a fonte Draft 10cpi
//          if Not ThereDraft10cpi then
  //          Exit;
            // Impressão da NF
            ImprimeNF;
     //Dados para teste
//     BoxNotaPreImpressa.
//     Quant     := SpinEdit1.Value;
 //    PrecoUnit := StrToFloat(EdPreun.Text);
  //   Desconto  := StrToFloat(EdDesconto.Text);

     //Exemplo em modo comprimido
//     with ModoTexto do begin
    //   Print; //Impressora selecionada em PrintDialog
  //     NewPage;
//       CmpSay( 1, 1,'PRODUTO/DESCRICAO                            QUANT.      VLR.UNIT.       DESCONTO          TOTAL');
       //            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 9999999.99  9999999999.99  9999999999.99  9999999999.99
       //            1...5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95.
    //      CmpSay(2,1,Edproduto.Text);
  //     CmpValSay(2,42,Quant,9,2);
//       CmpValSay(2,54,PrecoUnit,12,2);
      // CmpValSay(2,69,Desconto,12,2);
    //   CmpValSay(2,84,Total,12,2);
       //Agora imprime no modo normal
  //     CharSay(4,1,'BY: Paulo Cesar de Carvalho');
//       CharSay(5,1,'E-mail: pececarvalho@yahoo.com.br');
    //   EndPage;  { Eject }
  //     EndPrint;
  //   end;
  end;
//        NotaCabinas.Imprime;
     end;
    end
end;

procedure TBoxReemiteNfs.ImprimeNF;
var
ModoTexto: TPrnDOS;
//coldup: array[1..3] of integer;
linha:integer;

//obs:TStringList;
//codigoFiscal : TStringList;
begin

  with modotexto do
  begin
       Print; //Impressora selecionada em PrintDialog

       NewPage;

       begin
        with tblNoFisa do
          begin

            with tblPessoas do
            begin

              fieldbyname( 'cep' ).EditMask:= '########;0; ';
//              if FieldByName('PessoaJuridica').AsString = 'J' then
  //              fieldbyname( 'cgc_cpf' ).EditMask:= '##.###.###/####-##;0; '
    //          else
      //          fieldbyname( 'cgc_cpf' ).EditMask:= '###.###.###-##;0; ';
            end;

            with tblNoFisa do
            begin
       //       fieldbyname( 'cnpj_transportadora' ).EditMask :='##.###.###/####-##;0; ';
        //    end;

            compacta;
            cmpSay( 1 , 128 , ( fieldbyname( 'numero' ).asString ));

            if fieldbyname('ENT_SAI').asString = 'E' then
              cmpSay( 02, 99 , 'XX' )
            else
              cmpSay( 02 , 083, 'XX' );

              {
             with tblSada do
              begin
                first;
                codigofiscal := TStringList.Create();
                CodigoFiscal.Text := tblSadaCFOP.asString ;
                Next;
                while not eof do
                  begin
                    if POS(tblSadaCFOP.AsString, CodigoFiscal.Text) = 0 then
                      CodigoFiscal.Text := tblSadaCFOP.asString ;
                    Next;
                  end;
            for Linha := 0 to Obs.Count - 1 do
              cmpSay( 52+linha , 003 , obs.Strings[linha] );
  }


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
                cmpSay(linha, 038, (FieldByName('Modelo').AsString));
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
//                cmpsay(    linha , 062 , ( fieldbyname( 'posicao_fiscal' ).asString));
                cmpsay(    linha , 076 , ( fieldbyname( 'cst' ).asString));
                cmpsay(    linha , 083 , ( fieldbyname( 'unidade' ).asString ));
                cmpValsay( linha , 081 , fieldbyname( 'qtde' ).asFloat, 5 , 0 ) ;
                cmpValSay( linha , 096 , fieldbyname( 'preco' ).asFloat , 8 , 2 ) ;
                cmpValSay( linha , 110 , fieldbyname( 'preco' ).asFloat*
                fieldbyname( 'qtde' ).asFloat, 8 , 2 ) ;
                cmpValSay( linha , 120 , fieldbyname( 'aliq_icms' ).asFloat,2,0 ) ;
            //    cmpValSay( linha , 117 , fieldbyname( 'aliq_ipi' ).asFloat,2,0 );
            //    cmpValSay( linha , 120 , fieldbyname( 'valor_ipi' ).asFloat, 6 , 2 );
              end;
              next;
              inc( linha );
              if FieldByName('Descricao').AsString = 'Motocicleta' then
               begin
                cmpsay(linha, 020, ('Chassi:'));
                cmpsay(linha, 028, (FieldByName('Chassi').AsString));
                cmpsay(linha, 050, ('Ano Fabricação:'));
                cmpSay(linha, 066, (FieldByName('Ano_Fabricacao').AsString));
                cmpsay(linha+1, 020, ('Ano Modelo:'));
                cmpSay(linha+1, 033, (FieldByName('Ano_Modelo').AsString));
                cmpsay(linha+1, 040, ('Renavam:'));
                cmpsay(linha+1, 049, (FieldByName('Renavam').AsString));
                cmpsay(linha+1, 061, ('Motor:'));
                cmpSay(linha+1, 068, (FieldByName('Motor').AsString));
                cmpsay(linha+2, 020, ('Combustível:'));
                cmpsay(linha+2, 033, (FieldByName('Combustivel').AsString));
                cmpsay(linha+2, 050, ('Potência:'));
                cmpSay(linha+2, 060, (FieldByName('Potencia').AsString));
                cmpSay(linha+2, 068, 'CV');

               end

            end;

         //   if ( tblNofisa.fieldbyname( 'valor_retencao_pis_cofins' ).asFloat > 0 ) and
         //      ( tblNofisa.fieldbyname( 'planodepagamento' ).asInteger > 0 )
         ///   then
         //     begin
        //        inc( linha );
        //        cmpSay( linha , 013 , ( '(-) Retenção de PIS/Cofins :'));
        //        cmpValSay( linha , 045, tblNofisa.fieldbyname( 'valor_retencao_pis_cofins' ).asFloat, 10 , 2 );
       //       end;

        {    if tblNofisa.fieldbyname( 'reajuste_preco' ).asFloat > 0 then
            begin
              inc( linha );
              cmpSay( linha , 013 , ( '** Reajuste de preço de' ) );
              cmpValSay( linha , 040 , tblNofisa.fieldbyname( 'reajuste_preco' ).asFloat, 6 , 2 );
              cmpValSay( linha , 100 , fieldbyname( 'reajuste_preco' ).asFloat , 10 , 2 );
              cmpValSay( linha , 119 , fieldbyname( 'reajuste_preco_ipi' ).asFloat , 6 , 2 );
            end;
         }
          {  if tblNofisa.fieldbyname( 'despesas_financeiras' ).asFloat > 0 then
            begin
              inc( linha );
              cmpSay( linha , 013 , ( '** Despesas Financeiras de' ) );
              cmpValSay( linha , 040 , tblNofisa.fieldbyname( 'despesas_financeiras' ).asFloat, 6 , 2 );
              cmpValSay( linha , 100 , fieldbyname( 'despesas_financeiras' ).asFloat , 10 , 2 );
              cmpValSay( linha , 119 , fieldbyname( 'despesas_financeiras_ipi' ).asFloat , 6 , 2 );
            end;
          end;
           }
{          with tblNofisa do
          begin
            if fieldbyname( 'valor_funrural' ).asFloat > 0 then
            begin
              inc(linha);
              cmpSay( linha , 013, ( '** Valor do Funrural'));
              cmpValSay( linha , 103 , tblNofisa.fieldbyname( 'Valor_Funrural' ).asFloat, 10 , 2 );
            end;
          end;
            }
          with tblNofisa do
          begin
           if FieldByName('Desc_Pec').AsFloat > 0 then
            begin
             cmpSay (37, 012 , 'Desconto especial para esta compra');
             cmpvalSay (37, 110, FieldByName('Desc_Pec').AsCurrency,10,2);
            end;
           cmpSay (38, 012 , FieldByName('Obs').AsString); //inclui a observação
           if FieldByName('Val_serv').AsFloat > 0 then
             begin
               with tblSeda do
                begin
                 First;
                 cmpSay(40, 020, tblSeda.FieldByName('id_TMO').AsString);
                 cmpSay(40, 027, tblSeda.FieldByName('Descricao_Servico').AsString);
                 cmpSay(40, 060, tblSeda.FieldByName('Tempo').AsString);
                 cmpvalSay(40, 070, tblSeda.FieldByName('Preco').AsCurrency,10,2);
                 cmpvalSay(40, 110, tblNofisa.FieldByName('Val_Serv').AsCurrency,10,2);
                 linha := 0;
                 tblSeda.Next;
                 while not eof do
                  begin
                    inc(linha);
                    cmpSay(40+linha,020, tblSeda.FieldByName('id_TMO').AsString);
                    cmpSay(40+linha,027, tblSeda.FieldByName('Descricao_Servico').AsString);
                    cmpSay(40+linha,060, tblSeda.FieldByName('Tempo').AsString);
                    cmpValSay(40+linha,070, tblSeda.FieldByName('Preco').AsCurrency,10,2);
                    if linha = 2 then
                      begin
                       cmpValSay (42, 096, tblNofisa.FieldByName('ISSQN').AsCurrency,10,2);
                       cmpValSay (42, 110, tblNofisa.FieldByName('Val_Iss').AsCurrency,10,2);
                      end;
                    tblSeda.Next;
                  end;
                 if linha < 2 then
                  begin
                   cmpValSay (42, 096, tblNofisa.FieldByName('ISSQN').AsCurrency,10,2);
                   cmpValSay (42, 110, tblNofisa.FieldByName('Val_Iss').AsCurrency,10,2);
                  end;
                end;
             end;

            if fieldbyname( 'val_icms' ).asFloat <> 0 then
            cmpSay( 46 , 012 , ( FloatToStrF( fieldbyname( 'base_icms' ).asFloat , ffNumber, 12 , 2 ) ) );

    //        if fieldbyname( 'val_icms' ).asFloat = 0 then
//              cmpSay( 40 , 037 , ( fieldbyname( 'desc_icms' ).asString ) )
  //          else
              cmpSay( 46 , 040 , ( FloatToStrF( fieldbyname( 'val_icms' ).asFloat , ffNumber, 10 , 2 )));


            if fieldbyname( 'val_icms_S' ).asFloat <> 0 then
            begin
                 cmpSay( 46 , 065 , ( FloatToStrF( fieldbyname( 'base_icms_s' ).asFloat , ffNumber, 12 , 2 ) ) );
                 cmpSay( 46 , 090 , ( FloatToStrF( fieldbyname( 'val_icms_s' ).asFloat , ffNumber, 12 , 2 ) ) );
            end;

            cmpValSay( 46 , 122, fieldbyname( 'TOT_prod' ).asFloat, 12 ,2 );


            cmpSay( 48 , 012 , ( FloatToStrF( fieldbyname( 'val_frete' ).asFloat, ffNumber, 12 ,2 ) ) );
            cmpSay( 48 , 040 , ( FloatToStrF( fieldbyname( 'val_seguro' ).asFloat , ffNumber,  12 , 2 )  ) );
//            cmpSay( 42 , 090 , ( FloatToStrF( fieldbyname( 'val_do_ipi' ).asFloat , ffNumber,  12 , 2 )  ) );

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
       //     cmpValSay( 49 , 002 , fieldbyname( 'quantidade' ).asFloat , 6 , 2 );
     //       cmpSay( 49 , 015 , ( fieldbyname( 'volumes' ).asString   ) );
  ///          cmpSay( 49 , 050 , ( fieldbyname( 'marca' ).asString    )) ;
//            cmpValSay( 49, 100                                      , fieldbyname( 'peso_liquido' ).asFloat , 10 , 2 );
 //           cmpValSay( 49 , 116 , fieldbyname( 'peso_bruto' ).asFloat , 10 , 2 );
              cmpSay( 58 , 003 ,(  fieldbyname( 'Dados_ad01' ).asString ));
              cmpSay( 59 , 003 ,(  fieldbyname( 'Dados_ad02' ).asString ));
              cmpSay( 60 , 003 ,(  fieldbyname( 'Dados_ad03' ).asString ));
              cmpSay( 61 , 003 ,(  fieldbyname( 'Dados_ad04' ).asString ));

        //    cmpSay( 57 , 003 , 'OC: ' + fieldbyname( 'ordem_de_compra' ).asString );
//            cmpSay( 57 , 020 , 'Vendedor: ' + fieldbyname( 'representante' ).asString );
         //   cmpSay( 57 , 025 , 'Redespacho: ' + fieldbyname( 'redespacho' ).asString );

            cmpSay( 68 , 122 ,(  fieldbyname( 'numero' ).asString ));

          end;

       end;

       EndPage;  { Eject }
       EndPrint;

  end;
end;
  end;
end;

procedure TBoxReemiteNFs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxReemiteNFs := nil;
end;

procedure TBoxReemiteNFs.FormShow(Sender: TObject);
begin
 NF.SetFocus;
end;

procedure TBoxReemiteNFs.NFKeyPress(Sender: TObject; var Key: Char);
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

function TBoxReemiteNFs.ThereDraft10cpi: Boolean;
var
  LbxFontes : TListBox;
begin
  //Verifica se a impressora possue a fonte Draft 10cpi
  LbxFontes         := TListBox.Create(Self);
  LbxFontes.Visible := false;
  LbxFontes.Parent  := Self;
  LbxFontes.Items.Assign(Printer.Fonts);
  LbxFontes.Refresh;
  LbxFontes.Perform(LB_SELECTSTRING,0,LongInt(PChar(EdFonte.Text)));
//  if LbxFontes.ItemIndex < 0 then begin
///     Application.MessageBox('Esta impressora não possue fonte Draft 10cpi',
 //                           'Atenção',
 //                           MB_OK+MB_ICONEXCLAMATION);
 //    Result := false;
//   end
//  else
     Result := true;
end;

procedure TBoxReemiteNFs.FecharDs;
begin
  tblPessoas.Close;
  tblSeda.Close;
  tblSada.Close;
  tblNofisa.Close;
  tblNofisaFaturas.Close;
  tblFormas.Close;
end;
end.

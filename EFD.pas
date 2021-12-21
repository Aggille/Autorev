unit EFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit,
  DB, IBCustomDataSet;

type
  TBoxEFD = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    BtnConfirma: TBitBtn;
    Label2: TLabel;
    Data1: TJvDateEdit;
    Data2: TJvDateEdit;
    Label3: TLabel;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
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
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceNofi: TDataSource;
    tblNofi: TIBDataSet;
    tblNofiID_NOFI: TIntegerField;
    tblNofiID_CONCESSIONARIA: TIntegerField;
    tblNofiID_CLIENTES: TIntegerField;
    tblNofiID_CONHECIMENTO: TIntegerField;
    tblNofiNUMERO: TIBStringField;
    tblNofiSERIE: TIBStringField;
    tblNofiEMISSAO: TDateField;
    tblNofiCODIGO: TIBStringField;
    tblNofiORIGEM: TIBStringField;
    tblNofiENT_SAI: TIBStringField;
    tblNofiVENDEDOR: TIBStringField;
    tblNofiCOMISSAO: TIBBCDField;
    tblNofiSAIDA: TDateField;
    tblNofiHORA: TIBStringField;
    tblNofiCFOP: TIBStringField;
    tblNofiNAT_OP: TIBStringField;
    tblNofiIE_SUBS: TIBStringField;
    tblNofiDESC_PEC: TIBBCDField;
    tblNofiDESC_OFI: TIBBCDField;
    tblNofiICMS: TIBBCDField;
    tblNofiBASE_ICMS: TIBBCDField;
    tblNofiVAL_ICMS: TIBBCDField;
    tblNofiBASE_ICM_S: TIBBCDField;
    tblNofiVAL_ICMS_S: TIBBCDField;
    tblNofiVAL_FRETE: TIBBCDField;
    tblNofiVAL_SEGURO: TIBBCDField;
    tblNofiVAL_OUTROS: TIBBCDField;
    tblNofiVAL_IPI: TIBBCDField;
    tblNofiVAL_SERV: TIBBCDField;
    tblNofiISSQN: TIBBCDField;
    tblNofiVAL_ISS: TIBBCDField;
    tblNofiTOT_PROD: TIBBCDField;
    tblNofiTOT_NOTA: TIBBCDField;
    tblNofiPIS: TIBBCDField;
    tblNofiCOFINS: TIBBCDField;
    tblNofiCOD_TRANS: TIBStringField;
    tblNofiFRETE_TIPO: TIBStringField;
    tblNofiPLACA: TIBStringField;
    tblNofiDADOS_AD01: TIBStringField;
    tblNofiDADOS_AD02: TIBStringField;
    tblNofiDADOS_AD03: TIBStringField;
    tblNofiDADOS_AD04: TIBStringField;
    tblNofiOBS: TIBStringField;
    tblNofiQTDE_PROD: TIntegerField;
    tblNofiSTATUS: TIBStringField;
    tblNofiVAL_PIS: TIBBCDField;
    tblNofiVAL_COFINS: TIBBCDField;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
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
    DataSourcePessoas: TDataSource;
    procedure BtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure GravaEFD;
  end;

var
  BoxEFD: TBoxEFD;

implementation

uses Empresas, Efuncoes;

{$R *.dfm}

procedure TBoxEFD.BtnConfirmaClick(Sender: TObject);
begin
  GravaEFD;
  Showmessage('Exportação concluída.');
end;

procedure TBoxEFD.GravaEFD;
var
   i : Integer;
   Linha: String;
   NumCFOP : Integer;
   CFOP1 : String;
   CFOP2 : String;
   CFOP3 : String;
   CFOP4 : String;
   mCFOP : String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   AssignFile(ArquivoTexto,'C:\contabil\EFD.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
with tblNofisa do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data1.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not tblNofisa.eof do
      begin
        tblPessoas.Close;
        tblPessoas.ParamByName('IdCliente').AsInteger :=
          FieldByName('Id_Clientes').AsInteger;
        tblPessoas.Open;
        if len(FieldByName('Codigo_Fiscal').AsString) < 5 then
            NumCFOP := 1
        else
          if len(FieldByName('Codigo_Fiscal').AsString) < 10 then
             NumCFOP := 2
          else
   //         if len(FieldByName('Codigo_Fiscal').AsString) < 15 then  //linhas para descomentar quando já tiver sido importada as NFs até o dia 04/05/2010
              NumCFOP := 3;
//            else
  //             NumCFOP := 4;
        CFOP1 := Substr(FieldByName('Codigo_Fiscal').AsString,1,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,2,3);
        CFOP2 := Substr(FieldByName('Codigo_Fiscal').AsString,6,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,7,3);
        CFOP3 := Substr(FieldByName('Codigo_Fiscal').AsString,11,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,12,3);
        CFOP4 := Substr(FieldByName('Codigo_Fiscal').AsString,16,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,17,3);
        if FieldByName('SerieNF').AsString = 'e' then
         begin
          for i := 1 to NumCFOP do
           begin
            if i = 1 then
              mCFOP := CFOP1
            else
              if i = 2 then
                mCFOP := CFOP2

              else
                if i = 3 then
                  mCFOP := CFOP3
                else
                  mCFOP := CFOP4;
            linha := Alinha((FieldByName('Numero').AsString),6,1);
            linha := linha + '  '; //Serie
            if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 12571) then
             linha := linha + '306  ' //Débito
            else
             if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 13287) then
              linha := linha + '307  '
             else
              if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 15173) then
               linha := linha + '308  '
              else
               if mCFOP = '5.949' then
                linha := linha + '303  '
               else
                if mCFOP = '1.949' then
                 linha := linha + '302  '
                else
                 if mCFOP = '1.409' then
                  linha := linha + '302  '
                 else
                  if mCFOP = '1.102' then
                   linha := linha + '2001 '
                  else
                   linha := linha + '     ';  //Débito
            if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 12571) then
             linha := linha + '306  ' //Débito
            else
             if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 13287) then
              linha := linha + '307  ' //Débito
             else
              if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 15173) then
               linha := linha + '308  '
              else
               if (mCFOP = '5.933') or (mCFOP = '6.933') then  //PRESTACAO SERVICO
                linha := linha + '1022 '
               else
                if (mCFOP = '5.405') and (FieldByName('Origem').AsString = 'N') then
                 linha := linha + '1007 ' //Venda veiculo novo
                else
                 if (mCFOP = '6.404') and (FieldByName('Origem').AsString = 'N') then
                  linha := linha + '1007 ' //Venda veiculo novo
                 else
                  if (mCFOP = '5.405') and (FieldByName('Origem').AsString = 'U') then
                   linha := linha + '1008 ' //Venda veiculo usado
                  else
                   if (mCFOP = '5.656') or (mCFOP = '6.656') then
                    linha := linha + '1006 ' //Venda de óleo
                   else
                     if (mCFOP = '6.404') and (FieldByName('Origem').AsString = 'U') then
                      linha := linha + '1008 ' //Venda veiculo usado
                     else
                      if ((mCFOP = '5.405') and (FieldByName('Origem').AsString = 'P')) or
                       (mCFOP = '5.102') then
                       linha := linha + '1006 ' //Venda pecas
                      else
                       if ((mCFOP = '6.404') and (FieldByName('Origem').AsString = 'P')) or
                       (mCFOP = '6.102') then
                        linha := linha + '1006 ' //Venda pecas
                       else
                      if ((mCFOP = '5.405') and (FieldByName('Origem').AsString = 'O')) or
                       (mCFOP = '5.102') then
                       linha := linha + '1006 ' //Venda oficina-peças
                      else
                       if ((mCFOP = '6.404') and (FieldByName('Origem').AsString = 'O')) or
                       (mCFOP = '6.102') then
                        linha := linha + '1006 ' //Venda oficina-peças
                       else
                        if mCFOP = '5.409' then
                         linha := linha + '302  '
                        else
                         if mCFOP = '5.949' then
                          linha := linha + '302  '
                         else
                          if mCFOP = '1.949' then
                           linha := linha + '303  '
                          else
                           linha := linha + '     ';  //Débito
            linha := linha + Substr(DateToText(Data1.Date),5,4); //Ano
            linha := linha + Substr(DateToText(Data1.Date),3,2); //Mês
            linha := linha + Substr(DateToText(Data1.Date),1,2); //Dia
            if right(mCFOP,3)='933' then  //PRESTACAO SERVICO
              linha := linha + Blinha(  StringReplace( FloatToStrF( (FieldByName('Val_Serv').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT
            else
              if (right(mCFOP,3) = '404') or(right(mCFOP,3) = '405') or (right(mCFOP,3) = '656') then //ICMS SUBST TRIB
                begin
                 linha := linha +
                  Blinha(StringReplace( FloatToStrF( (FieldByName('Tot_Prod').AsFloat -
                   FieldByName('Base_ICMS').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1)
                end
              else
                if (right(mCFOP,3) = '409') or (right(mCFOP,3) = '949') or
                   (right(mCFOP,3) = '405') or (right(mCFOP,3) = '656') or
                   (mCFOP = '1.102') then //Outros
                   linha := linha + Blinha(StringReplace( FloatToStrF( FieldByName('Tot_Prod').AsFloat
                    , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1)
                else
                   begin
                     if FieldByName('Origem').AsString = 'U' then//PARA VEICULOS USADOS
                       linha := linha + Blinha(StringReplace( FloatToStrF ( FieldByName('Tot_Nota').AsFloat
                        , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT --> ERA TOT_NOTA
                     else
                       linha := linha + Blinha(StringReplace( FloatToStrF ( FieldByName('Base_ICMS').AsFloat
                      , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT --> ERA TOT_NOTA
                   end;

            linha := linha + mCFOP; //CFOP

            if (right(mCFOP,3) = '409') or (right(mCFOP,3) = '933') or
               (right(mCFOP,3) = '404') or (right(mCFOP,3) = '405') or
               (right(mCFOP,3) = '656') then
              begin
                linha := linha + '           0.00'; //BC_ICMS
                linha := linha + ' 0.00'; //ALIQ_ICMS
                linha := linha + '         0.00'; //VLR_ICMS
              end
            else
              begin
                linha := linha + '  ';
                linha := linha + Blinha(StringReplace(FloatToStrF(FieldByName('Base_ICMS').AsFloat
                  , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //BC_ICMS
                if tblPessoas.FieldByName('Estado').AsString = 'RS' then
                 linha := linha + '17.00' //ALIQ_ICMS
                else
                 linha := linha + '12.00';

                linha := linha + Blinha(StringReplace (FloatToStrF ( FieldByName('Val_ICMS').AsFloat
                  , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1);//VLR_ICMS
//                linha := linha + '   ';

              end;
            if (right(mCFOP,3) = '949') or (mCFOP = '1.102') or (mCFOP = '5.102') then //VERIFICAR
              if (mCFOP = '5.102') and (FieldByName('Origem').AsString = 'V') then
                linha := linha + Blinha(StringReplace(FloatToStrF ( (FieldByName('Tot_Nota').AsFloat -
                  FieldByName('Base_ICMS').AsFloat)
                   , ffNumber, 16, 2), ',','.',[rfReplaceAll]),13,1)//ISENT_ICMS
              else
                if mCFOP = '5.102' then
                  linha := linha + '0000000000.00' //ISENT_ICMS
                else
                  linha := linha + Blinha(StringReplace(FloatToStrF( (FieldByName('Tot_Prod').AsFloat)
                   , ffNumber, 16, 2), ',','.',[rfReplaceAll]),13,1)//ISENT_ICMS
            else
              linha := linha + '0000000000.00'; //ISENT_ICMS
            //*****OUTRAS ICMS
            if (right(mCFOP,3) = '933') or (right(mCFOP,3) = '404') or
               (right(mCFOP,3) = '405') or (right(mCFOP,3) = '409') or
               (right(mCFOP,3) = '656') then
               if (right(mCFOP,3) = '933') then
                 linha := linha +
                  Blinha(StringReplace( FloatToStrF((FieldByName('Val_Serv').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1)//OUTRA_ICMS
               else
                  linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Tot_Prod').AsFloat -
                  FieldByName('Base_ICMS').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1) //OUTRA_ICMS
            else
               linha := linha + '0000000000.00'; //OUTRA_ICMS
            //******
            linha := linha + '  '; //"D=")  //OBS
            linha := linha + '     ';
            linha := linha + '   '; //"/C=")   //OBS
            linha := linha + '     ';
            linha := linha + '     ';
            linha := linha + tblPessoas.FieldByName('Estado').AsString;
            linha := linha + '0000000000.00';     //BC_IPI
            linha := linha + '0000000000.00';    //VLR_IPI
            linha := linha + '0000000000.00';   //ISENT_IPI
            linha := linha + '0000000000.00';  // OUTRA_IPI
            linha := linha + '   '; //PAIS  --> BRA
            linha := linha + '0000000000.00';  //DED_ISS
            if right(mCFOP,3) = '933' then
              begin
//               linha := linha + '   '; //BC_ISS
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('Val_Serv').AsFloat)
                 , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1);//BC_ISS
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('ISSQN').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),5,1);//aliq_Iss
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('Val_iss').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1);//vlr_Iss
              end
           else
              begin
                linha := linha + '         0.00';  //BC_ISS
                linha := linha + ' 0.00';  //ALIQ_ISS
                linha := linha + '         0.00';  //VLR_ISS
              end;
{           if ((left(mCFOP,1) = '1') or(left(mCFOP,1) = '2') or
              (left(mCFOP,1) = '3')) then
                linha := linha +
       FWRITE(ARQ, STRZERO(VAL(CODIGO)+60000,5))  //FORNECEDOR-CLIENTE
     ELSE
       FWRITE(ARQ, STRZERO(VAL(CODIGO)+10000,5))  //FORNECEDOR-CLIENTE
     ENDIF}
            linha := linha + '00000'; //CODIGO FORNECEDOR
            linha := linha + '0000000000.00'; //BC_SUBST
            linha := linha + '0000000000.00'; //ICMS_SUBST
            linha := linha + '0000000000.00';  //DIFERIDO
      //      if len(FieldByName('Numero').AsString) < 6 then
    //          linha := linha + '0'+ FieldByName('Numero').AsString //NUMEROF
  //          else
//              linha := linha + FieldByName('Numero').AsString; //NUMEROF
            linha := linha +  StrZero(FieldByName('Numero').AsInteger,6,0); //NUMEROF
            linha := linha + '     '; //UF_ORIG
            linha := linha + '   ';  //DIEF
            linha := linha + '0000000000.00'; //FUNRURAL
            linha := linha + '0000000000.00'; //DESP_ACESS
            linha := linha + '01';  //MODELO
            linha := linha + 'N';  //EXCL_SERV
            linha := linha + 'N';  //SITUACAO
            linha := linha + '   ';  //NR_MAQUINA
            linha := linha + ' '; //CIF_FOB
            linha := linha + 'N'; //PE
            if ((Substr(mCFOP,1,1) = '1') or (Substr(mCFOP,1,1) = '2') or
              (Substr(mCFOP,1,1) = '3')) then
              begin
                linha := linha + Substr(DateToText(Data1.Date),5,4); //Ano
                linha := linha + Substr(DateToText(Data1.Date),3,2); //Mês
                linha := linha + Substr(DateToText(Data1.Date),1,2); //Dia
              end
           else
              linha := linha +'        ';  //DATA_ENTR
           linha := linha + 'NF '; //ESPECIE
           linha := linha +  'N';  //D_C_SUBST
           linha := linha + '0000000000.00';  //ACRESC_FIN
           linha := linha + ' '; //TP_LCTO
       // INICIO CNPJ/CPF PREENCHIDO  linha := linha + '              ';  //CGC CNPJ CPF
           if tblPessoas.FieldByName('CPF').AsString = 'CNPJ' then
            begin
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,2); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,4,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,8,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,12,4); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,17,2); //14
            end
           else
            begin
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,5,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,9,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,13,2); //14
             linha := linha + '   ';
            end;
           linha := linha + '       '; //CCUSTO
           linha := linha + '              ';  //INSCR_MUN
           if (Substr(mCFOP,1,1) = '6') then
            linha := linha + 'S'  //ARQMAG
           else
            linha := linha + 'N';  //ARQMAG
           linha := linha + 'P';  //EMISSPROP
           Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
          end;
         end;
        Next;
      end;
  end;
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
end;

end.


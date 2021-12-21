unit OperacoesComprasNovosImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, Buttons, DB, DBClient, msxmldom, XMLDoc,
  ComCtrls, ExtCtrls, ACBrNFe, IBCustomDataSet, Mask, DBCtrls, IBQuery, pcnConversao, pcnConversaoNFe,
  JvExMask, JvToolEdit, ACBrBase, ACBrDFe;

type
  TBoxComprasNovosImportacao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    BtnImporta: TBitBtn;
    Memo: TMemo;
    tblNofi: TIBDataSet;
    DataSourceNofi: TDataSource;
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
    Label1: TLabel;
    Label3: TLabel;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    IBQuery1: TIBQuery;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    DataSourcePessoas: TDataSource;
    IBQuery2: TIBQuery;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_IPI: TIBBCDField;
    tblNfDaMODELO: TIBStringField;
    tblNfDaANO_FABRICACAO: TIBStringField;
    tblNfDaANO_MODELO: TIBStringField;
    tblNfDaCOR: TIBStringField;
    tblNfDaMOTOR: TIBStringField;
    tblNfDaCOMBUSTIVEL: TIBStringField;
    tblNfDaMARCA: TIBStringField;
    tblNfDaPOTENCIA: TIBStringField;
    tblNfDaRENAVAM: TIBStringField;
    tblNfDaPROD_NUMERO: TIntegerField;
    tblNfDaCST: TIBStringField;
    DataSourceNfda: TDataSource;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosNOTA_ENT: TIBStringField;
    tblVeiculosDATA_ENT: TDateField;
    tblVeiculosFONE: TIBStringField;
    tblVeiculosCONSIG: TIBStringField;
    tblVeiculosCUSTO: TIBBCDField;
    tblVeiculosCUSTO_ICMS: TIBBCDField;
    tblVeiculosPRECO: TIBBCDField;
    tblVeiculosDATA_SAI: TDateField;
    tblVeiculosNF_SAIDA: TIBStringField;
    tblVeiculosVENDA: TIBStringField;
    tblVeiculosMOTOR: TIBStringField;
    tblVeiculosFINANC_PRO: TIBStringField;
    tblVeiculosSTATUS: TIBStringField;
    tblVeiculosRESERVADA: TDateField;
    tblVeiculosFOTO: TIBStringField;
    tblVeiculosRESERVADA_POR: TIBStringField;
    tblVeiculosESTOQUE: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    DataSourceVeiculos: TDataSource;
    tblCPagar: TIBDataSet;
    tblCPagarID_CPAGAR: TIntegerField;
    tblCPagarID_CONCESSIONARIA: TIntegerField;
    tblCPagarID_CLIENTES: TIntegerField;
    tblCPagarDOCUMENTO: TIBStringField;
    tblCPagarNFISCAL: TIBStringField;
    tblCPagarCONTA: TIBStringField;
    tblCPagarVENCIMENTO: TDateField;
    tblCPagarVALOR: TIBBCDField;
    tblCPagarEMISSAO: TDateField;
    tblCPagarPAGAMENTO: TDateField;
    tblCPagarVALOR_PAGO: TIBBCDField;
    tblCPagarBANCO: TIBStringField;
    tblCPagarSTATUS: TIBStringField;
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    DataSourceCPagar: TDataSource;
    BtnConfirma: TBitBtn;
    tblModelos: TIBDataSet;
    tblModelosID_MODVEIC: TIntegerField;
    tblModelosMARCA: TIBStringField;
    tblModelosMODELO: TIBStringField;
    tblModelosCILINDROS: TIntegerField;
    tblModelosCILINDRADAS: TIntegerField;
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosRENAVAM: TIBStringField;
    tblModelosCLASSIF_FISCAL: TIBStringField;
    tblModelosPPS: TIBBCDField;
    tblModelosPPS_ABRACY: TIBBCDField;
    tblModelosPRECO_VENDA: TIBBCDField;
    tblModelosCST: TIBStringField;
    tblModelosVEICULO_NOVO: TIBStringField;
    tblModelosHP: TIBStringField;
    DataSourceModelosVeiculos: TDataSource;
    NumeroNF: TEdit;
    IBQuery3: TIBQuery;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    Emissao: TJvDateEdit;
    tblVeiculosNCM: TIBStringField;
    tblNofiBASE_ICMS: TFMTBCDField;
    tblNofiVAL_ICMS: TFMTBCDField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaICMS_SUBST: TIBBCDField;
    tblNfDaID_PECA: TIntegerField;
    tblNfDaVLR_FRETE: TFMTBCDField;
    tblNfDaVLR_SEGURO: TFMTBCDField;
    ACBrNFe1: TACBrNFe;
    tblCPagarHISTORICO: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    tblVeiculosCODIGO: TIBStringField;
    tblNfDaVBC_STRET: TIBBCDField;
    tblNfDaPST: TIBBCDField;
    tblNfDaVICMS_STRET: TIBBCDField;
    tblNfDaPMVAST: TIBBCDField;
    tblNfDaPRED_BCST: TIBBCDField;
    tblNfDaVBC_ST: TIBBCDField;
    tblNfDaPICMS_ST: TIBBCDField;
    tblNfDaVICMS_ST: TIBBCDField;
    tblVeiculosVBC_STRET: TIBBCDField;
    tblVeiculosPST: TIBBCDField;
    tblVeiculosVICMS_STRET: TIBBCDField;
    tblVeiculosPRED_BCST: TIBBCDField;
    tblVeiculosVBC_ST: TIBBCDField;
    tblVeiculosPICMS_ST: TIBBCDField;
    tblVeiculosVICMS_ST: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImportaClick(Sender: TObject);
    procedure FecharDS;
    procedure tblNofiAfterCancel(DataSet: TDataSet);
    procedure tblNofiAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idNofi : Integer;
    idFornecedor : Integer;
    idModeloVeiculo : Integer;
    ModeloVeiculo : String;
    idConcessionaria : Integer;
    idCidade : String;
  end;

var
  BoxComprasNovosImportacao: TBoxComprasNovosImportacao;

implementation

uses Empresas, FDB, Biblioteca, Efuncoes;

{$R *.dfm}

procedure TBoxComprasNovosImportacao.BtnImportaClick(Sender: TObject);
var
  CNPJ : String;
begin
  ACbrNfe1.NotasFiscais.Clear;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
  if OpenDialog1.Execute then
    ACbrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
//  if acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat = 100 then
   with acbrnfe1 do
   begin
//     configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
     //webservices.Consulta.NFeChave := notasfiscais.Items[0].NFe.procNfe.chNFe;
//     configuracoes.webservices.UF := notasfiscais.items[0].nfe.Emit.EnderEmit.UF;
     memo.lines.clear;
     memo.lines.add( 'consultando...');
     memo.lines.add( 'Estado de origem: ' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
//     consultar;
//     webservices.consulta.executar;
     memo.lines.add( 'Status: ' + InttoStr(acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat));//inttostr( webservices.consulta.cStat ));
     memo.lines.add( 'Situação: ' + acbrnfe1.notasfiscais.items[0].nfe.procNFe.xMotivo);
//     memo.lines.add( 'Dados :' + webservices.consulta.DadosMsg );
     memo.lines.add( 'Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
//     memo.lines.add( 'Protocolo da consulta ' + webservices.consulta.Protocolo );

//Verificar se o destinatario do XML é a concessionaria logada. se não for localiza qual é fornece idconcessionaria
     if BoxEmpresas.CNPJ = NotasFiscais.Items[0].nfe.dest.CNPJCPF then
       begin
         idConcessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         idCidade := BoxEmpresas.Cidade;
       end
     else
       begin
//       Showmessage('Esta nota fiscal não pertence à esta concessionária.');
         IBQuery3.Close;
         IBQuery3.PAramByName('IdCNPJ').AsString := NotasFiscais.Items[0].nfe.dest.CNPJCPF;
         IBQuery3.Open;
//         showmessage(NotasFiscais.Items[0].nfe.dest.CNPJCPF);
         if IBQuery3.RecordCount = 0 then
           begin
            Showmessage('Concessionaria inexistente.');
            idConcessionaria := 0;
            idCidade := '';
            abort;
           end
         else
           begin
            idConcessionaria := IBQuery3.FieldByName('Id_Concessionaria').AsInteger;
            idCidade := IBQuery3.FieldByName('Cidade').AsString;
           end
       end;
     //Procurar id do fornecedor e cadastrar ele se não existir.
     CNPJ := NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
     with tblPessoas do
     begin
       Close;
       ParamByName('idCNPJ').AsString := ColocaPontoseBarrasCNPJ(CNPJ);
       Open;
       if RecordCount = 0 then
        begin
           Showmessage('Fornecedor não cadastrado.'+#13+'Efetuando cadastro.');
           {Pega um sequence novo para o fornecedore}
           IBQuery2.Open;
           IdFornecedor := IBQuery2.FieldByName('id_Clientes').AsInteger;
           IBQuery2.Close;
           Insert;
           FieldByName('Id_Clientes').AsInteger := IdFornecedor;
           FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Nome').AsString :=
             NotasFiscais.Items[0].NFe.Emit.xNome;
           FieldByName('CPF').AsString := 'CNPJ';
           FieldByName('Num_CPF').AsString := CNPJ;
           FieldByName('Endereco').AsString :=
             NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr + NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;;
           FieldByName('bairro').AsString :=
             NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
           FieldByName('Cidade').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
           FieldByName('Codigo_Municipio').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
           FieldByName('Estado').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
           FieldByName('CEP').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
           FieldByName('Fornecedor').AsString := 'T';
           FieldByName('Identidade').AsString := NotasFiscais.Items[0].NFe.Emit.IE;
           FieldByName('Pai').AsString := 'Não declarado';
           FieldByName('Mae').AsString := 'Não declarado';
           FieldByName('CoEndereco').AsString := FieldByName('Endereco').AsString;
           FieldByName('CoBairro').AsString := FieldByName('Bairro').AsString;
           FieldByName('CoCidade').AsString := FieldByName('Cidade').AsString;
           FieldByName('CoCEP').AsString := FieldByName('CEP').AsString;
           FieldByName('CoEstado').AsString := FieldByName('Estado').AsString;
           FDB1.AtualizaDataAtual;
           FieldByName('Cadastro').AsDateTime := DataAtual;
           Post;
        end
       else
         idFornecedor := FieldByName('Id_Clientes').AsInteger;
     end;
     //Verificar se o destinatario do XML é a concessionaria logada.
//     if BoxEmpresas.CNPJ <> NotasFiscais.Items[0].nfe.dest.CNPJCPF then
//       Showmessage('Esta nota fiscal não pertence à esta concessionária.')
//     else
     //Verificar qual ambiente foi gerada
     if NotasFiscais.Items[0].nfe.Ide.tpAmb = taHomologacao then
       Showmessage('Nota fiscal homologada em ambiente de teste.')
     else
      if acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat <> 100 then //webservices.consulta.cStat <> 100 then  //Verifica se o XML foi aceito na SEFAZ.
       if acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat = 999 then //webservices.consulta.cStat = 999 then
         Showmessage('Erro não catalogado.'+#13+'Tente novamente.')
       else
         Showmessage('Arquivo XML com problemas.')
      else
       //verificar se a nota fiscal já foi importada.
       begin
         with tblNofi do
         begin
           Close;
           ParamByName('idNumero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
           ParamByName('idprotocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
           Open;
           if recordCount <> 0 then
             Showmessage('Nota fiscal já importada.')
           else
            begin
             NumeroNF.text := InttoStr(NotasFiscais.Items[0].NFe.Ide.nNF);
             Emissao.Date := NotasFiscais.Items[0].NFe.Ide.dEmi;
             BtnConfirma.Enabled := True;
            end;
         end;
       end;
   end;
end;

procedure TBoxComprasNovosImportacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACBrNFe1.Free;
  FecharDs;
  Action :=caFree;
  BoxComprasNovosImportacao := nil;
end;

procedure TBoxComprasNovosImportacao.FormKeyPress(Sender: TObject;
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
procedure TBoxComprasNovosImportacao.FormShow(Sender: TObject);
begin
  BtnConfirma.Enabled := False;
end;

procedure TBoxComprasNovosImportacao.tblNofiAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBtransaction.RollbackRetaining;
end;

procedure TBoxComprasNovosImportacao.tblNofiAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasNovosImportacao.BtnConfirmaClick(Sender: TObject);
var
//  CNPJ : String;
  i: Integer;
  total : extended;
  TotalProd : extended;
  ValorPIS : Extended;
  ValorCOFINS : Extended;
  preco : extended;
begin
  Total := 0;
  TotalProd := 0;
  ValorPIS := 0;
  ValorCOFINS := 0;
  with ACBrNFe1 do
    begin
        try

          //Gravar a nota fiscal
          with tblNofi do
          begin
            Insert;
            {Pega um sequence novo para a NF}
            IBQuery1.Open;
            IdNofi := IBQuery1.FieldByName('id_nofi').AsInteger;
            IBQuery1.Close;
            FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
            FieldByName('id_Nofi').AsInteger := IdNofi;
            FieldByName('id_Clientes').AsInteger := IdFornecedor;
            FieldByName('id_conhecimento').AsInteger := 1;
            FieldByName('Numero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
            FieldByName('Emissao').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;
            FieldByName('Nat_Op').AsString := Substr(NotasFiscais.Items[0].NFe.Ide.natOp,1,40);
            FieldByName('Ent_Sai').AsString := 'E';
            FieldByName('Protocolo_Consulta').AsString := webservices.consulta.Protocolo;
            FieldByName('Protocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
            FieldByName('XML').AsString := NotasFiscais.Items[0].xml;
            FieldByName('Chave').AsString := NotasFiscais.Items[0].NFe.procNFe.chNFe;
            FieldByName('Origem').AsString := 'N';
          end;
          //Gravar dados da Nota - Dados_NFE
          with tblNFDa do
          begin
             Open;
             for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
            begin
             //Localizar modelo
              with tblModelos do
              begin
               if (NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD) = '' then
                begin
                 showmessage('off road');
                 Close;
                 SelectSql.Clear;
                 SelectSql.Text := 'select * from MODVEIC where VEICULO_NOVO = ' +
                   '''' + 'T' + '''' +
                   'and Modelo = :idModelo ';// +
//                   'ano_fabricacao = :idAnoFabricacao and ano_modelo = :idAnoModelo';
                 ParamByName('IdModelo').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
//                 ParamByName('IdAnoFabricacao').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoFab;
//                 ParamByName('IdAnoModelo').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoMod;
                 Open;
                end
               else
                begin
                 Close;
                 SelectSql.Clear;
                 SelectSql.Text := 'Select * from MODVEIC where VEICULO_NOVO = ' +
                   '''' + 'T' + '''' +
                   'and Renavam = :idRenavam and ' +
                   'ano_fabricacao = :idAnoFabricacao and ano_modelo = :idAnoModelo';
//                 ParamByName('IdRenavam').AsString := Copy(StrZero(StrToInt(NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD),6,0),1,6)+ '         ';
// showmessage(Copy(StrZero(StrToInt(NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD),6,0),1,6));
// showmessage(IntTOSTR(length(Copy(StrZero(StrToInt(NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD),6,0),1,6))));
                 ParamByName('IdRenavam').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD;
                 ParamByName('IdAnoFabricacao').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoFab;
                 ParamByName('IdAnoModelo').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoMod;
                 Open;
                end;
                if recordCount = 0 then
                 begin
                   showmessage('Modelo de veículo não cadastrado.');
                   abort;
                 end;
                 ModeloVeiculo := FieldByName('Modelo').AsString;
                 IdModeloVeiculo := FieldByName('Id_ModVeic').AsInteger;
              end;
             Insert;
             FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//               StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             FieldByName('Id_Conhecimento').AsInteger := 1;
             FieldByName('Id_Nofi').AsInteger := IdNofi;
             FieldByName('NF').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
             FieldByName('ITEM').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.chassi;
             FieldByName('QTDE').AsString := '1';
             FieldByName('CST').AsString := '060';
             FieldByName('vlr_frete').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vFrete;
             FieldByName('vlr_seguro').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vSeg;
             FieldByName('VLR_UNIT').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vProd;
             FieldByName('Modelo').AsString := ModeloVeiculo;
             FieldByName('Ano_fabricacao').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoFab;
             FieldByName('Ano_modelo').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoMod;
             FieldByName('Cor').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.xCor;
             FieldByName('Motor').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.nMotor;
             if NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb = '16' then
               FieldByName('Combustivel').AsString := 'GAS/ALC';
             if NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb = '02' then
               FieldByName('Combustivel').AsString := 'GASOLINA'; //NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb;
             FieldByName('Marca').AsString := 'YAMAHA';
             FieldByName('Potencia').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.pot;
             FieldByName('Renavam').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMod;
             FieldByName('Prod_Numero').AsString := '1';
             FieldByName('CFOP').AsString := '2404';//NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
                 //acrescido em função ICMS_ST em vigor 01/01/2019
                //Campos para atacado
            fieldByName('vBC_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBCST;
            fieldByName('pST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
            fieldByName('vICMS_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
              //Campos para consumidor final
            fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
            FieldByName('vBC_ST').AsCurrency := NotasFiscais.Items[i].nfe.det.items[i].imposto.icms.vBC;
            FieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[i].nfe.det.items[i].imposto.icms.pICMS;
            FieldByName('vICMS_ST').AsCurrency := NotasFiscais.Items[i].nfe.det.items[i].imposto.icms.vICMS;
//            fieldByName('vBC_Efet').AsCurrency := NotasFiscais.Items[o].Nfe.Det.Items[i].Imposto.ICMS.vBCEfet;
//            fieldByName('pICMS_Efet').AsCurrency := NotasFiscais.Items[o].Nfe.Det.Items[i].Imposto.ICMS.pICMSEfet;
//            fieldByName('vICMS_Efet').AsCurrency := NotasFiscais.Items[o].Nfe.Det.Items[i].Imposto.ICMS.vBCSTRet;
//             showmessage(fieldByname('pred_bcst').Asstring);
             Post;
            end;
          end;
          //Gravar Contas a Pagar
          with tblCPagar do
          begin
            Open;
            for i := 0 to (NotasFiscais.Items[0].NFe.Cobr.Dup.Count)-1 do
             begin
              Insert;
              FieldByName('Id_Clientes').AsInteger := IdFornecedor;
              FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
              FieldByName('Documento').AsString := IntToStr(NotasFiscais.Items[0].NFe.Ide.nNF) + '-' +
                                                   (Substr(NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup,3,1));
              FieldByName('NFiscal').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
              FieldByName('Id_forma_Pagamento').AsString := '2';
              FieldByName('Vencimento').AsDateTime := NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
              FieldByName('Valor').AsCurrency := NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
              FieldByName('Emissao').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;
              FieldByName('Historico').AsString := 'Compra Veíc.0km ref.NF.' +
                 IntToStr(NotasFiscais.Items[0].NFe.Ide.nNF);
              FieldByName('Status').AsString := 'Processado';
              Post;
             end;
          end;
          //Gravar Veículos
          with tblVeiculos do
          begin
            Open;
            for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
             begin
             //Localizar modelo
              with tblModelos do
               begin
               if (NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD) = '' then
                begin
                 Close;
                 ParamByName('IdModelo').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
                 Open;
                end
               else
                begin
                 Close;
                 ParamByName('IdRenavam').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMOD;
                 ParamByName('IdAnoFabricacao').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoFab;
                 ParamByName('IdAnoModelo').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoMod;
                 Open;
                end;
                if recordCount = 0 then
                 begin
                   showmessage('Modelo de veículo não cadastrado.');
                   abort;
                 end;
                 ModeloVeiculo := FieldByName('Modelo').AsString;
                 IdModeloVeiculo := FieldByName('Id_ModVeic').AsInteger;
                 Preco := FieldByName('Preco_Venda').AsCurrency;
               end;
              Insert;
              FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
              FieldByName('Status').AsString := 'EM TRÂNSITO';
              FieldByName('Modelo').AsString := ModeloVeiculo;
              FieldByName('Id_modelo_veiculo').AsInteger := IdModeloVeiculo;
              FieldByName('Ano_fabricacao').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoFab;
              FieldByName('Ano_modelo').AsInteger := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.anoMod;
              FieldByName('Cor').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.xCor;
              FieldByName('Motor').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.nMotor;
             if NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb = '16' then
               FieldByName('Combustivel').AsString := 'GAS/ALC';
             if NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb = '02' then
               FieldByName('Combustivel').AsString := 'GASOLINA'; //NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb;
//              FieldByName('Combustivel').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.tpComb;
              FieldByName('Marca').AsString := 'YAMAHA';
              FieldByName('HP').AsString := tblModelos.FieldByName('HP').AsString;
              FieldByName('NCM').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.NCM;
              //NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.pot;
              FieldByName('Renavam').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.cMod;
              FieldByName('CST').AsString := '060';
              FieldByName('Origem').AsString := 'N';
              FieldByName('Consig').AsString := 'N';
              FieldByName('Venda').AsString := 'N';
              FieldByName('Nota_ent').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;;
              FieldByName('Data_ent').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;;
              FieldByName('Id_Fornecedor').AsInteger := IdFornecedor;
              FieldByName('Estoque').AsString := IdCidade;//BoxEmpresas.Cidade;
              FieldByName('Preco').AsCurrency := Preco;
              FieldByName('Chassi').AsString :=
                NotasFiscais.Items[0].NFe.Det.Items[i].Prod.veicProd.chassi;
              FieldByName('Custo').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vProd +
                NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST +
                NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.vPIS +
                NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.vCOFINS +
                NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vFrete +
                NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vSeg +
                NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
              FieldByName('Custo_ICMS').AsCurrency := FieldByName('Custo').AsCurrency;
              TotalProd := TotalProd + NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vProd;
              ValorPIS := ValorPIS + NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.vPIS;
              ValorCOFINS := ValorCOFINS + NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINSST.vCOFINS;
              Total := Total + FieldByName('Custo').AsCurrency;
                 //acrescido em função ICMS_ST em vigor 01/01/2019
                //Campos para atacado
              fieldByName('vBC_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBCST;
              fieldByName('pST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
              fieldByName('vICMS_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
              //Campos para consumidor final
              fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
              fieldByName('vICMS_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMS;
              fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
              fieldByName('vBC_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBC;

              Post;
             end;
          end;
          with tblNofi do
          begin
            FieldByName('Qtde_Prod').AsInteger := NotasFiscais.Items[0].NFe.Det.Count;
            FieldByName('Status').AsString := 'Aberto';
            FieldByName('Val_ICMS_S').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
            FieldByName('Val_PIS').AsCurrency := valorPIS;
            FieldByName('Val_COFINS').AsCurrency := ValorCOFINS;
            FieldByName('CFOP').AsString := '2405';
            FieldByName('Val_Frete').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
            FieldByName('Val_seguro').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
            FieldByName('Val_outros').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro +
              NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
            FieldByName('Frete_Tipo').AsString := modFreteToStr(NotasFiscais.Items[0].Nfe.Transp.modFrete);
            FieldByName('Val_IPI').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;                         
            FieldByName('Tot_Prod').AsCurrency := TotalProd;
            FieldByName('Tot_Nota').AsCurrency := Total;
    //        FieldByName('Val_PIS').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
      //      FieldByName('Val_COFINS').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
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
    end;
    Memo.Lines.Clear;
    Showmessage('Importação concluída.');
    BtnConfirma.Enabled := False;
    BtnImporta.SetFocus;
end;

procedure TBoxComprasNovosImportacao.FecharDs;
begin
  tblNofi.Close;
end;
end.

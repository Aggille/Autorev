unit RelatorioMeusClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB,
  IBCustomDataSet, Wwdbigrd, Wwdbgrid, DBClient, Provider;

type
  TBoxMeusClientes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    DataSourcePessoas: TDataSource;
    DataSetProvider1: TDataSetProvider;
    cdsPessoas: TClientDataSet;
    cdsPessoasID_CLIENTES: TIntegerField;
    cdsPessoasNASCIMENTO: TDateField;
    DBGrid1: TDBGrid;
    tblPessoasNOME: TIBStringField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    cdsPessoasFONE1: TWideStringField;
    cdsPessoasFONE2: TWideStringField;
    cdsPessoasEMAIL: TWideStringField;
    cdsPessoasENDERECO: TWideStringField;
    cdsPessoasBAIRRO: TWideStringField;
    cdsPessoasCIDADE: TWideStringField;
    cdsPessoasESTADO: TWideStringField;
    cdsPessoasCEP: TWideStringField;
    cdsPessoasCADASTRO: TDateField;
    cdsPessoasID_CONCESSIONARIA: TIntegerField;
    cdsPessoasCODIGO: TWideStringField;
    cdsPessoasIDENTIDADE: TWideStringField;
    cdsPessoasCPF: TWideStringField;
    cdsPessoasNUM_CPF: TWideStringField;
    cdsPessoasPAI: TWideStringField;
    cdsPessoasMAE: TWideStringField;
    cdsPessoasDESCONTO: TBCDField;
    cdsPessoasFONE3: TWideStringField;
    cdsPessoasCLIENTE: TWideStringField;
    cdsPessoasFORNECEDOR: TWideStringField;
    cdsPessoasTRANSPORTADORA: TWideStringField;
    cdsPessoasMECANICO: TWideStringField;
    cdsPessoasVENDEDOR: TWideStringField;
    cdsPessoasCONTA: TWideStringField;
    cdsPessoasCOMISSAO: TBCDField;
    cdsPessoasCOENDERECO: TWideStringField;
    cdsPessoasCOBAIRRO: TWideStringField;
    cdsPessoasCOCIDADE: TWideStringField;
    cdsPessoasCOESTADO: TWideStringField;
    cdsPessoasCOCEP: TWideStringField;
    cdsPessoasSPC: TWideStringField;
    cdsPessoasREG_SPC: TWideStringField;
    cdsPessoasEMPRESA: TWideStringField;
    cdsPessoasADMISSAO: TDateField;
    cdsPessoasSALARIO: TBCDField;
    cdsPessoasEMPR_ENDERECO: TWideStringField;
    cdsPessoasEMPR_BAIRRO: TWideStringField;
    cdsPessoasEMPR_CIDADE: TWideStringField;
    cdsPessoasEMPR_ESTADO: TWideStringField;
    cdsPessoasEMPR_CEP: TWideStringField;
    cdsPessoasEMPR_FONE: TWideStringField;
    cdsPessoasREF_NOME1: TWideStringField;
    cdsPessoasREF_FONE1: TWideStringField;
    cdsPessoasREF_NOME2: TWideStringField;
    cdsPessoasREF_FONE2: TWideStringField;
    cdsPessoasREF_COML1: TWideStringField;
    cdsPessoasREF_COML_FONE1: TWideStringField;
    cdsPessoasREF_COML2: TWideStringField;
    cdsPessoasREF_COML_FONE2: TWideStringField;
    cdsPessoasREF_BANC: TWideStringField;
    cdsPessoasREF_AG_BANC: TWideStringField;
    cdsPessoasREF_CTA_BANC: TWideStringField;
    cdsPessoasFOTO: TWideStringField;
    cdsPessoasFINANCEIRA: TWideStringField;
    cdsPessoasFABRICANTE: TWideStringField;
    cdsPessoasCODIGO_MUNICIPIO: TWideStringField;
    cdsPessoasNOME_VENDEDOR: TWideStringField;
    cdsPessoasCODIGOSGS: TIntegerField;
    cdsPessoasVENDEDOR_YNOVA: TWideStringField;
    cdsPessoasNOME: TWideStringField;
    cdsPessoasFATURA_COM_DEBITOS: TWideStringField;
    cdsPessoasNUMERO: TWideStringField;
    cdsPessoasCOMPLEMENTO: TWideStringField;
    cdsPessoasRETENCAO_ISS: TWideStringField;
    cdsPessoasCONSUMIDOR: TWideStringField;
    cdsPessoasIM: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxMeusClientes: TBoxMeusClientes;

implementation

uses Empresas;

{$R *.dfm}

procedure TBoxMeusClientes.DBGrid1TitleClick(Column: TColumn);
begin
    cdsPessoas.IndexFieldNames := Column.FieldName;
   cdsPessoas.First;
end;

procedure TBoxMeusClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataSourcePessoas.Dataset.Close;
  Action :=caFree;
  BoxMeusClientes := nil;
end;

procedure TBoxMeusClientes.FormShow(Sender: TObject);
begin
  tblPessoas.Close;
  tblPessoas.ParamByName('NomeVendedor').AsString := BoxEmpresas.UsuarioLogado;
  DataSourcePessoas.Dataset.Open;
  cdsPessoas.IndexFieldNames := 'Nome';
  cdsPessoas.Open;
end;

end.


unit Empresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, IBSQL, StdCtrls, DBCtrls,
  IBCustomDataSet, IBQuery, ComCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  TBoxEmpresas = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    ID_ConcessionariaEmUso: TEdit;
    ListBox1: TListBox;
    DataSource1: TDataSource;
    DataSourceConcessionaria: TDataSource;
    DataSource3: TDataSource;
    Label1: TLabel;
    BtnOK: TBitBtn;
    BtnCancelar: TBitBtn;
    ConcessionariaEmUso: TEdit;
    DataSource4: TDataSource;
    Aliquota_ICMS2: TEdit;
    Aliquota_ISS: TEdit;
    Aliquota_ICMS1: TCurrencyEdit;
    NumeroEmpresa: TEdit;
    ConcessionariaEndereco: TEdit;
    ConcessionariaEstado: TEdit;
    ConcessionariaCidade: TEdit;
    ConcessionariaFantasia: TEdit;
    ConcessionariaNome: TEdit;
    Despachante: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOKClick(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
    Empresa:String;
    IE : String;
    IM : String;
    CNPJ : String;
    CodigoConcessionaria : String;
    CEP : String;
    Numero : String;
    Complemento : String;
    Bairro : String;
    CodigoMunicipio : String;
    CNAE : String;
    Fantasia : String;
    Fone : String;
    Estado : String;
    Cidade : String;
    Endereco : String;
    Host : String;
    Port : String;
    Pass : String;
    Usuario : String;
    UsuarioLogado : String;
    idUsuarioLogado : Integer;
    idBancoConcessionaria : Integer;
    Certificado : String;
    Logo : String;
    Logo_Prefeitura:String;
    Dividir_NF_Garantia : Boolean;
    Dividir_NF_Servico : Boolean;
    Feira : Boolean;
    Endereco_Feira : String;
//    Despachante : String;
    FIPE : Boolean;
    Obrigar_ICMS_ST_NFE : Boolean;
  end;

var
  BoxEmpresas: TBoxEmpresas;
    DescontoPadraoPecas : String;
    JurosAtraso : String;
    DescontoAdiantamento : String;
    SobrePreco : String;
    DataAtual : TDateTime;


implementation

uses FDB, Login, Menu, Senha;

{$R *.dfm}

procedure TBoxEmpresas.BtnCancelarClick(Sender: TObject);
begin
//  Application.Terminate;
  Close;
end;

procedure TBoxEmpresas.BtnOKClick(Sender: TObject);
begin
  if DataSource1.DataSet.FieldByName('Trocar_Senha').AsString = 'T' then
   begin
//    BoxEmpresas.Free;
    BoxEmpresas.Close;
    Application.CreateForm(TBoxSenha, BoxSenha);
    BoxSenha.ShowModal;
//    Application.Terminate;
   end
  else
   begin
     BoxEmpresas.Close;
     BoxMenu.ShowModal;
   end;
end;

procedure TBoxEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxEmpresas := nil;
end;

procedure TBoxEmpresas.FormShow(Sender: TObject);
begin
  DataSource4.Dataset.Open;
  SobrePreco :=
    FDB1.IBDatasetParametros.FieldByName('Sobre_Preco_Pecas').AsString;
  DescontoPadraoPecas :=
    FDB1.IBDataSetParametros.FieldByName('Desconto_Padrao_Pecas').AsString;
  JurosAtraso :=
    FDB1.IBDataSetParametros.FieldByName('Juros_atraso').AsString;
  DescontoAdiantamento :=
    FDB1.IBDataSetParametros.FieldByName('Desconto_adiantamento').AsString;
  Fdb1.IBQuery1.Open;
  DataAtual := Fdb1.IBQuery1.FieldByName('DataAtual').AsDateTime;
  Fdb1.IBQuery1.Close;
  DataSource4.Dataset.Close;
  ListBox1.SetFocus;
  ID_ConcessionariaEmUso.Visible := False;
  ConcessionariaEmUso.Visible := False;
  Aliquota_ISS.Visible := False;
  Aliquota_ICMS1.Visible := False;
  Aliquota_ICMS2.Visible := False;
  NumeroEmpresa.Visible := False;
  DataSource1.DataSet.Open;   {Login}
  DataSourceConcessionaria.DataSet.Open;  {Concessionaria}
  DataSource3.DataSet.Open;  {Usuario Concessionaria}
  Datasource3.Dataset.First;
  While (not DataSource3.Dataset.Eof) do
    begin
       if DataSource3.DataSet.FieldByName('ID_USUARIOS').AsInteger =
       Fdb1.IBDataSetLoginID_Usuarios.AsInteger then
       begin
         DataSourceConcessionaria.Dataset.First;
         while (not DataSourceConcessionaria.DataSet.Eof) do
          begin
            if DataSource3.Dataset.FieldByName('ID_CONCESSIONARIA').AsInteger =
             DataSourceConcessionaria.DataSet.FieldByName('ID_CONCESSIONARIA').AsInteger then
             begin
              ListBox1.Items.AddObject((DataSourceConcessionaria.Dataset.FieldByName('EMPRESA').AsString),
                Pointer (DataSourceConcessionaria.DataSet.FieldByName('ID_CONCESSIONARIA').AsInteger));
             end;
             DataSourceConcessionaria.DataSet.Next;
          end;
           ListBox1.ItemIndex := 0;
      end;
      DataSource3.Dataset.Next;
    end;
   ID_ConcessionariaEmUso.Text := IntToStr(Integer(ListBox1.Items.Objects
     [ListBox1.ItemIndex]));
   DataSourceConcessionaria.Dataset.First;
   While (not DataSourceConcessionaria.DataSet.Eof) do
     Begin
       If ID_ConcessionariaEmUso.Text = DataSourceConcessionaria.DataSet.FieldByName('ID_CONCESSIONARIA').Text then
         Begin
           UsuarioLogado := DataSource1.Dataset.FieldByName('Usuario').Text;
           idUsuarioLogado := DataSource1.Dataset.FieldByName('Id_Usuarios').AsInteger;
           IdBancoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Id_Banco_Concessionaria').AsInteger;
           ConcessionariaEmUso.Text :=  DataSourceConcessionaria.DataSet.FieldByName('EMPRESA').Text;
           Aliquota_ISS.Text := DataSourceConcessionaria.Dataset.FieldByName('Aliquota_ISS').Text;
           Aliquota_ICms1.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS1').Text;
           Aliquota_ICMS2.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS2').Text;
           NumeroEmpresa.Text := DataSourceConcessionaria.DataSet.FieldByName('Codigo_Empresa_JB').Text;
           ConcessionariaCidade.Text := DataSourceConcessionaria.Dataset.FieldByName('Cidade').Text;
           ConcessionariaEstado.Text := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           ConcessionariaEndereco.Text := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           ConcessionariaFantasia.Text := DataSourceConcessionaria.Dataset.FieldByName('Fantasia').TExt;
           ConcessionariaNome.Text := DataSourceConcessionaria.Dataset.FieldByName('Empresa').TExt;
           CNPJ := DataSourceConcessionaria.Dataset.FieldByName('CNPJ').TExt;
           CodigoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Cod_Conces').TExt;
           IM   := DataSourceConcessionaria.Dataset.FieldByName('IM').TExt;
           IE   := DataSourceConcessionaria.Dataset.FieldByName('IE').TExt;
           Numero :=DataSourceConcessionaria.Dataset.FieldByName('Numero').TExt;
           Complemento := DataSourceConcessionaria.Dataset.FieldByName('Complemento').TExt;
           Bairro := DataSourceConcessionaria.Dataset.FieldByName('Bairro').TExt;
           CodigoMunicipio := DataSourceConcessionaria.Dataset.FieldByName('Codigo_Municipio').TExt;
           CNAE := DataSourceConcessionaria.Dataset.FieldByName('CNAE').TExt;
           Fantasia := DataSourceConcessionaria.Dataset.FieldByName('Fantasia').TExt;
           Empresa := DataSourceConcessionaria.Dataset.FieldByName('Empresa').TExt;
           Fone := DataSourceConcessionaria.Dataset.FieldByName('Telefone').TExt;
           Cidade := DataSourceConcessionaria.Dataset.FieldByName('Cidade').TExt;
           Estado := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           Endereco := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           CEP :=DataSourceConcessionaria.Dataset.FieldByName('CEP').TExt;
           Host := DataSourceConcessionaria.Dataset.FieldByName('Host').TExt;
           Port := DataSourceConcessionaria.Dataset.FieldByName('Port').TExt;
           Usuario := DataSourceConcessionaria.Dataset.FieldByName('Usuario').TExt;
           Pass := DataSourceConcessionaria.Dataset.FieldByName('Pass').TExt;
           Certificado := DataSourceConcessionaria.Dataset.FieldByName('Certificado').Text;
           Logo := DataSourceConcessionaria.Dataset.FieldByName('logo').Text;
           Logo_Prefeitura := DataSourceConcessionaria.Dataset.FieldByName('logo_prefeitura').Text;
           Dividir_NF_Garantia := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Garantia').AsBoolean;
           Dividir_NF_Servico := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Servico').AsBoolean;
           Feira := False;
           Feira := DataSourceConcessionaria.Dataset.FieldByName('Feira').AsBoolean;
           Endereco_Feira := DataSourceConcessionaria.Dataset.FieldByName('Endereco_Feira').Text;
           Despachante.Text := DataSourceConcessionaria.Dataset.FieldByName('Despachante').Text;
           Fipe := DataSourceConcessionaria.Dataset.FieldByName('FIPE').AsBoolean;
           Obrigar_ICMS_ST_NFE := DataSourceConcessionaria.Dataset.FieldByName('Obrigar_ICMS_ST_NFE').AsBoolean;
           BtnOk.SetFocus;
           Exit;
         End;
         DataSourceConcessionaria.DataSet.Next;
     End;
End;

procedure TBoxEmpresas.ListBox1Click(Sender: TObject);
begin
   ID_ConcessionariaEmUso.Text := IntToStr(Integer(ListBox1.Items.Objects
     [ListBox1.ItemIndex]));
   DataSourceConcessionaria.Dataset.First;
   while (not DataSourceConcessionaria.DataSet.Eof) do
     begin
       if ID_ConcessionariaEmUso.Text = DataSourceConcessionaria.DataSet.FieldByName('ID_CONCESSIONARIA').Text then
         begin
           UsuarioLogado := DataSource1.Dataset.FieldByName('Usuario').Text;
           idUsuarioLogado := DataSource1.Dataset.FieldByName('Id_Usuarios').AsInteger;
           IdBancoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Id_Banco_Concessionaria').AsInteger;
           ConcessionariaEmUso.Text :=  DataSourceConcessionaria.DataSet.FieldByName('EMPRESA').Text;
           Aliquota_ISS.Text := DataSourceConcessionaria.Dataset.FieldByName('Aliquota_ISS').Text;
           Aliquota_ICms1.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS1').Text;
           Aliquota_ICMS2.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS2').Text;
           NumeroEmpresa.Text := DataSourceConcessionaria.DataSet.FieldByName('Codigo_Empresa_JB').Text;
           ConcessionariaCidade.Text := DataSourceConcessionaria.Dataset.FieldByName('Cidade').Text;
           ConcessionariaEstado.Text := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           ConcessionariaEndereco.Text := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           ConcessionariaFantasia.Text := DataSourceConcessionaria.Dataset.FieldByName('Fantasia').TExt;
           ConcessionariaNome.Text := DataSourceConcessionaria.Dataset.FieldByName('Empresa').TExt;           
           CNPJ := DataSourceConcessionaria.Dataset.FieldByName('CNPJ').TExt;
           CodigoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Cod_Conces').TExt;
           IM   := DataSourceConcessionaria.Dataset.FieldByName('IM').TExt;
           IE   := DataSourceConcessionaria.Dataset.FieldByName('IE').TExt;
           Numero :=DataSourceConcessionaria.Dataset.FieldByName('Numero').TExt;
           Complemento := DataSourceConcessionaria.Dataset.FieldByName('Complemento').TExt;
           Bairro := DataSourceConcessionaria.Dataset.FieldByName('Bairro').TExt;
           CodigoMunicipio := DataSourceConcessionaria.Dataset.FieldByName('Codigo_Municipio').TExt;
           CNAE := DataSourceConcessionaria.Dataset.FieldByName('CNAE').TExt;
           Fantasia := DataSourceConcessionaria.Dataset.FieldByName('Fantasia').TExt;
           Empresa  := DataSourceConcessionaria.Dataset.FieldByName('Empresa').TExt;
           Fone := DataSourceConcessionaria.Dataset.FieldByName('Telefone').TExt;
           Cidade := DataSourceConcessionaria.Dataset.FieldByName('Cidade').TExt;
           Estado := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           Endereco := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           CEP :=DataSourceConcessionaria.Dataset.FieldByName('CEP').TExt;
           Host := DataSourceConcessionaria.Dataset.FieldByName('Host').TExt;
           Port := DataSourceConcessionaria.Dataset.FieldByName('Port').TExt;
           Usuario := DataSourceConcessionaria.Dataset.FieldByName('Usuario').TExt;
           Pass := DataSourceConcessionaria.Dataset.FieldByName('Pass').TExt;
           Certificado := DataSourceConcessionaria.Dataset.FieldByName('Certificado').Text;
           Logo := DataSourceConcessionaria.Dataset.FieldByName('logo').Text;
           Logo_Prefeitura := DataSourceConcessionaria.Dataset.FieldByName('logo_prefeitura').Text;
           Dividir_NF_Garantia := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Garantia').AsBoolean;
           Dividir_NF_Servico := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Servico').AsBoolean;
           Feira := False;
           Feira := DataSourceConcessionaria.Dataset.FieldByName('Feira').AsBoolean;
           Endereco_Feira := DataSourceConcessionaria.Dataset.FieldByName('Endereco_Feira').Text;
           Despachante.Text := DataSourceConcessionaria.Dataset.FieldByName('Despachante').Text;
           Fipe := DataSourceConcessionaria.Dataset.FieldByName('FIPE').AsBoolean;
           Obrigar_ICMS_ST_NFE := DataSourceConcessionaria.Dataset.FieldByName('Obrigar_ICMS_ST_NFE').AsBoolean;
           Exit;
         end;
         DataSourceConcessionaria.DataSet.Next;
     end;
   BtnOk.SetFocus;
end;

procedure TBoxEmpresas.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
   ID_ConcessionariaEmUso.Text := IntToStr(Integer(ListBox1.Items.Objects
     [ListBox1.ItemIndex]));
   DataSourceConcessionaria.Dataset.First;
   while (not DataSourceConcessionaria.DataSet.Eof) do
     begin
       if ID_ConcessionariaEmUso.Text = DataSourceConcessionaria.DataSet.FieldByName('ID_CONCESSIONARIA').Text then //.Fields[0].Text then
         begin
           UsuarioLogado := DataSource1.Dataset.FieldByName('Usuario').Text;
           idUsuarioLogado := DataSource1.Dataset.FieldByName('Id_Usuarios').AsInteger;
           IdBancoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Id_Banco_Concessionaria').AsInteger;
           ConcessionariaEmUso.Text :=  DataSourceConcessionaria.DataSet.FieldByName('EMPRESA').Text;
           Aliquota_ISS.Text := DataSourceConcessionaria.Dataset.FieldByName('Aliquota_ISS').Text;
           Aliquota_ICms1.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS1').Text;
           Aliquota_ICMS2.Text := DataSourceConcessionaria.DataSet.FieldByName('Aliquota_ICMS2').Text;
           NumeroEmpresa.Text := DataSourceConcessionaria.DataSet.FieldByName('Codigo_Empresa_JB').Text;
           ConcessionariaCidade.Text := DataSourceConcessionaria.Dataset.FieldByName('Cidade').Text;
           ConcessionariaEstado.Text := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           ConcessionariaEndereco.Text := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           CNPJ := DataSourceConcessionaria.Dataset.FieldByName('CNPJ').TExt;
           CodigoConcessionaria := DataSourceConcessionaria.Dataset.FieldByName('Cod_Conces').TExt;
           IM   := DataSourceConcessionaria.Dataset.FieldByName('IM').TExt;
           IE   := DataSourceConcessionaria.Dataset.FieldByName('IE').TExt;
           Numero :=DataSourceConcessionaria.Dataset.FieldByName('Numero').TExt;
           Complemento := DataSourceConcessionaria.Dataset.FieldByName('Complemento').TExt;
           Bairro := DataSourceConcessionaria.Dataset.FieldByName('Bairro').TExt;
           CodigoMunicipio := DataSourceConcessionaria.Dataset.FieldByName('Codigo_Municipio').TExt;
           CNAE := DataSourceConcessionaria.Dataset.FieldByName('CNAE').TExt;
           Fantasia := DataSourceConcessionaria.Dataset.FieldByName('Fantasia').TExt;
           Empresa := DataSourceConcessionaria.Dataset.FieldByName('Empresa').TExt;
           Fone := DataSourceConcessionaria.Dataset.FieldByName('Telefone').TExt;
           Cidade := DataSourceConcessionaria.Dataset.FieldByName('Cidade').TExt;
           Estado := DataSourceConcessionaria.Dataset.FieldByName('Estado').TExt;
           Endereco := DataSourceConcessionaria.Dataset.FieldByName('Endereco').TExt;
           CEP :=DataSourceConcessionaria.Dataset.FieldByName('CEP').TExt;
           Host := DataSourceConcessionaria.Dataset.FieldByName('Host').TExt;
           Port := DataSourceConcessionaria.Dataset.FieldByName('Port').TExt;
           Usuario := DataSourceConcessionaria.Dataset.FieldByName('Usuario').TExt;
           Pass := DataSourceConcessionaria.Dataset.FieldByName('Pass').TExt;
           Certificado := DataSourceConcessionaria.Dataset.FieldByName('Certificado').Text;
           Logo := DataSourceConcessionaria.Dataset.FieldByName('logo').Text;
           Logo_Prefeitura := DataSourceConcessionaria.Dataset.FieldByName('logo_prefeitura').Text;
           Dividir_NF_Garantia := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Garantia').AsBoolean;
           Dividir_NF_Servico := DataSourceConcessionaria.Dataset.FieldByName('Dividir_NF_Servico').AsBoolean;
           Feira := False;
           Feira := DataSourceConcessionaria.Dataset.FieldByName('Feira').AsBoolean;
           Endereco_Feira := DataSourceConcessionaria.Dataset.FieldByName('Endereco_Feira').Text;
           Despachante.Text := DataSourceConcessionaria.Dataset.FieldByName('Despachante').Text;
           Fipe := DataSourceConcessionaria.Dataset.FieldByName('FIPE').AsBoolean;
           Obrigar_ICMS_ST_NFE := DataSourceConcessionaria.Dataset.FieldByName('Obrigar_ICMS_ST_NFE').AsBoolean;
           Exit;
         end;
         DataSourceConcessionaria.DataSet.Next;
     end;
   BtnOk.SetFocus;
end;

end.

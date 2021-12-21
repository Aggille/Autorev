unit RelatorioComissoesVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  IBX.IBCustomDataSet, Vcl.Mask, RxToolEdit, Vcl.DBCtrls, frxClass, frxDBSet,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, IBX.IBQuery;

type
  TBoxComissaoVeiculos = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    dtsComissoes: TDataSource;
    DBGrid1: TDBGrid;
    tblComissoes: TIBDataSet;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    DataSourceClientes: TDataSource;
    tblPedidoVeiculos: TIBDataSet;
    dtsPedidos: TDataSource;
    Panel3: TPanel;
    BtnImprimir: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    CodigoVendedor: TEdit;
    Label3: TLabel;
    tblComissoesID_COMISSOES: TIntegerField;
    tblComissoesID_PEDIDO: TIntegerField;
    tblComissoesID_VENDEDOR: TIntegerField;
    tblComissoesID_CLIENTES: TIntegerField;
    tblComissoesMODELO: TIBStringField;
    tblComissoesANO_FABRICACAO: TIBStringField;
    tblComissoesANO_MODELO: TIBStringField;
    tblComissoesCHASSI: TIBStringField;
    tblComissoesVALOR_VENDA: TIBBCDField;
    tblComissoesBASE_COMISSAO: TIBBCDField;
    tblComissoesTABELA_VIP: TIBBCDField;
    tblComissoesTABELA_NORMAL: TIBBCDField;
    tblComissoesTABELA_EXCLUSIVA: TIBBCDField;
    tblComissoesPERCENTUAL: TIBBCDField;
    tblComissoesVALOR_COMISSAO: TIBBCDField;
    tblComissoesPERIODO: TIBStringField;
    frxReport1: TfrxReport;
    tblRelPedidoVeiculos: TfrxDBDataset;
    tblRelConcessionaria: TfrxDBDataset;
    tblComissoesNOME: TIBStringField;
    SpeedButton3: TSpeedButton;
    NomeVendedor: TEdit;
    tblRelVendedor: TfrxDBDataset;
    IBQuery1: TIBQuery;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblAux: TClientDataSet;
    dtsAuxRecebimentos: TDataSource;
    DBGrid2: TDBGrid;
    tblAuxID_RECEBIMENTO: TIntegerField;
    tblAuxNUMERO_CV: TStringField;
    tblAuxVALOR_PARCELAS: TCurrencyField;
    tblAuxNUMERO_PARCELAS: TIntegerField;
    tblAuxVALOR_ORIGINAL: TCurrencyField;
    tblComissoesORIGEM: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure tblPessoasAfterPost(DataSet: TDataSet);
    procedure tblPessoasBeforeCancel(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure AtualizaBaseComissao;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Retorno : String;
  BaseComissao : Extended;
  BoxComissaoVeiculos: TBoxComissaoVeiculos;

implementation

{$R *.dfm}

uses FDB, Biblioteca, Efuncoes;

procedure TBoxComissaoVeiculos.BitBtn1Click(Sender: TObject);
var
 percentual : Extended;
begin
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
     Open;
     First;
    end;
   with tblComissoes do
    begin
      Close;
      ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
      //Verificar de existe lançamentos para o vendedor no período e se tiver pergunta se quer apagar.
      //Criar lançamentos novos para o período / vendedor.
      Open;
      First;
      if not tblcomissoes.eof then
        Case Messagedlg('Existem comissões geradas. Apagar e gerar novamente?', mtConfirmation, [mbYes,mbNo],0) of
         mrYes :
         begin
          while not tblComissoes.Eof do
           begin
             delete;
           end;
          Close;
          ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
          Open;
          First;
          //       showmessage('apagado');
         end;
        End;
      while not tblPedidoVeiculos.Eof do
      begin
        Insert;
        FieldByName('id_pedido').AsInteger := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsInteger;
        FieldByName('id_vendedor').AsInteger := tblPedidoVeiculos.FieldByName('id_vendedor').AsInteger;
        FieldByName('id_clientes').AsInteger := tblPedidoVeiculos.FieldByName('id_clientes').AsInteger;
        FieldByName('modelo').AsString := tblPedidoVeiculos.FieldByName('modelo').AsString;
        FieldByName('ano_fabricacao').AsString := tblPedidoVeiculos.FieldByName('ano_fabricacao').AsString;
        FieldByName('ano_modelo').AsString := tblPedidoVeiculos.FieldByName('ano_modelo').AsString;
        FieldByName('chassi').AsString := tblPedidoVeiculos.FieldByName('chassi').AsString;
        AtualizaBaseComissao();
        FieldByName('valor_venda').AsCurrency := tblPedidoVeiculos.FieldByName('valor_da_venda').AsCurrency;
        FieldByName('base_comissao').AsCurrency := BaseComissao;//tblPedidoVeiculos.FieldByName('base_comissao').AsCurrency;
        FieldByName('tabela_vip').AsCurrency := tblPedidoVeiculos.FieldByName('valor_vip').AsCurrency;
        FieldByName('tabela_normal').AsCurrency := tblPedidoVeiculos.FieldByName('valor_normal').AsCurrency;
        FieldByName('tabela_exclusiva').AsCurrency := tblPedidoVeiculos.FieldByName('valor_exclusivo').AsCurrency;
        FieldByName('tabela_vip').AsCurrency := tblPedidoVeiculos.FieldByName('valor_vip').AsCurrency;
        FieldByName('Origem').AsString := tblPedidoveiculos.FieldByName('Origem').AsString;
        //calcular percentual
        percentual := 0.8;
        if FieldByName('Base_Comissao').AsCurrency >= tblPedidoVeiculos.FieldByName('Valor_Normal').AsCurrency then
           percentual := 1.0;
        if FieldByName('Base_Comissao').AsCurrency >=  tblPedidoVeiculos.FieldByName('Valor_VIP').AsCurrency then
           percentual := 1.2;
        if FieldByName('Origem').AsString = 'U' then
          begin
            percentual := 1.0;
            FieldByName('tabela_normal').AsCurrency := BaseComissao;
            FieldByName('tabela_exclusiva').AsCurrency := 0;
            FieldByName('tabela_vip').AsCurrency := 0;
          end;
        FieldByName('percentual').AsCurrency := percentual; //tblPedidoVeiculos.FieldByName('percentual').AsCurrency;
        FieldByName('valor_comissao').AsCurrency := FieldByName('base_comissao').AsCurrency * percentual/100;
//                                                    tblPedidoVeiculos.FieldByName('percentual').AsCurrency;
//        periodo := DateToText(DataInicial.Date);
        FieldByName('Periodo').AsString := Substr(DateToText(DataInicial.Date),3,2) + '/' +
                                           Substr(DateToText(DataInicial.Date),7,2);
        Post;
        tblPedidoVeiculos.next;
      end;
    end;

end;

procedure TBoxComissaoVeiculos.AtualizaBaseComissao;
var
  ValorAcessorios : Extended;
  ValorDevidoAVista : Extended;
  ValorDevidoParcelado : Extended;
  ValorDevido : Extended;
  i : Integer;
  NumeroCV : String;
begin
  IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.Sql.Add('select sum(Pedido_veiculos_acessorios.valor_acessorio) as Valor');
  IBQuery1.SQL.Add('from Pedido_veiculos_acessorios');
  IBQuery1.SQL.Add('where Pedido_veiculos_acessorios.Id_Pedido_veiculos =');
  IBQuery1.Sql.Add(':idPedidoVeiculos');
  IBQuery1.Parambyname('idPedidoVeiculos').AsString := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsString;
  IBQuery1.Open;
  ValorAcessorios := IBQuery1.FieldByName('Valor').AsCurrency;

  IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.Sql.Add('select sum(Pedido_veiculos_recebimento.valor_devido) as Valor');
  IBQuery1.SQL.Add('from Pedido_veiculos_recebimento');
  IBQuery1.SQL.Add('where Pedido_veiculos_recebimento.Id_Pedido_veiculos =');
  IBQuery1.Sql.Add(':idPedidoVeiculos and');
  IBQuery1.Sql.Add('numero_cv is null');
  IBQuery1.Parambyname('idPedidoVeiculos').AsString := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsString;
  IBQuery1.Open;
  ValorDevidoAVista := IBQuery1.FieldByName('Valor').AsCurrency;

  IBQuery1.Close;

  with tblPedidoveiculosRecebimento do
  begin
    close;
    Parambyname('idPedidoVeiculos').AsString := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsString;
    Open;
    First;
    While not eof do
    begin
       //verificar se tem CV, se tiver criar registro na tblAux, desde que o CV não exista lá.
      if tblPedidoVeiculosRecebimento.FieldByName('Numero_CV').AsString <> null then
       begin
          // Verificar se o CV existe na tblAux
          NumeroCV := tblPedidoVeiculosRecebimento.FieldByName('Numero_CV').AsString;
          tblAux.Close;
          tblAux.Open;
          with tblAux do
            begin
              if not (tblAux.Locate ('Numero_CV', tblPedidoveiculosRecebimento.FieldByName('Numero_CV').AsString,[])) then
                 begin
                    tblAux.Insert;
                    tblAux.FieldByName('id_recebimento').AsInteger :=
                           tblPedidoVeiculosRecebimento.FieldByName('id_pedido_veiculos_recebimento').AsInteger;
                    tblAux.FieldByName('Numero_CV').AsString := NumeroCV;
                    tblAux.FieldByName('Valor_Parcelas').AsCurrency :=
                           tblPedidoVeiculosRecebimento.FieldByName('Valor_devido').AsCurrency;
                    tblAux.Post;
                 end;
            end;
       end;
  //                                       showmessage(IntToStr(tblPedidoVeiculosRecebimento.RecNo));
       tblPedidoVeiculosRecebimento.next;
    end;
  end;
  tblAux.Close;
  tblAux.Open;
  tblAux.First;
  ValorDevidoParcelado := 0;
  while not tblAux.eof do //true do //not tblAux.eof do

  begin
    with tblPedidoveiculosRecebimento do
    begin
      close;
      Parambyname('idPedidoVeiculos').AsString := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsString;
      Open;
      First;
      begin
         //calcular numero de parcelas em determinado CV
         i:= 0;
         NumeroCV := tblAux.FieldByName('Numero_CV').AsString;//tblPedidoVeiculosRecebimento.FieldByName('Numero_CV').AsString;
         While not tblPedidoVeiculosRecebimento.eof do
           begin
            if NumeroCV = tblPedidoVeiculosRecebimento.FieldByName('Numero_CV').AsString then
             begin
               i := i + 1;
               ValorDevido := tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency;
             end;

            tblPedidoVeiculosRecebimento.next;
           end;
//                       showmessage(inttostr(i));
  //                     showmessage(CurrToStr(ValorDevido));
           if i > 3 then
             ValorDevido := ((ValorDevido * i) / (1+ (i*0.02)))
           else
             ValorDevido := valorDevido * i;
      end;
    end;
    tblAux.Edit;
    tblAux.FieldByName('Numero_Parcelas').AsString := IntToStr(i);//NumeroCV;
    tblAux.FieldByName('Valor_original').AsCurrency := ValorDevido;//Parcelado;
    tblAux.Post;
    ValorDevidoParcelado := ValorDevidoParcelado + ValorDevido;
    tblAux.Next;
  end;
//       showmessage('b');
// showmessage(tblAux.FieldByName('Numero_cv').ASString);
// showmessage(CurrToStr(ValorDevidoaVista));
// showmessage(CurrToStr(ValorDevidoParcelado));
//   showmessage(CurrToStr(ValorAcessorios));
   BaseComissao := ValorDevidoaVista + ValorDevidoParcelado - ValorAcessorios;
end;

procedure TBoxComissaoVeiculos.BitBtn2Click(Sender: TObject);
begin
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
     Open;
     First;
    end;
   with tblComissoes do
    begin
      Close;
      ParamByName('IdVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
      //Verificar de existe lançamentos para o vendedor no perído e se tiver pergunta se quer apagar.
      //Criar lançamentos novos para o período / vendedor.
      Open;
    end;

end;

procedure TBoxComissaoVeiculos.BtnImprimirClick(Sender: TObject);
begin
   frxReport1.Variables.clear;
   frxReport1.Variables['DataInicial'] := DataInicial.Date;
   frxReport1.Variables['DataFinal'] := DataFinal.Date;
   frxReport1.Variables['Vendedor'] := QuotedStr(NomeVendedor.Text);//'''+ NomeVendedor.Text + ''';//QuotedStr(NomeVendedor.Text);
   frxReport1.ShowReport;
end;

procedure TBoxComissaoVeiculos.CodigoVendedorExit(Sender: TObject);
var
 idVendedor : integer;
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) = 0 then
  begin
   SpeedButton3.Click;
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idVendedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idVendedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoVendedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                Codigovendedor.SetFocus;
               end;
            end;
            NomeVendedor.Text := FieldbyName('Nome').Text;
//            if FieldByName('Vendedor_Ynova').AsString = 'T' then
  //            VendedorYnova := True
    //        else
      //        VendedorYnova := False;
         end;
      end;
  end;

end;

procedure TBoxComissaoVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComissaoVeiculos.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
//        tblPedidoVeiculos.FieldByName('Id_Vendedor').AsString :=
        CodigoVendedor.Text :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeVendedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoVendedor.SetFocus;

end;

procedure TBoxComissaoVeiculos.tblPessoasAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxComissaoVeiculos.tblPessoasBeforeCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

end.

unit RelatorioVendaVarejo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, IBQuery;

type
  TBoxVendaVarejo = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DataSourceVeiculos: TDataSource;
    tblVeiculos: TIBDataSet;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid: TwwDBGrid;
    Cor: TCheckBox;
    BtnAtualizar: TBitBtn;
    Ano: TCheckBox;
    Estoque: TCheckBox;
    Status: TCheckBox;
    Panel4: TPanel;
    Cor2: TCheckBox;
    BtnAtualiza2: TBitBtn;
    Ano2: TCheckBox;
    Estoque2: TCheckBox;
    tblPedidoVeiculos: TIBDataSet;
    DataSourcePedidoVeiculos: TDataSource;
    Panel5: TPanel;
    DBGrid2: TwwDBGrid;
    Data1: TJvDateEdit;
    Data2: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Ambos: TRadioGroup;
    Label3: TLabel;
    TotalVendas: TEdit;
    Label4: TLabel;
    TotalEstoque: TEdit;
    LocalVenda: TCheckBox;
    Panel6: TPanel;
    Data3: TJvDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Data4: TJvDateEdit;
    BtnAtualiza3: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    tblPedidoVeiculos2: TIBDataSet;
    DataSourcePedidoVeiculos2: TDataSource;
    TotalTransito: TEdit;
    Label7: TLabel;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    Label8: TLabel;
    Usadas: TEdit;
    procedure tblPedidoVeiculosAcessoriosAfterCancel(DataSet: TDataSet);
    procedure tblPedidoVeiculosAcessoriosAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAtualiza2Click(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure Atualizar;
    procedure Atualizar2;
    procedure Atualizar3;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Data2Exit(Sender: TObject);
    procedure BtnAtualiza3Click(Sender: TObject);
    procedure Data4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   sqlCor : String;
   sqlEstoque : String;
   sqlAno : String;
   sqlStatus : String;
   sqlCor2 : String;
   sqlEstoque2 : String;
   sqlAno2 : String;
   sqlAmbos : String;
   SqlLocalVenda : String;
   SqlLocalVenda2 : String;
  end;

var
  BoxVendaVarejo: TBoxVendaVarejo;

implementation

uses FDB, Empresas;

{$R *.dfm}

procedure TBoxVendaVarejo.Atualizar2;
var
  i : integer;
  Soma : Integer;
begin
  soma := 0;
  if Cor2.Checked then
   begin
    SqlCor2 := ', P.cor';
    DBGrid2.AddField('COR');
   end
  else
   begin
    SqlCor2 := '';
    DBGrid2.RemoveField('COR');
   end;
  if Estoque2.Checked then
   begin
    SqlEstoque2 := ', P.id_Concessionaria';
    DBGrid2.AddField('id_Concessionaria');
   end
  else
   begin
    SqlEstoque2 := '';
    DBGrid2.RemoveField('id_Concessionaria');
   end;
  if Ano2.Checked then
   begin
    SqlAno2 := ', P.Ano_Fabricacao, P.Ano_modelo';
    DBGrid2.AddField('Ano_Fabricacao');
    DBGrid2.AddField('Ano_Modelo');
   end
  else
   begin
    SqlAno2 := '';
    DBGrid2.RemoveField('Ano_Fabricacao');
    DBGrid2.RemoveField('Ano_Modelo');
   end;
  if LocalVenda.Checked then
   begin
    SqlLocalVenda := ', cl.Id_Concessionaria';
    SqlLocalVenda2 := ' left join clientes cl on (p.id_vendedor = cl.id_clientes)';
    DBGrid2.AddField('Id_Concessionaria1');
   end
  else
   begin
    SqlLocalVenda := '';
    SqlLocalVenda2 := '';
    DBGrid2.RemoveField('Id_concessionaria1');
   end;
  if Ambos.ItemIndex = 0 then
   begin
    SqlAmbos := 'and V.Origem = '+''''+'N'+'''';
   end;
  if Ambos.ItemIndex = 1 then
   begin
    SqlAmbos := 'and V.Origem = '+''''+'U'+'''';
   end;
  if Ambos.ItemIndex = 2 then
   begin
     SqlAmbos := '';
   end;
   with tblPedidoVeiculos do
    begin
      Close;
      SelectSql.Clear;
      SelectSql.Add('Select Count (*) as Total, P.id_Modelo_Veiculo, P.Modelo, V.Origem');
      SelectSql.Add(SqlCor2);
      SelectSql.Add(SqlAno2);
      SelectSql.Add(SqlEstoque2);
      SelectSql.Add(SqlLocalVenda);
      SelectSql.Add('from Pedido_Veiculos P');
      SelectSql.Add('inner join Veiculos V on P.id_Veiculos = V.id_Veiculos');
   //   SelectSql.Add('left join clientes cl on (p.id_vendedor = cl.id_clientes)');
      SelectSql.Add(SqlLocalVenda2);
      SelectSql.Add('where (P.status = '+''''+'Faturado'+''''+
        ' or P.Status = '+ ''''+ 'Fechado'+''''+') and (P.Data_NF >= :DataInicial) and (P.Data_NF <= :DataFinal)');
      SelectSql.Add(SqlAmbos);
      SelectSql.Add('Group by P.id_modelo_veiculo, P.modelo, V.Origem ');
      SelectSql.Add(SqlCor2);
      SelectSql.Add(SqlAno2);
      SelectSql.Add(SqlEstoque2);
      SelectSql.Add(SqlLocalVenda);
      SelectSQl.Add(' Order by 3');
      ParamByName('DataInicial').AsDateTime := Data1.date;
      ParamByName('DataFinal').AsDateTime := Data2.Date;
      Open;
    end;
   with tblPedidoVeiculos do
    begin
      First;
      while not eof do
        begin
         Soma := Soma + FieldByName('Total').AsInteger;
         Next;
        end;
      First;
      TotalVendas.Text := IntToStr(Soma);
    end;
end;

procedure TBoxVendaVarejo.BtnAtualiza2Click(Sender: TObject);
begin
  Atualizar2;
  Atualizar2;
end;

procedure TBoxVendaVarejo.BtnAtualiza3Click(Sender: TObject);
begin
   Atualizar3;
end;

procedure TBoxVendaVarejo.Atualizar3;
begin
  with tblPedidoVeiculos2 do
   begin
     Close;
     ParamByName('DataInicial').AsDateTime := Data3.Date;
     ParamByName('DataFinal').AsDateTime := Data4.Date;
     Open;
   end;
end;

procedure TBoxVendaVarejo.Atualizar;
var
  i : integer;
  Soma : Integer;
begin
  Soma := 0;
  if Cor.Checked then
   begin
    SqlCor := ', cor';
    DBGrid.AddField('COR');
   end
  else
   begin
    SqlCor := '';
    DBGrid.RemoveField('COR');
   end;
  if Estoque.Checked then
   begin
    SqlEstoque := ', Estoque';
    DBGrid.AddField('estoque');
   end
  else
   begin
    SqlEstoque := '';
    DBGrid.RemoveField('Estoque');
   end;
  if Ano.Checked then
   begin
    SqlAno := ', Ano_Fabricacao, Ano_modelo';
    DBGrid.AddField('Ano_Fabricacao');
    DBGrid.AddField('Ano_Modelo');
   end
  else
   begin
    SqlAno := '';
    DBGrid.RemoveField('Ano_Fabricacao');
    DBGrid.RemoveField('Ano_Modelo');
   end;
  if Status.Checked then
   begin
    SqlStatus := ', Status';
    DBGrid.AddField('Status');
   end
  else
   begin
    SqlStatus := '';
    DBGrid.RemoveField('Status');
   end;
    DBGrid.Refresh;
    DBGrid.RefreshDisplay;
   with tblVeiculos do
    begin
      Close;
      SelectSql.Clear;
      SelectSql.Add('Select Count (*) as Total, id_Modelo_Veiculo, Modelo ');
      SelectSql.Add(SqlCor);
      SelectSql.Add(SqlAno);
      SelectSql.Add(SqlEstoque);
      SelectSql.Add(SqlStatus);
      SelectSql.Add(' from veiculos where status <> '+''''+'VENDIDO'+''''+
        ' and Status <> '+ ''''+ 'IMOBILIZADO'+''''+                               //DEVOLVIDO E TERCEIRO
        ' and Status <> '+ ''''+ 'TRANSFERIDO'+''''+
        ' and Origem = '+''''+'N'+''''+
        ' Group by id_modelo_veiculo, modelo ');
      SelectSql.Add(SqlCor);
      SelectSql.Add(SqlAno);
      SelectSql.Add(SqlEstoque);
      SelectSql.Add(SqlStatus);
      SelectSQl.Add(' Order by 3');
      Open;
    end;
   with tblVeiculos do
    begin
      First;
      while not eof do
        begin
         Soma := Soma + FieldByName('Total').AsInteger;
         Next;
        end;
      TotalEstoque.Text := IntToStr(Soma);
      First;
    end;
  IbQuery1.Open;
  TotalTransito.Text := IBQuery1.FieldByName('valor').AsString;
  IbQuery1.Close;
  IbQuery2.Open;
  Usadas.Text := IBQuery2.FieldByName('valor').AsString;
  IbQuery2.Close;

end;

procedure TBoxVendaVarejo.BtnAtualizarClick(Sender: TObject);
begin
  Atualizar;
  Atualizar;
end;

procedure TBoxVendaVarejo.Data2Exit(Sender: TObject);
begin
  BtnAtualiza2.SetFocus;
end;

procedure TBoxVendaVarejo.Data4Exit(Sender: TObject);
begin
  BtnAtualiza3.SetFocus;
end;

procedure TBoxVendaVarejo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataSourceVeiculos.Dataset.Close;
  DataSourcePedidoVeiculos.Dataset.Close;
  DataSourcePedidoVeiculos2.Dataset.Close;
end;

procedure TBoxVendaVarejo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxVendaVarejo.FormShow(Sender: TObject);
begin
  FDb1.AtualizaDataAtual;
  Data1.Date := DataAtual;
  Data2.Date := DataAtual;
  Data3.Date := DataAtual;
  Data4.Date := DataAtual;
  tblPedidoVeiculos.ParamByName('DataInicial').AsDateTime := Data1.Date;
  tblPedidoVeiculos.ParamByName('DataFinal').AsDateTime := Data2.Date;
  tblPedidoVeiculos2.ParamByName('DataInicial').AsDateTime := Data3.Date;
  tblPedidoVeiculos2.ParamByName('DataFinal').AsDateTime := Data4.Date;
  DataSourceVeiculos.Dataset.Open;
  DataSourcePedidoVeiculos.Dataset.Open;
  DataSourcePedidoVeiculos2.Dataset.Open;
  Atualizar;
  Atualizar2;
  Atualizar3;
end;

procedure TBoxVendaVarejo.tblPedidoVeiculosAcessoriosAfterCancel(DataSet: TDataSet);
begin
 fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxVendaVarejo.tblPedidoVeiculosAcessoriosAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

end.


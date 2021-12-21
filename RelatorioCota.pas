unit RelatorioCota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, IBQuery, Buttons;

type
  TBoxCota = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid2: TwwDBGrid;
    Label4: TLabel;
    TotalEstoque: TEdit;
    tblPedidoVeiculos: TIBQuery;
    BtnAtualiza2: TBitBtn;
    Ambos: TRadioGroup;
    Label3: TLabel;
    TotalVendas: TEdit;
    procedure BtnAtualiza2Click(Sender: TObject);
    procedure Atualizar;
  private
    { Private declarations }
  public
    { Public declarations }
   sqlAmbos : String;
  end;

var
  BoxCota: TBoxCota;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxCota.Atualizar;
begin
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
    //  SelectSql.Clear;
  //    SelectSql.Add('Select Count (*) as Total, P.id_Modelo_Veiculo, P.Modelo, V.Origem');
//      SelectSql.Add(SqlCor2);
     // SelectSql.Add(SqlAno2);
   //   SelectSql.Add(SqlEstoque2);
 //     SelectSql.Add(SqlLocalVenda);
//      SelectSql.Add('from Pedido_Veiculos P');
//      SelectSql.Add('inner join Veiculos V on P.id_Veiculos = V.id_Veiculos');
//      SelectSql.Add(SqlLocalVenda2);
//      SelectSql.Add('where (P.status = '+''''+'Faturado'+''''+
//        ' or P.Status = '+ ''''+ 'Fechado'+''''+') and (P.Data_NF >= :DataInicial) and (P.Data_NF <= :DataFinal)');
  //    SelectSql.Add(SqlAmbos);
    //  SelectSql.Add('Group by P.id_modelo_veiculo, P.modelo, V.Origem ');
  //    SelectSql.Add(SqlCor2);
//      SelectSql.Add(SqlAno2);
    //  SelectSql.Add(SqlEstoque2);
  //    SelectSql.Add(SqlLocalVenda);
//      SelectSQl.Add(' Order by 3');
//      ParamByName('DataInicial').AsDateTime := Data1.date;
//      ParamByName('DataFinal').AsDateTime := Data2.Date;
      Open;
    end;

end;

procedure TBoxCota.BtnAtualiza2Click(Sender: TObject);
begin
   //ssas

end;

end.


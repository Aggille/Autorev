unit OperacoesCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit;

type
  TBoxCompras = class(TForm)
    ToolBar1: TToolBar;
    BtnNovos: TBitBtn;
    BtnUsados: TBitBtn;
    BtnPecas: TBitBtn;
    BtnPecasXML: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnNovosClick(Sender: TObject);
    procedure BtnUsadosClick(Sender: TObject);
    procedure BtnPecasClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPecasXMLClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }

  public

    end;

var
  BoxCompras: TBoxCompras;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasNovos, OperacoesComprasPecas, OperacoesComprasUsados,
  OperacoesComprasPecasXml, OperacoesComprasPecasXmlSimilar,
  UBoxTransferenciaVeiculo0KM;

{$R *.dfm}

procedure TBoxCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxCompras := nil;
end;

procedure TBoxCompras.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxCompras.FormShow(Sender: TObject);
begin
  { Habilita/desabilita os botões }
  BtnPecas.Enabled := False;
  BtnNovos.Enabled := False;
  BtnUsados.Enabled := False;
  BtnPecasXML.Enabled := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso10.AsString = 'T') then {peças}
    begin
      BtnPecasXML.Enabled := True;
      BtnPecas.Enabled := True;
      BtnPecas.SetFocus;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso9.AsString = 'T') then {veículos}
    begin
      BtnNovos.Enabled := True;
      BtnUsados.Enabled := True;
      BtnNovos.SetFocus;
    end;
end;

procedure TBoxCompras.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm( TBoxTransferenciaVeiculo0KM, BoxTransferenciaVeiculo0KM );
  BoxTransferenciaVeiculo0KM.ShowModal;
end;

procedure TBoxCompras.BtnNovosClick(Sender: TObject);
begin
  if not Assigned(BoxComprasNovos) then
    BoxComprasNovos := TBoxComprasNovos.Create(Self);
  BoxComprasNovos.Show;
end;

procedure TBoxCompras.BtnUsadosClick(Sender: TObject);
begin
  if not Assigned(BoxComprasUsados) then
    BoxComprasUsados := TBoxComprasUsados.Create(Self);
  BoxComprasUsados.Show;
end;

procedure TBoxCompras.BtnPecasClick(Sender: TObject);
begin
  if not Assigned(BoxComprasPecasXmlSimilar) then
    BoxComprasPecasXmlSimilar := TBoxComprasPecasXmlSimilar.Create(Self);
  BoxComprasPecasXmlSimilar.Show;
end;

procedure TBoxCompras.BtnPecasXMLClick(Sender: TObject);
begin
  if not Assigned(BoxComprasPecasXML) then
    BoxComprasPecasXML := TBoxComprasPecasXML.Create(Self);
  BoxComprasPecasXML.Show;
end;

end.

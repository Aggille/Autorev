unit PedidoPecasFabrica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, DB, IBCustomDataSet, Grids, DBGrids,
  Buttons, StdCtrls, JvMaskEdit, JvDBControls, Mask, JvExMask, JvToolEdit;

type
  TBoxPedidoPecasFabrica = class(TForm)
    StatusBar1: TStatusBar;
    tblPecas: TIBDataSet;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasICMS: TIBBCDField;
    tblPecasPRECO: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasPPS: TIBBCDField;
    tblPecasORIGINAL: TIBStringField;
    tblPecasCST: TIBStringField;
    DataSourcePecas: TDataSource;
    tblPecasFabrica: TIBDataSet;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaDESCRICAO: TIBStringField;
    tblPecasFabricaCODIGO_NOVO: TIBStringField;
    tblPecasFabricaORIGEM: TIBStringField;
    tblPecasFabricaCUSTO: TIBBCDField;
    tblPecasFabricaQTDE_EMBAL: TIBStringField;
    tblPecasFabricaPESO: TIBStringField;
    tblPecasFabricaIPI: TIBBCDField;
    tblPecasFabricaREAJUSTE: TIBBCDField;
    tblPecasFabricaPRECO_GARAN: TIBBCDField;
    tblPecasFabricaPPS: TIBBCDField;
    tblPecasFabricaRESERVADO: TIBStringField;
    DataSourcePecasFabrica: TDataSource;
    tblPedidoDados: TIBDataSet;
    DataSourcePedidoDados: TDataSource;
    tblPedidos: TIBDataSet;
    DataSourcePedidos: TDataSource;
    DataPedido: TJvDBDateEdit;
    NumeroPedido: TJvDBMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Status: TJvDBMaskEdit;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnProcurar: TBitBtn;
    BtnConfirma: TBitBtn;
    tblPedidosID_PEDIDO_PECAS_FABRICA: TIntegerField;
    tblPedidosID_CONCESSIONARIA: TIntegerField;
    tblPedidosDATA_PEDIDO: TDateField;
    tblPedidosSTATUS: TIBStringField;
    tblPedidoDadosID_PEDIDO_PECAS_FABRICA_DADOS: TIntegerField;
    tblPedidoDadosID_PEDIDO_PECAS_FABRICA: TIntegerField;
    tblPedidoDadosID_PECAS: TIntegerField;
    tblPedidoDadosQUANTIDADE: TIntegerField;
    Label4: TLabel;
    Concessionaria: TJvDBMaskEdit;
    Panel1: TPanel;
    BtnExcluiItem: TBitBtn;
    BtnConfirmaItem: TBitBtn;
    BtnNovoItem: TBitBtn;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    CodigoPeca: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Descricao: TLabel;
    DescricaoPeca: TJvDBMaskEdit;
    Label6: TLabel;
    Quantidade: TMaskEdit;
    Label7: TLabel;
    QtdePedida: TMaskEdit;
    tblPedidoDadosCODIGO: TIBStringField;
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoPecaExit(Sender: TObject);
    procedure BtnNovoItemClick(Sender: TObject);
    procedure BtnConfirmaItemClick(Sender: TObject);
    procedure BtnExcluiItemClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure QtdePedidaExit(Sender: TObject);
    procedure tblPedidosAfterCancel(DataSet: TDataSet);
    procedure tblPedidosAfterPost(DataSet: TDataSet);
    procedure tblPedidoDadosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxPedidoPecasFabrica: TBoxPedidoPecasFabrica;
  retorno : String;

implementation

uses Empresas, Biblioteca, FDB, Efuncoes;

{$R *.dfm}

procedure TBoxPedidoPecasFabrica.BtnConfirmaItemClick(Sender: TObject);
begin
 showmessage('gravar');
 try
  with tblPedidoDados do
   begin
     FieldByName('Id_pedido_pecas_fabrica').AsInteger := tblPedidos.FieldByName('id_pedido_pecas_fabrica').AsInteger;
     FieldByName('Id_Pecas').AsInteger := tblPecas.FieldByName('Id_Pecas').AsInteger;
     FieldByName('Codigo').AsString := tblPecas.FieldByName('Codigo').AsString;
     FieldByName('Quantidade').AsString := QtdePedida.Text;
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
 Showmessage('Dados gravados');
end;

procedure TBoxPedidoPecasFabrica.BtnConfirmaClick(Sender: TObject);
var
   Linha: String;
   S:TStringList;
   arq:String;
begin
   s := TStringList.Create;
   linha := '00';
   linha := Linha + padlzero( BoxEmpresas.CodigoConcessionaria , 7);
   linha := linha + spaces(03) ;
   linha := linha + 'SIACY';
   s.Add( linha );
   with tblPedidoDados do
    begin
      First;
      while not eof do
        begin
          linha := '21';
          linha := linha + StrZero(FieldByName('id_Pedido_pecas_fabrica').AsInteger,10,0);
          linha := linha + trim( FieldByName('Codigo').AsString );
          linha := linha +spaces ( 12- length( trim( FieldByName('Codigo').AsString ) ));
          linha := linha + StrZero(FieldByName('Quantidade').AsInteger,5,0);
          s.add( linha );
          next;
        end;
    end;

   arq := ExtractFilePath( Application.ExeName ) + 'pedido_' + tblPedidos.fieldbyname( 'ID_PEDIDO_PECAS_FABRICA' ).asString+ '.txt';
   s.SaveToFile( arq );
   s.Free;
   with tblPedidos do
    begin
      Edit;
      FieldByName('Status').AsString := 'Gerado';
      Post;
    end;
  Showmessage( 'Arquivo ' + arq + ' gerado com sucesso');
end;

procedure TBoxPedidoPecasFabrica.BtnExcluiItemClick(Sender: TObject);
begin
    case MessageDlg('Deseja exluir peça do pedido?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
        tblPedidodados.Delete;
      end;
    end;
end;

procedure TBoxPedidoPecasFabrica.BtnNovoClick(Sender: TObject);
begin
  tblPedidos.Insert;
  tblpedidos.FieldByName('Data_Pedido').AsDateTime := DataAtual;
  tblPedidos.FieldByName('Status').AsString := 'Em edição';
  tblPedidos.FieldByName('Id_Concessionaria').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.text);
  DataPedido.setFocus;
end;

procedure TBoxPedidoPecasFabrica.BtnNovoItemClick(Sender: TObject);
begin
  tblPedidoDados.Insert;
  CodigoPeca.SetFocus;
end;

procedure TBoxPedidoPecasFabrica.BtnProcurarClick(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedidos peças fábrica','PEDIDO_PECAS_FABRICA',
      ['Id_Pedido_pecas_fabrica','STATUS','Data','Id_Concessionaria'],
      ['Sequência:','Status:','Data:','Concessionária'],
      'Descricao','Id_Pedido_pecas_fabrica',Fdb1.SQLConnection1,'','','');
     with tblPedidos do
     begin
        Close;
        Parambyname('idPedido').AsInteger := StrToInt(Retorno);
        Open;
        if FieldByName('Status').AsString = 'Gerado' then
         case MessageDlg('Este pedido já foi gerado.'+#13+'Reeditar ?', mtConfirmation, [mbYes,mbNo], 0) of
          mrYes:
           begin
             Edit;
             FieldByName('Status').AsString := 'Em edição';
             Post;
             Edit;
           end;
         end;
     end;
     with tblPedidoDados do
      begin
        Close;
        //ParamByName('IdPedido').AsInteger := tblPedidos.FieldByName('id_pedido_pecas_fabrica').AsInteger;
        Open;
      end;
   BtnNovoItem.SetFocus;
end;

procedure TBoxPedidoPecasFabrica.CodigoPecaExit(Sender: TObject);
begin
 if CodigoPeca.Text = '' then
  begin
   SpeedButton1.Click;
  end
 else
  begin
    with tblPecas do
      begin
       if CodigoPeca.Text<>'' then
         begin
          Close;
          parambyname( 'idCodigo' ).AsString := CodigoPeca.Text;
          Open;
          if recordcount = 0  then
            begin
             SpeedButton1.Click;
            end;
          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          //IdPeca := FieldByName('Id_Pecas').AsInteger;
         end;
      end;
  end;
end;

procedure TBoxPedidoPecasFabrica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblPedidos.Close;
  tblPedidoDados.Close;
  tblPecas.Close;
  tblPecasFabrica.Close;
end;

procedure TBoxPedidoPecasFabrica.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxPedidoPecasFabrica.FormShow(Sender: TObject);
begin
  tblPedidos.Open;
  tblPedidoDados.Open;
end;

procedure TBoxPedidoPecasFabrica.QtdePedidaExit(Sender: TObject);
begin
  BtnConfirmaItem.SetFocus;
end;

procedure TBoxPedidoPecasFabrica.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Peças','Pecas',
      ['Codigo','Descricao','Id_Pecas'],
      ['Código:','Descrição:','Sequência:'],
      'Descricao','Codigo',Fdb1.SQLConnection1,'','','');
     with tblPecas do
     begin
        Close;
        Parambyname('idCodigo').AsString := Retorno;
        Open;
        CodigoPeca.Text := tblPecas.FieldByName('Codigo').Text;
        DescricaoPeca.Text := tblPecas.FieldByName('Descricao').Text;
//        IdPeca := FieldByName('Id_Pecas').AsInteger;
     end;
     if CodigoPeca.Text = '' then
      begin
       CodigoPeca.SetFocus;
      end

end;

procedure TBoxPedidoPecasFabrica.tblPedidoDadosBeforePost(DataSet: TDataSet);
begin
  with Dataset do
  begin
    fieldbyname( 'id_pedido_pecas_fabrica' ).asInteger := tblPedidos.fieldbyname( 'id_pedido_pecas_fabrica' ).asInteger;
  end;
end;

procedure TBoxPedidoPecasFabrica.tblPedidosAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPedidoPecasFabrica.tblPedidosAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

end.


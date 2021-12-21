unit FechamentoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, IBCustomDataSet, Buttons, StdCtrls, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, Mask, rxToolEdit, rxCurrEdit, IBQuery;

type
  TBoxFechamentoPedidos = class(TForm)
    StatusBar1: TStatusBar;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    DataSourcepedidoVeiculos: TDataSource;
    Panel1: TPanel;
    LabelPedido: TLabel;
    Pedido: TEdit;
    SpeedButton1: TSpeedButton;
    wwDBGrid1: TwwDBGrid;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    BtnConfirma: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    ValoresRecebidos: TCurrencyEdit;
    TotalPedido: TCurrencyEdit;
    IBQuery1: TIBQuery;
    BtnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    tblPedidos: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBStringField6: TIBStringField;
    DateField1: TDateField;
    IBStringField7: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBBCDField3: TIBBCDField;
    IBStringField8: TIBStringField;
    IBBCDField4: TIBBCDField;
    IntegerField7: TIntegerField;
    dts1: TDataSource;
    procedure PedidoKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblPedidoVeiculosRecebimentoAfterPost(DataSet: TDataSet);
    procedure tblPedidoVeiculosRecebimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure AbrirDs;
    procedure BtnImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idPedido : Integer;
  end;

var
  BoxFechamentoPedidos: TBoxFechamentoPedidos;
  Retorno : String;

implementation

uses Biblioteca, FDB;

{$R *.dfm}

procedure TBoxFechamentoPedidos.BitBtn1Click(Sender: TObject);
begin
        //        showmessage('em teste, não implementado ainda.');
  with tblPedidos do
   begin
     Open;
     First;
     while not eof do
       begin
         if FieldByName('Status').AsString = 'Faturado' then
           begin
             Pedido.Text := tblPedidos.FieldByName('id_pedido_veiculos').AsString;
             idPedido := StrToInt(Pedido.Text);
             //Mostra recebimentos
             with tblPedidoVeiculosRecebimento do
              begin
               Close;
               ParamByName('idPedidoVeiculos').AsInteger := StrToInt(Pedido.Text);
               Open;
               First;
              end;
             //verifica soma devida
           {Busca soma do pedido}
           IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_devido) as Valor');
           IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
           IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
           IBQuery1.Sql.Add(':idPedidoVeiculos');
           IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
           IBQuery1.Open;
           TotalPedido.Text := IBQuery1.FieldByName('Valor').AsString;

             //verifica valores pagos
           {Busca valores recebidos do pedido}
           IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_recebido) as Valor');
           IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
           IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
           IBQuery1.Sql.Add(':idPedidoVeiculos');
           IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
           IBQuery1.Open;
           ValoresRecebidos.Text := IBQuery1.FieldByName('Valor').AsString;

             //Se valores pagos maiores que devidos então fecha pedido
           if (TotalPedido.Value <= ValoresRecebidos.Value) then
              begin
               tblPedidos.Edit;
               tblPedidos.FieldByName('Status').AsString := 'Fechado';
               tblPedidos.Post;
               Showmessage('Pedido '+tblPedidos.FieldByName('id_pedido_veiculos').AsString+' fechado');
              end;
           end;
         next;
       end;
     Close;
   end;
  Showmessage('Fim da rotina.');
 end;
                { with tblPedidos do
  begin
   open;
//   First;
   while not eof do
    begin
      if FieldByName('Status').AsString = 'Faturado' then
        begin
         With tblPedidoVeiculosRecebimento do
         begin
          Close;
          idPedido := tblPedidos.FieldByName('id_Pedido_veiculos').AsInteger;//StrToInt(Pedido.Text);
          ParamByName('idPedidoVeiculos').AsInteger := idPedido;//tblPedidos.FieldByName('id_Pedido_veiculos').Asinteger;
          Open;
          First;
  //                  showmessage(fieldbyname('id_pedido_veiculos').asstring);
           {Busca soma do pedido}
      {     IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_devido) as Valor');
           IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
           IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
           IBQuery1.Sql.Add(':idPedidoVeiculos');
           IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
           IBQuery1.Open;
           TotalPedido.Text := IBQuery1.FieldByName('Valor').AsString;
           {Busca valores recebidos do pedido}
     {      IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_recebido) as Valor');
           IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
           IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
           IBQuery1.Sql.Add(':idPedidoVeiculos');
           IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
           IBQuery1.Open;
           ValoresRecebidos.Text := IBQuery1.FieldByName('Valor').AsString;

           if (TotalPedido.Value <= ValoresRecebidos.Value) then
             begin
          //     showmessage(totalpedido.Text);
        //       showmessage(valoresRecebidos.Text);
               tblPedidos.Edit;
               tblPedidos.FieldByName('Status').AsString := 'Fechado';
               tblPedidos.Post;
      //         showmessage(fieldbyname('id_pedido_veiculos').asstring);
             end;
        end;
    //           showmessage(fieldbyname('id_pedido_veiculos').asstring);
       end;
      Next;
    end;
  end;}
//end;

procedure TBoxFechamentoPedidos.BtnConfirmaClick(Sender: TObject);
begin
  if (TotalPedido.Value > ValoresRecebidos.Value) and
     (FDB1.IBDataSetLoginADM.AsString <> 'T') then
      Showmessage('Valores recebidos até o momento' + #13 +
       'são inferiores ao total do pedido' + #13 +
       'Fechamento não autorizado.')
  else
    begin
      with tblPedidoVeiculos do
       begin
         Edit;
         if (FieldByName('Status').AsString = 'FaturadoTransferido') then
           FieldByName('Status').AsString := 'FechadoTranferido'
          else
          if (FieldByName('Status').AsString = 'FaturadoTransferir') then
           FieldByName('Status').AsString := 'FechadoTranferir'
          else
           FieldByName('Status').AsString := 'Fechado';
         Post;
       end;
      Showmessage('Pedido fechado');
    end;
end;

procedure TBoxFechamentoPedidos.BtnImprimirClick(Sender: TObject);
begin
{  with tblPessoas do
  begin
    Close;
    ParamByName('id').AsInteger := StrToInt(codigocliente.Text);
    Open;
  end;
  FrxReport1.ShowReport;}
end;

procedure TBoxFechamentoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FecharDs;
end;

procedure TBoxFechamentoPedidos.FormShow(Sender: TObject);
begin
  AbrirDS;
end;

procedure TBoxFechamentoPedidos.PedidoExit(Sender: TObject);
begin
if Pedido.Text = '' then
   Pedido.Text := '0';
idPedido := StrToInt(Pedido.Text);
if StrtoInt(pedido.Text) = 0 then
  begin
   SpeedButton1.Click;
   Pedido.SetFocus;
  end
else
  begin
    with tblPedidoVeiculos do
      begin
       if idPedido<>0 then
         begin
          Close;
          parambyname( 'idPedido' ).AsInteger := idPedido;
          Open;
          Last;
          First;
          if recordcount = 0  then
            begin
             showmessage('Pedido inexistente.');
             Pedido.SetFocus;
            end
          else
            begin
             if //(FieldByName('Status').AsString = 'FaturadoTransferido') or
                (FieldByName('Status').AsString = 'FechadoTransferido') or
               // (FieldByName('Status').AsString = 'AprovadoTransferido') or
              //  (FieldByName('Status').AsString = 'FaturadoTransferir') or
                (FieldByName('Status').AsString = 'FechadoTransferir') then
              //  (FieldByName('Status').AsString = 'AprovadoTransferir')  then
                begin
                  showmessage('Pedido transferido.');
                  Pedido.SetFocus;
                end
             else
              begin
               if FieldByName('Status').AsString <> 'Faturado' then
                begin
                  showmessage('Pedido ainda não faturado.');
                  Pedido.SetFocus;
                end;
               if FieldByName('Status').AsString = 'Pendente' then
                begin
                  showmessage('Pedido pendente de autorização.');
                  Pedido.SetFocus;
                end;
               if (FieldByName('Status').AsString = 'Fechado') or
                (FieldByName('Status').AsString = 'FechadoTransferido') or
                (FieldByName('Status').AsString = 'FechadoTransferir')  then
                begin
                  showmessage('Pedido está fechado.');
                  Pedido.SetFocus;
                end;
              end;
            end;
         end;
      end;
   END;
    With tblPedidoVeiculosRecebimento do
     begin
       Close;
       ParamByName('idPedidoVeiculos').AsInteger := StrToInt(Pedido.Text);
       Open;
       First;
       {Busca soma do pedido}
       IBQuery1.Close;
       IBQuery1.SQL.Clear;
       IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_devido) as Valor');
       IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
       IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
       IBQuery1.Sql.Add(':idPedidoVeiculos');
       IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
       IBQuery1.Open;
       TotalPedido.Text := IBQuery1.FieldByName('Valor').AsString;
       {Busca valores recebidos do pedido}
       IBQuery1.Close;
       IBQuery1.SQL.Clear;
       IBQuery1.Sql.Add('select sum(Pedido_Veiculos_recebimento.valor_recebido) as Valor');
       IBQuery1.SQL.Add('from Pedido_Veiculos_Recebimento');
       IBQuery1.SQL.Add('where Pedido_Veiculos_Recebimento.Id_Pedido_Veiculos =');
       IBQuery1.Sql.Add(':idPedidoVeiculos');
       IBQuery1.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedido);
       IBQuery1.Open;
       ValoresRecebidos.Text := IBQuery1.FieldByName('Valor').AsString;
       BtnConfirma.SetFocus;
     end;

end;

procedure TBoxFechamentoPedidos.PedidoKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFechamentoPedidos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de veículos','Pedido_veiculos',
      ['Id_Pedido_veiculos','Chassi','Id_Cliente','Id_Concessionaria'],
      ['Sequência:','Chassi:','Cliente:','Concessionária:',''],
      'Chassi','Id_pedido_veiculos',Fdb1.SQLConnection1,'Status =','Faturado','');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('idPedido').AsInteger := StrToInt(Retorno);
        Open;
        Pedido.Text := tblPedidoVeiculos.FieldByName('Id_Pedido_veiculos').Text;
     end;
     Pedido.SetFocus;
end;

procedure TBoxFechamentoPedidos.tblPedidoVeiculosRecebimentoAfterCancel(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFechamentoPedidos.tblPedidoVeiculosRecebimentoAfterPost(
  DataSet: TDataSet);
begin
 FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFechamentoPedidos.FecharDs;
begin
  DataSourcePedidoVeiculos.Dataset.Close;
  DataSourcePedidoVeiculosRecebimento.Dataset.Close;
  IBQuery1.Close;
end;

procedure TBoxFechamentoPedidos.AbrirDs;
begin
  DataSourcePedidoVeiculos.Dataset.Open;
  DataSourcePedidoVeiculosRecebimento.Dataset.Open;
end;

end.

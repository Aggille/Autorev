unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery, ComCtrls,
  JvExComCtrls, JvProgressBar, JvDBProgressBar;

type
  TMenu1 = class(TForm)
    Panel1: TPanel;
    NovoIdConcessionaria: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    Label2: TLabel;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Despesas;
    procedure Banco;
    procedure Caixa;
    procedure veiculos;
    procedure PedidoVeiculos;
    procedure PedidoveiculosAcessorios;
    procedure PedidoVeiculosRecebimento;
    procedure Clientes;
    procedure Creceber;
    procedure Pecas;
    procedure Pecas2;
    procedure Clientes2;
    procedure LerGravarPecas;
    procedure LerGravarCliente;
    procedure PecasMovimentacao;
    Procedure PecasEstoque;
    procedure Atendimento;
    procedure AtendimentoPecas;
    procedure AtendimentoServicos;
    procedure AtendimentoRecebimento;
    procedure Nofisa;
    procedure NofisaFaturas;
    procedure Sada;
    procedure Seda;
    function tiraAcento(palavra: String): String;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id : Integer;
  end;

var
  Menu1: TMenu1;

implementation

uses FDBNovo, FDBVelho;

{$R *.dfm}

procedure TMenu1.BitBtn1Click(Sender: TObject);
begin
  if StrToInt(NovoIdConcessionaria.Text) < 2 then
   showmessage('Preencha o novo id.')
  else
//  Seda;
//  Sada;
//  NofisaFaturas;
//  Nofisa;

//  AtendimentoRecebimento
//   AtendimentoServicos;

//  AtendimentoPecas;

//  Atendimento;

//  PecasEstoque;
//  PecasMovimentacao;
//  PECAS2; //(usar se tiver alguma peca na tabela velha sem novo_id_pecas
//  Pecas;
//  Creceber;
//   PedidoVeiculosRecebimento;
//   PedidoVeiculosAcessorios;
//  PedidoVeiculos;
 //  Veiculos;
//   Caixa;
//   Banco;
//   despesas;
//  Clientes2; //(usar se tiver algum Cliente na tabela velha sem novo_id_cliente
//     Clientes; {com defeito}

end;

procedure TMenu1.Seda;
var
  i: Integer;
  Nomecampo: String;
  IdNofisaVelho : Integer;
  IdNofisaNovo : Integer;
begin
    FdbNovo1.tblSeda.Open;
    FdbVelho1.tblSeda.Open;
    FdbVelho1.tblSeda.First;
     with FdbVelho1.tblSeda do
      begin
       while not eof do
        begin
          FdbNovo1.tblSeda.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_SEDA') and
                (Nomecampo<>'ID_CONCESSIONARIA') and
                (NomeCampo <> 'ID_NOFI') then

              FdbNovo1.tblSeda.FieldByName(NomeCampo).value :=
                FdbVelho1.tblSeda.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblseDA.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;

         //Pega o Novo_ID_nOFISAo
         IdNofisaVelho := FieldByName('id_Nofi').AsInteger;
         with FDbVelho1.tblNofisa1 do
         begin
            Close;
            ParamByName('id').AsInteger := idNofisaVelho;
            Open;
            idNofisaNovo := FieldByName('Novo_Id_Nofisa').AsInteger;
            Close;
         end;

          fdbNovo1.tblSeda.FieldByName('id_Nofi').AsInteger :=
            idNofisaNovo;

          FdbNovo1.tblSeda.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Sada;
var
  i: Integer;
  Nomecampo: String;
  IdNofisaVelho : Integer;
  IdNofisaNovo : Integer;
begin
    FdbNovo1.tblSada.Open;
    FdbVelho1.tblSada.Open;
    FdbVelho1.tblSAda.First;
     with FdbVelho1.tblSada do
      begin
       while not eof do
        begin
          FdbNovo1.tblSada.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_SADA') and
                (Nomecampo<>'ID_CONCESSIONARIA') and
                (NomeCampo <> 'ID_NOFISA') then

              FdbNovo1.tblSada.FieldByName(NomeCampo).value :=
                FdbVelho1.tblSAda.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblsADA.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;

         //Pega o Novo_ID_nOFISAo
         IdNofisaVelho := FieldByName('id_Nofisa').AsInteger;
         with FDbVelho1.tblNofisa1 do
         begin
            Close;
            ParamByName('id').AsInteger := idNofisaVelho;
            Open;
            idNofisaNovo := FieldByName('Novo_Id_Nofisa').AsInteger;
            Close;
         end;

          fdbNovo1.tblSada.FieldByName('id_Nofisa').AsInteger :=
            idNofisaNovo;

          FdbNovo1.tblSada.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.NofisaFaturas;
var
  i: Integer;
  Nomecampo: String;
  IdNofisaVelho : Integer;
  IdNofisaNovo : Integer;
begin
    FdbNovo1.tblNofisaFaturas.Open;
    FdbVelho1.tblNofisaFaturas.Open;
    FdbVelho1.tblNofisaFaturas.First;
     with FdbVelho1.tblNofisaFaturas do
      begin
       while not eof do
        begin
          FdbNovo1.tblNofisaFaturas.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_NOFISA') and
                (NomeCampo <> 'ID_NOFISA_FATURAS') then

              FdbNovo1.tblNofisaFaturas.FieldByName(NomeCampo).value :=
                FdbVelho1.tblNofisaFaturas.FieldByName(NomeCampo).Value;
            end;

         //Pega o Novo_ID_nOFISAo
         IdNofisaVelho := FieldByName('id_Nofisa').AsInteger;
         with FDbVelho1.tblNofisa1 do
         begin
            Close;
            ParamByName('id').AsInteger := idNofisaVelho;
            Open;
            idNofisaNovo := FieldByName('Novo_Id_Nofisa').AsInteger;
            Close;
         end;

          fdbNovo1.tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger :=
            idNofisaNovo;

          FdbNovo1.tblNofisaFaturas.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Nofisa;
var
  i: Integer;
  Nomecampo: String;
  IdCliente : Integer;
  IdClienteNovo : Integer;
begin
    FdbNovo1.tblNofisa.Open;
    FdbVelho1.tblNofisa.Open;
    FdbVelho1.tblNofisa.First;
     with FdbVelho1.tblNofisa do
      begin
       while not eof do
        begin
          FdbNovo1.tblNofisa.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_NOFISA') and
                 (Nomecampo<>'ID_CLIENTES') and
                 (Nomecampo<>'ID_CONCESSIONARIA') and
                 (NomeCampo <> 'NOVO_ID_NOFISA') then

              FdbNovo1.tblNofisa.FieldByName(NomeCampo).value :=
                FdbVelho1.tblNofisa.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblNofisa.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         {Pega um sequence novo para nofisa}
         IBQuery6.Open;
         ID := IBQuery6.FieldByName('id').AsInteger;
         IBQuery6.Close;
          fdbNovo1.tblNofisa.FieldByName('id_Nofisa').AsInteger := Id;
          //buscar o novo id_cliente
         IdCliente := FieldByName('id_Clientes').AsInteger;
         with FDbVelho1.tblClientes1 do
         begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
         end;
          fdbNovo1.tblNofisa.FieldByName('id_Clientes').AsInteger :=
            idClienteNovo;
          //buscar o novo id_Vendedor
         IdCliente := FieldByName('Vendedor').AsInteger;
         with FDbVelho1.tblClientes1 do
         begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
         end;
          fdbNovo1.tblNofisa.FieldByName('Vendedor').AsInteger :=
            idClienteNovo;

          FdbNovo1.tblNofisa.Post;
          FdbVelho1.tblNofisa.Edit;
          fdbVelho1.tblNofisa.FieldByName('Novo_id_Nofisa').AsInteger :=
            Id;
          FdbVELHO1.tblNofisa.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.AtendimentoRecebimento;
var
  i: Integer;
  Nomecampo: String;
  IdpecasVelho : Integer;
  IdPecasNovo : Integer;
begin
    FdbNovo1.tblAtendimentoRecebimento.Open;
    FdbVelho1.tblAtendimentoRecebimento.Open;
    FdbVelho1.tblAtendimentoRecebimento.First;
     with FdbVelho1.tblAtendimentoRecebimento do
      begin
       while not eof do
        begin
          FdbNovo1.tblAtendimentoRecebimento.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_ATENDIMENTO') and
                (NomeCampo <> 'ID_ATENDIMENTO_RECEBIMENTO') then

              FdbNovo1.tblAtendimentoRecebimento.FieldByName(NomeCampo).value :=
                FdbVelho1.tblAtendimentoRecebimento.FieldByName(NomeCampo).Value;
            end;

         //Pega o Novo_ID_Atendimento
         IdPecasVelho := FieldByName('id_Atendimento').AsInteger;
         with FDbVelho1.tblAtendimento1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Atendimento').AsInteger;
            Close;
         end;

          fdbNovo1.tblAtendimentoRecebimento.FieldByName('id_Atendimento').AsInteger :=
            idPecasNovo;


          FdbNovo1.tblAtendimentoRecebimento.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.AtendimentoServicos;
var
  i: Integer;
  Nomecampo: String;
  IdpecasVelho : Integer;
  IdPecasNovo : Integer;
begin
    FdbNovo1.tblAtendimentoServicos.Open;
    FdbVelho1.tblAtendimentoServicos.Open;
    FdbVelho1.tblAtendimentoServicos.First;
     with FdbVelho1.tblAtendimentoServicos do
      begin
       while not eof do
        begin
          FdbNovo1.tblAtendimentoServicos.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_ATENDIMENTO') and
                (NomeCampo <> 'ID_ATENDIMENTO_SERVICOS') and
                (NomeCampo <> 'ID_CONCESSIONARIA') then

              FdbNovo1.tblAtendimentoServicos.FieldByName(NomeCampo).value :=
                FdbVelho1.tblAtendimentoServicos.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblAtendimentoServicos.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         //Pega o Novo_ID_Atendimento
         IdPecasVelho := FieldByName('id_Atendimento').AsInteger;
         with FDbVelho1.tblAtendimento1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Atendimento').AsInteger;
            Close;
         end;

          fdbNovo1.tblAtendimentoServicos.FieldByName('id_Atendimento').AsInteger :=
            idPecasNovo;


          FdbNovo1.tblAtendimentoServicos.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;


procedure TMenu1.AtendimentoPecas;
var
  i: Integer;
  Nomecampo: String;
  IdpecasVelho : Integer;
  IdPecasNovo : Integer;
begin
    FdbNovo1.tblAtendimentoPecas.Open;
    FdbVelho1.tblAtendimentoPecas.Open;
    FdbVelho1.tblAtendimentoPecas.First;
     with FdbVelho1.tblAtendimentoPecas do
      begin
       while not eof do
        begin
          FdbNovo1.tblAtendimentoPecas.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_ATENDIMENTO') and
                (NomeCampo <> 'ID_PECAS') and
                (NomeCampo <> 'ID_ATENDIMENTO_PECAS') and
                (NomeCampo <> 'ID_CONCESSIONARIA') then

              FdbNovo1.tblAtendimentoPecas.FieldByName(NomeCampo).value :=
                FdbVelho1.tblAtendimentoPecas.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblAtendimentoPecas.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
        //Pega Novo_Id_pecas
         IdPecasVelho := FieldByName('id_Pecas').AsInteger;
         with FDbVelho1.tblPecas1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Pecas').AsInteger;
            Close;
         end;
          fdbNovo1.tblAtendimentoPecas.FieldByName('id_Pecas').AsInteger :=
            idPecasNovo;
         //Pega o Novo_ID_Atendimento
         IdPecasVelho := FieldByName('id_Atendimento').AsInteger;
         with FDbVelho1.tblAtendimento1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Atendimento').AsInteger;
            Close;
         end;

          fdbNovo1.tblAtendimentoPecas.FieldByName('id_Atendimento').AsInteger :=
            idPecasNovo;


          FdbNovo1.tblAtendimentoPecas.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Atendimento;
var
  i: Integer;
  Nomecampo: String;
  IdCliente : Integer;
  IdClienteNovo : Integer;
begin
    FdbNovo1.tblAtendimento.Open;
    FdbVelho1.tblAtendimento.Open;
    FdbVelho1.tblAtendimento.First;
     with FdbVelho1.tblAtendimento do
      begin
       while not eof do
        begin
          FdbNovo1.tblAtendimento.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_ATENDIMENTO') and
                 (NomeCampo <> 'NOVO_ID_ATENDIMENTO') then

              FdbNovo1.tblAtendimento.FieldByName(NomeCampo).value :=
                FdbVelho1.tblAtendimento.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblAtendimento.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         {Pega um sequence novo para veiculos}
         IBQuery5.Open;
         ID := IBQuery5.FieldByName('id').AsInteger;
         IBQuery5.Close;
          fdbNovo1.tblAtendimento.FieldByName('id_Atendimento').AsInteger := Id;
          //buscar o novo id_cliente
         IdCliente := FieldByName('id_Clientes').AsInteger;
         with FDbVelho1.tblClientes1 do
         begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
         end;
          fdbNovo1.tblAtendimento.FieldByName('id_Clientes').AsInteger :=
            idClienteNovo;
          //buscar o novo id_mecanico
         IdCliente := FieldByName('id_Mecanico').AsInteger;
         with FDbVelho1.tblClientes1 do
         begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
         end;
          fdbNovo1.tblAtendimento.FieldByName('id_Mecanico').AsInteger :=
            idClienteNovo;

          FdbNovo1.tblAtendimento.Post;
          FdbVelho1.tblAtendimento.Edit;
          fdbVelho1.tblAtendimento.FieldByName('Novo_id_Atendimento').AsInteger :=
            Id;
          FdbVELHO1.tblAtendimento.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.PecasEstoque;
var
  i: Integer;
  Nomecampo: String;
  IdpecasVelho : Integer;
  IdPecasNovo : Integer;
begin
    FdbNovo1.tblPecasEstoque.Open;
    FdbVelho1.tblPecasEstoque.Open;
    FdbVelho1.tblPecasEstoque.First;
     with FdbVelho1.tblPecasEstoque do
      begin
       while not eof do
        begin
          FdbNovo1.tblPecasEstoque.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_PECAS_ESTOQUE') and
                (NomeCampo <> 'ID_PECAS') then

              FdbNovo1.tblPecasEstoque.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPecasEstoque.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblPecasEstoque.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;

         IdPecasVelho := FieldByName('id_Pecas').AsInteger;
         with FDbVelho1.tblPecas1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Pecas').AsInteger;
            Close;
         end;
          fdbNovo1.tblPecasEstoque.FieldByName('id_Pecas').AsInteger :=
            idPecasNovo;
          FdbNovo1.tblPecasEstoque.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.PecasMovimentacao;
var
  i: Integer;
  Nomecampo: String;
  IdpecasVelho : Integer;
  IdPecasNovo : Integer;
begin
    FdbNovo1.tblPecasMovimentacao.Open;
    FdbVelho1.tblPecasMovimentacao.Open;
    FdbVelho1.tblPecasMovimentacao.First;
     with FdbVelho1.tblPecasMovimentacao do
      begin
       while not eof do
        begin
          FdbNovo1.tblPecasMovimentacao.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_PECAS_MOVIMENTACAO') and
                (NomeCampo <> 'ID_PECAS') then

              FdbNovo1.tblPecasMovimentacao.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPecasMovimentacao.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblPecasMovimentacao.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;

         IdPecasVelho := FieldByName('id_Pecas').AsInteger;
         with FDbVelho1.tblPecas1 do
         begin
            Close;
            ParamByName('id').AsInteger := idPecasVelho;
            Open;
            idPecasNovo := FieldByName('Novo_Id_Pecas').AsInteger;
            Close;
         end;
          fdbNovo1.tblPecasMovimentacao.FieldByName('id_Pecas').AsInteger :=
            idPecasNovo;
          FdbNovo1.tblPecasMovimentacao.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Pecas2;
begin
    FdbNovo1.tblPecas.Open;
    FdbVelho1.tblPecas.Open;
    FdbVelho1.tblPecas.First;
     with FdbVelho1.tblPecas do
      begin
       while not eof do
        begin
          if FieldByName('Novo_Id_pecas').AsVariant = null then
             LerGravarPecas;
          Next;
        end;
      end;
      Showmessage('Concluido');
end;

procedure TMenu1.Pecas;
begin
    FdbNovo1.tblPecas.Open;
    FdbVelho1.tblPecas.Open;
    FdbVelho1.tblPecas.First;
     with FdbVelho1.tblPecas do
      begin
       while not eof do
        begin
         //Verificar se a peca existe
         with FDBNovo1.tblPecas do
          begin
           Close;
           ParamByName('idCodigo').AsString :=
             FDBVelho1.tblPecas.FieldByName('Codigo').AsString;
           Open;
           if RecordCount = 0 then
             LerGravarPecas
           else
            begin
             if (not FDBVelho1.tblPecas.FieldByName('Original').AsBoolean) and
                (FDBVelho1.tblPecas.FieldByName('Descricao').AsString <>
                  FDBNovo1.tblPecas.FieldByName('Descricao').ASString) then //descriçao diferente grava
                 LerGravarPecas
             else
              begin
               FDBVelho1.tblPecas.Edit;
               FDBVelho1.tblPecas.FieldByName('Novo_Id_Pecas').AsInteger :=
                  FDBNovo1.tblPecas.FieldByName('Id_Pecas').AsInteger;
               FDBVelho1.tblPecas.Post;
              end;
            end;
         end;
         FDBVelho1.tblPecas.Next;
        end;
      end;
    showmessage('Concluído');
end;

procedure TMenu1.LerGravarPecas;
var
  i: Integer;
  Nomecampo: String;
begin
   with FDBVelho1.tblPecas do
         //Ler e gravar cliente
     begin
          FdbNovo1.tblPecas.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'NOVO_ID_PECAS') and
                (NomeCampo <> 'ID_PECAS') then

              FdbNovo1.tblPecas.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPecas.FieldByName(NomeCampo).Value;
            end;
         {Pega um sequence novo para Pecas}
           IBQuery4.Open;
           ID := IBQuery4.FieldByName('id').AsInteger;
           IBQuery4.Close;
          fdbNovo1.tblPEcas.FieldByName('id_Pecas').AsInteger := Id;
          FdbNovo1.tblPecas.Post;
          FdbVelho1.tblPEcas.Edit;
          fdbVelho1.tblPecas.FieldByName('Novo_id_Pecas').AsInteger :=
            Id;
          FdbVELHO1.tblPecas.Post;
          Next;
        end;
end;

procedure TMenu1.Creceber;
var
  i: Integer;
  Nomecampo: String;
  IdCliente : Integer;
  IdClienteNovo : Integer;
begin
    FdbNovo1.tblCreceber.Open;
    FdbVelho1.tblCreceber.Open;
    FdbVelho1.tblCreceber.First;
     with FdbVelho1.tblCreceber do
      begin
       while not eof do
        begin
          FdbNovo1.tblCreceber.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_CLIENTES') and
                (NomeCampo <> 'ID_CRECEBER') then

              FdbNovo1.tblCreceber.FieldByName(NomeCampo).value :=
                FdbVelho1.tblCreceber.FieldByName(NomeCampo).Value;
            end;

          fdbnovo1.tblCreceber.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;

         IdCliente := FieldByName('id_Clientes').AsInteger;
         with FDbVelho1.tblClientes1 do
          begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
          end;
          fdbNovo1.tblCreceber.FieldByName('id_Clientes').AsInteger :=
            idClienteNovo;
          FdbNovo1.tblCreceber.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Clientes2;
begin
    FdbNovo1.tblClientes.Open;
    FdbVelho1.tblClientes.Open;
    FdbVelho1.tblClientes.First;
     with FdbVelho1.tblClientes do
      begin
       while not eof do
        begin
          if FieldByName('Novo_Id_Clientes').AsVariant = null then
             LerGravarCliente;
          Next;
        end;
      end;
      Showmessage('Concluido');
end;

procedure TMenu1.Clientes;
begin
    FdbNovo1.tblClientes.Open;
    FdbVelho1.tblClientes.Open;
    FdbVelho1.tblClientes.First;
     with FdbVelho1.tblClientes do
      begin
       while not eof do
        begin
 //         edit;
//          fieldByName('novo_id_clientes').AsVariant := null;
//          next;
         //Verificar se o Cliente existe
         with FDBNovo1.tblClientes do
         begin
           Label2.caption := InttoStr(recno);
           label2.visible := False;
           label2.visible := True;
           Close;
           ParamByName('idCPF').AsString :=
             FDBVelho1.tblClientes.FieldByName('Num_CPF').AsString;
           Open;
           if RecordCount = 0 then
            begin
             if FDBVelho1.tblClientes.FieldByName('Num_CPF').AsVariant <> null then
              begin
               LerGravarCliente;
              end
             else
              begin
              // ;
              end
            end
           else
             begin
               FDBVelho1.tblClientes.Edit;
               if FieldByName('Num_CPF').AsVariant <> null then
                 FDBVelho1.tblClientes.FieldByName('Novo_id_Clientes').AsInteger :=
                  FDBNovo1.tblClientes.FieldByName('Id_Clientes').AsInteger
               else
                 FDBVelho1.tblClientes.FieldByName('Novo_id_Clientes').AsVariant := null;
               FDBVelho1.tblClientes.Post;
             end;
         end;
         FDBVelho1.tblClientes.Next;
        end;
      end;
                showmessage('Concluído');
end;

procedure TMEnu1.LerGravarCliente;
var
  i: Integer;
  Nomecampo: String;
begin
   with FDBVelho1.tblClientes do
         //Ler e gravar cliente
     begin
          FdbNovo1.tblClientes.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'NOVO_ID_CLIENTES') and
                (NomeCampo <> 'ID_CLIENTES') then

              FdbNovo1.tblClientes.FieldByName(NomeCampo).value :=
                FdbVelho1.tblClientes.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblClientes.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         {Pega um sequence novo para Cliente}
           IBQuery3.Open;
           ID := IBQuery3.FieldByName('id').AsInteger;
           IBQuery3.Close;
          fdbNovo1.tblClientes.FieldByName('id_Clientes').AsInteger := Id;
          FdbNovo1.tblClientes.Post;
          FdbVelho1.tblClientes.Edit;
          fdbVelho1.tblClientes.FieldByName('Novo_id_Clientes').AsInteger :=
            Id;
          FdbVELHO1.tblClientes.Post;
          Next;

        end;
end;

procedure TMenu1.PedidoVeiculosRecebimento;
var
  i: Integer;
  Nomecampo: String;
  IdVeiculosVelho : Integer;
  IdVeiculosNovo : Integer;
begin
    FdbNovo1.tblPedidoVeiculosRecebimento.Open;
    FdbVelho1.tblPedidoVeiculosRecebimento.Open;
    FdbVelho1.tblPedidoVeiculosRecebimento.First;
     with FdbVelho1.tblPedidoVeiculosRecebimento do
      begin
       while not eof do
        begin
          FdbNovo1.tblPedidoVeiculosRecebimento.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_PEDIDO_VEICULOS_RECEBIMENTO') and
                (NomeCampo <> 'ID_PEDIDO_VEICULOS') then

              FdbNovo1.tblPedidoVeiculosRecebimento.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPedidoVeiculosRecebimento.FieldByName(NomeCampo).Value;
            end;
         IdVeiculosVelho := FieldByName('id_PEDIDO_veiculos').AsInteger;
         with FDbVelho1.tblPedidoVeiculos1 do
         begin
            Close;
            ParamByName('id').AsInteger := idVeiculosVelho;
            Open;
            idVeiculosNovo := FieldByName('Novo_Id_Pedido_Veiculos').AsInteger;
            Close;
         end;
          fdbNovo1.tblPedidoVeiculosRecebimento.FieldByName('id_Pedido_veiculos').AsInteger :=
            idVeiculosNovo;
          FdbNovo1.tblPedidoVeiculosRecebimento.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.PEdidoVeiculosAcessorios;
var
  i: Integer;
  Nomecampo: String;
  IdVeiculosVelho : Integer;
  IdVeiculosNovo : Integer;
begin
    FdbNovo1.tblPedidoVeiculosAcessorios.Open;
    FdbVelho1.tblPedidoVeiculosAcessorios.Open;
    FdbVelho1.tblPedidoVeiculosAcessorios.First;
     with FdbVelho1.tblPedidoVeiculosAcessorios do
      begin
       while not eof do
        begin
          FdbNovo1.tblPedidoVeiculosAcessorios.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_PEDIDO_VEICULOS_ACESSORIOS') and
                (NomeCampo <> 'ID_PEDIDO_VEICULOS') then

              FdbNovo1.tblPedidoVeiculosAcessorios.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPedidoVeiculosAcessorios.FieldByName(NomeCampo).Value;
            end;
         IdVeiculosVelho := FieldByName('id_PEDIDO_veiculos').AsInteger;
         with FDbVelho1.tblPedidoVeiculos1 do
         begin
            Close;
            ParamByName('id').AsInteger := idVeiculosVelho;
            Open;
            idVeiculosNovo := FieldByName('Novo_Id_Pedido_Veiculos').AsInteger;
            Close;
         end;
          fdbNovo1.tblPedidoVeiculosAcessorios.FieldByName('id_Pedido_veiculos').AsInteger :=
            idVeiculosNovo;
          FdbNovo1.tblPedidoVeiculosAcessorios.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.PedidoVeiculos;
var
  i: Integer;
  Nomecampo: String;
  IdVeiculosVelho : Integer;
  IdVeiculosNovo : Integer;
begin
    FdbNovo1.tblPedidoVeiculos.Open;
    FdbVelho1.tblPedidoVeiculos.Open;
    FdbVelho1.tblPedidoVeiculos.First;
     with FdbVelho1.tblPedidoVeiculos do
      begin
       while not eof do
        begin
          FdbNovo1.tblPedidoVeiculos.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_PEDIDO_VEICULOS') and
                (NomeCampo <> 'NOVO_ID_PEDIDO_VEICULOS') then

              FdbNovo1.tblPedidoVeiculos.FieldByName(NomeCampo).value :=
                FdbVelho1.tblPedidoVeiculos.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblPedidoVeiculos.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         {Pega um sequence novo para veiculos}
         IBQuery2.Open;
         Id := IBQuery2.FieldByName('id').AsInteger;
         IBQuery2.Close;
         IdVeiculosVelho := FieldByName('id_veiculos').AsInteger;
         with FDbVelho1.tblveiculos1 do
         begin
            Close;
            ParamByName('id').AsInteger := idVeiculosVelho;
            Open;
            idVeiculosNovo := FieldByName('Novo_Id_Veiculos').AsInteger;
            Close;
         end;
          fdbNovo1.tblPedidoVeiculos.FieldByName('id_veiculos').AsInteger :=
            idVeiculosNovo;
          fdbNovo1.tblPedidoveiculos.FieldByName('id_pedido_veiculos').AsInteger := Id;
          FdbNovo1.tblPedidoVeiculos.Post;
          FdbVelho1.tblPedidoVeiculos.Edit;
          fdbVelho1.tblPedidoveiculos.FieldByName('Novo_id_pedido_veiculos').AsInteger :=
            Id;
          FdbVELHO1.tblPedidoVeiculos.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

procedure TMenu1.Veiculos;
var
  i: Integer;
  Nomecampo: String;
begin
    FdbNovo1.tblVeiculos.Open;
    FdbVelho1.tblVeiculos.Open;
    FdbVelho1.tblVeiculos.First;
     with FdbVelho1.tblVeiculos do
      begin
       while not eof do
        begin
          FdbNovo1.tblVeiculos.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if (Nomecampo<>'ID_VEICULOS') and (NomeCampo <> 'NOVO_ID_VEICULOS') then

              FdbNovo1.tblVeiculos.FieldByName(NomeCampo).value :=
                FdbVelho1.tblVeiculos.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblVeiculos.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
         {Pega um sequence novo para veiculos}
         IBQuery1.Open;
         ID := IBQuery1.FieldByName('id').AsInteger;
         IBQuery1.Close;
          fdbNovo1.tblveiculos.FieldByName('id_veiculos').AsInteger := Id;
          FdbNovo1.tblVeiculos.Post;
          FdbVelho1.tblVeiculos.Edit;
          fdbVelho1.tblveiculos.FieldByName('Novo_id_veiculos').AsInteger :=
            Id;
          FdbVELHO1.tblVeiculos.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

PROCEDURE TMenu1.CAIXA;
var
  i: Integer;
  Nomecampo: String;
BEGIN
    FdbNovo1.tblCaixa.Open;
    FdbVelho1.tblCaixa.Open;
    FdbVelho1.tblCaixa.First;
     with FdbVelho1.tblCaixa do
      begin
       while not eof do
        begin
          FdbNovo1.tblCaixa.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if Nomecampo<>'ID_CAIXA' then

              FdbNovo1.tblCaixa.FieldByName(NomeCampo).value :=
                FdbVelho1.tblCaixa.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblCaixa.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
          FdbNovo1.tblCaixa.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
END;

procedure TMenu1.Banco;
var
  i: Integer;
  Nomecampo: String;
  IdCliente : Integer;
  IdClienteNovo : Integer;  
begin
     FdbNovo1.tblbanco.Open;
     FdbVelho1.tblbanco.Open;
     FdbVelho1.tblBanco.First;
     with FdbVelho1.tblBanco do
      begin
       while not eof do
        begin
          FdbNovo1.tblBanco.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if Nomecampo<>'ID_BANCO' then
                FdbNovo1.tblBanco.FieldByName(NomeCampo).value :=
                  FdbVelho1.tblBanco.FieldByName(NomeCampo).Value;
            end;
           fdbnovo1.tblBanco.FieldByName('id_Concessionaria').AsString :=
             NovoIdConcessionaria.Text;

         IdCliente := FieldByName('id_Clientes').AsInteger;
         with FDbVelho1.tblClientes1 do
          begin
            Close;
            ParamByName('idCliente').AsInteger := idCliente;
            Open;
            idClienteNovo := FieldByName('Novo_Id_Clientes').AsInteger;
            Close;
          end;
          fdbNovo1.tblBanco.FieldByName('id_Clientes').AsInteger :=
            idClienteNovo;

          FdbNovo1.tblBanco.Post;
          Next;
        end;
          showmessage('Concluído');
      end;
end;

PROCEDURE tMenu1.Despesas;
var
  i: Integer;
  Nomecampo: String;
   begin
     FdbNovo1.tblDespesas.Open;
     FdbVelho1.tblDespesas.Open;
     FdbVelho1.tblDespesas.First;
     with FdbVelho1.tblDespesas do
      begin
       while not eof do
        begin
          FdbNovo1.tblDespesas.Insert;
          for I := 0 to FieldCount - 1 do
            begin
              NomeCampo := Fields[i].FieldName;
              if Nomecampo<>'ID_DESPESAS' then

              FdbNovo1.tblDespesas.FieldByName(NomeCampo).value :=
                FdbVelho1.tblDespesas.FieldByName(NomeCampo).Value;
            end;
          fdbnovo1.tblDespesas.FieldByName('id_Concessionaria').AsString :=
            NovoIdConcessionaria.Text;
          FdbNovo1.tblDespesas.Post;

          Next;
        end;
          showmessage('Concluído');
      end;
end;
procedure TMenu1.FormShow(Sender: TObject);
begin
  NovoIdConcessionaria.Text := '2';
end;

function TMenu1.tiraAcento(palavra: String): String;
var
acentos, sacentos: array[ 1..43] of String;
x:Integer;
begin


  acentos[01] := 'á';
  acentos[02] := 'é';
  acentos[03] := 'í';
  acentos[04] := 'ó';
  acentos[05] := 'ú';
  acentos[06] := 'Á';
  acentos[07] := 'É';
  acentos[08] := 'Í';
  acentos[09] := 'Ó';
  acentos[10] := 'Ú';
  acentos[11] := 'â';
  acentos[12] := 'ê';
  acentos[13] := 'î';
  acentos[14] := 'ô';
  acentos[15] := 'ô';
  acentos[16] := 'Â';
  acentos[17] := 'Ê';
  acentos[18] := 'Î';
  acentos[19] := 'Ô';
  acentos[20] := 'Û';
  acentos[21] := 'ã';
  acentos[22] := 'õ' ;
  acentos[23] := 'Ã';
  acentos[24] := 'Õ';
  acentos[25] := 'à';
  acentos[26] := 'è';
  acentos[27] := 'ì';
  acentos[28] := 'ò';
  acentos[29] := 'ù';
  acentos[30] := 'À';
  acentos[31] := 'È';
  acentos[32] := 'Ì';
  acentos[33] := 'Ò';
  acentos[34] := 'Ù';
  acentos[35] := 'ç';
  acentos[36] := 'Ç';
  acentos[37] := 'ä';
  acentos[38] := 'ü';
  acentos[39] := 'Ä';
  acentos[40] := 'Ü';
  acentos[41] := 'º';
  acentos[42] := 'ª';
  acentos[43] := '€';

  sacentos[01] := 'a';
  sacentos[02] := 'e';
  sacentos[03] := 'i';
  sacentos[04] := 'o';
  sacentos[05] := 'u';
  sacentos[06] := 'A';
  sacentos[07] := 'E';
  sacentos[08] := 'I';
  sacentos[09] := 'O';
  sacentos[10] := 'U';
  sacentos[11] := 'a';
  sacentos[12] := 'e';
  sacentos[13] := 'i';
  sacentos[14] := 'o';
  sacentos[15] := 'u';
  sacentos[16] := 'A';
  sacentos[17] := 'E';
  sacentos[18] := 'I';
  sacentos[19] := 'O';
  sacentos[20] := 'U';
  sacentos[21] := 'a';
  sacentos[22] := 'o';
  sacentos[23] := 'A';
  sacentos[24] := 'O';
  sacentos[25] := 'a';
  sacentos[26] := 'e';
  sacentos[27] := 'i';
  sacentos[28] := 'o';
  sacentos[29] := 'u';
  sacentos[30] := 'A';
  sacentos[31] := 'E';
  sacentos[32] := 'I';
  sacentos[33] := 'O';
  sacentos[34] := 'U';
  sacentos[35] := 'c';
  sacentos[36] := 'C';
  sacentos[37] := 'a';
  sacentos[38] := 'u';
  sacentos[39] := 'A';
  sacentos[40] := 'U';
  sacentos[41] := 'o';
  sacentos[42] := 'a';
  sacentos[43] := 'C';

  for x := 1 to 43 do
    palavra := StringReplace( palavra,acentos[x], sacentos[x], [rfReplaceAll] );

  result := palavra;

end;

end.

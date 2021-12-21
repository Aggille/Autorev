unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery, ComCtrls,
  inifiles, JvExComCtrls, JvProgressBar, JvDBProgressBar;

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
    procedure Clientes;
    procedure Clientes2;
    procedure Clientes3;
    procedure clientes4;
    procedure Pecas;
    procedure PecasMovimentacao;
    Procedure PecasEstoque;
    procedure veiculos;
    procedure Creceber;
    procedure localizacoes;
    procedure BitBtn1Click(Sender: TObject);
    procedure NCM;
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

uses FDBNovo, Biblioteca;

{$R *.dfm}

procedure TMenu1.BitBtn1Click(Sender: TObject);
begin
//clientes4;  //criar desconto igual a 0

// Clientes3; // data de nascimento


//  PecasMovimentacao;
//  Creceber; feito
//   Veiculos; feito
// NCM;  feito
//  Localizacoes; Feito
//  PecasEstoque; FEITO
//  Pecas;             FEITO

     Clientes;           //               FEITO
  Clientes2; //são os endereços FEITO
end;

procedure TMenu1.NCM;
begin
 with FDBNOVO1.tblPecas3 do
 begin
   Open;
   First;
   while not eof do
      begin
        if FieldByName('NCM').AsString = '8714.19.00' then
         begin
           Edit;
           FieldByName('Subst_trib').AsString := 'T';
           FieldByName('CFOP1').AsString := '5405';
           FieldByName('CFOP2').AsString := '6404';
           FieldByName('CST').AsString := '060';
           Post;
         end;
        
        Next;
      end;
 end;
 Showmessage('Concluído');
end;

procedure TMenu1.Localizacoes;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  idPecas, idconcessionaria, CodigoSGS, Prateleira, Escaninho, Corredor : String;
begin
  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Localizacao.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            Prateleira :=          ListaCampos [2];
            Escaninho :=           ListaCampos [3];
            if ListaCampos.Count = 5 then
              Corredor :=            ListaCampos [4]
            else
              Corredor :=         '';
            with FDBNovo1.tblPecas2 do
              begin
                Close;
                ParamByName('idCodigo').AsString := CodigoSGS;
                Open;
                if FDBNovo1.tblPecas2.RecordCount <> 0 then
                  idPecas := FieldByName('Id_Pecas').AsString
                else
                  idPecas := '0';
              end;
            FDBNovo1.tblPecasLocalizacao.Open;
            with FDBNovo1.tblPecasLocalizacao do
              begin
                Insert;
                if idConcessionaria = '732' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 4;
                 end;
                if idConcessionaria = '735' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 5;
                 end;
                if idConcessionaria = '738' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 6;
                 end;
                FieldByName('Id_Pecas').AsString := IdPecas;
                FieldByName('Prateleira').AsString := Prateleira;
                FieldByName('Escaninho_Gaveta').AsString := Escaninho;
                FieldByName('Corredor').AsString := Corredor;
                FieldByName('Codigo_SGS').AsString := CodigoSGS;                
                post;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Creceber;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  idconcessionaria, CodigoSGS, Parcela, Situacao, Origem, SequenciaNF, Historico, Emissao, Vencimento, ValorTitulo, ValorPago, CodigoSGS2, IdCliente : String;
begin
  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'titulos.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            Parcela :=             ListaCampos [2];
            Situacao :=            ListaCampos [3];
            Origem :=              ListaCampos [4];
            SequenciaNF :=         ListaCampos [5];
            Historico :=           ListaCampos [6];
            Emissao :=             ListaCampos [7];
            Vencimento :=          ListaCampos [8];
            ValorTitulo :=         ListaCampos [9];
            ValorPago :=           ListaCampos [10];
            CodigoSGS2 :=          ListaCampos [11];
            with FDBNovo1.tblClientes2 do
              begin
                Close;
                ParamByName('idCodigoSGS').AsString := CodigoSGS2;
                Open;
                if FDBNovo1.tblClientes2.RecordCount <> 0 then
                  idCliente := FieldByName('Id_Clientes').AsString
                else
                  idCliente := '0';
              end;
            FDBNovo1.tblCreceber.Open;
            with FDBNovo1.tblCreceber do
              begin
                Insert;
                if idConcessionaria = '732' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 4;
                 end;
                if idConcessionaria = '735' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 5;
                 end;
                if idConcessionaria = '738' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 6;
                 end;
                FieldByName('Id_Clientes').AsString := IdCliente;
                FieldByName('Documento').AsString := SequenciaNF;
                FieldByName('Parcela').AsString := Parcela;
                if Origem = 'Cheque' then
                  FieldByName('Id_Forma_Pagamento').AsString := '3'
                else
                  FieldByName('Id_Forma_Pagamento').AsString := '2';
                FieldByName('Vencimento').AsString := Vencimento;
                FieldByName('Valor').AsString := ValorTitulo;
                FieldByName('Valor_Pago').AsString := ValorPago;
                if ValorPago <> '' then
                 if StrToFloat(ValorTitulo) - StrToFloat(ValorPago) > 0  then
                  begin
                   FieldByName('Valor').AsFloat := StrToFloat(ValorTitulo) - StrToFloat(ValorPago);
                   FieldByName('Valor_Pago').AsString := '0';
                  end;
                FieldByName('Emissao').AsString := Emissao;
                FieldByName('Total').AsString := ValorTitulo;
                FieldByName('Historico').AsString := Historico +' '+ Origem +' '+Situacao;
                FieldByName('Boleto_emitido').AsString := 'F';
                FieldByName('Status').AsString := 'Processado';
                if Situacao = 'Pago' then
                 begin
                  FieldByName('Status').AsString := 'Recebido';
                  FieldByName('Pagamento').AsDateTime := StrToDate('01/01/2000');
                 end;
                post;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.FormShow(Sender: TObject);
var
  BancoDados : Tinifile;
  LocalBanco : STRING;
begin
  BancoDados := Tinifile.Create('c:\autorev-sd\autorev.ini');
  LocalBanco := BancoDados.ReadString('BancoDeDados','path','');
//LocalBanco := 'localhost:c:\autorev\database\autorev.fdb';
  showmessage(localbanco);
//  ip.Text := localbanco;
  FDBnovo1.IBDatabase.DatabaseName := LocalBanco;
//  FDBnovo1.SQLConnection1.Params[8] := 'Database=' + LocalBanco;
end;

procedure TMenu1.Veiculos;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  idconcessionaria, CodigoSGS, Origem, Chassi, Placa, Marca, Modelo, Modelo2, Cor, Combustivel, AnoFabricacao, AnoModelo, Km, Renavam, Renavam2, Motor, PrecoVenda : String;
begin
  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Veiculos.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            Origem :=              ListaCampos [2];
            Chassi :=              ListaCampos [3];
            Placa :=               ListaCampos [4];
            Marca :=               ListaCampos [5];
            Modelo :=              ListaCampos [6];
            Modelo2 :=             ListaCampos [7];
            Cor :=                 ListaCampos [8];
            Combustivel :=         ListaCampos [9];
            AnoFabricacao :=       ListaCampos [10];
            AnoModelo :=           ListaCampos [11];
            Km :=                  ListaCampos [12];
            Renavam :=             ListaCampos [13];
            Renavam2 :=            ListaCampos [14];
            Motor :=               ListaCampos [15];
            if ListaCampos.Count = 17 then
              PrecoVenda :=        ListaCampos [16]
            else
              PrecoVenda := '0';
            FDBNovo1.tblVeiculos.Open;
            with FDBNovo1.tblVeiculos do
              begin
                Insert;
                if idConcessionaria = '732' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 4;
                  FieldByName('Estoque').AsString := 'PORTO ALEGRE';
                  FieldByName('Status').AsString := 'PORTO ALEGRE';
                 end;
                if idConcessionaria = '735' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 5;
                  FieldByName('Estoque').AsString := 'GRAVATAI';
                  FieldByName('Status').AsString := 'GRAVATAI';
                 end;
                if idConcessionaria = '738' then
                 begin
                  FieldByName('Id_Concessionaria').AsInteger := 6;
                  FieldByName('Estoque').AsString := 'SERTORIO';
                  FieldByName('Status').AsString := 'SERTORIO';
                 end;
                FieldByName('Chassi').AsString := Chassi;
                FieldByName('Marca').AsString := Marca;
                FieldByName('Modelo').AsString := Modelo + Modelo2;
                FieldByName('Cor').AsString := Cor;
                FieldByName('Combustivel').AsString := 'GASOLINA';
                FieldByName('Ano_Fabricacao').AsString := AnoFabricacao;
                FieldByName('Ano_Modelo').AsString := AnoModelo;
                FieldByName('Placa').AsString := Placa;
                FieldByName('Km').AsString := Km;
                if origem = 'Novo' then
                  begin
                   FieldByName('Renavam').AsString := Renavam2;
                   FieldByName('Origem').AsString := 'N';
                   FieldByName('CST').AsString := '060';
                  end
                else
                  begin
                   FieldByName('Renavam').AsString := Renavam;
                   FieldByName('Origem').AsString := 'U';
                   FieldByName('CST').AsString := '020';
                  end;
                FieldByName('Motor').AsString := Motor;
                FieldByName('Preco').AsString := PrecoVenda;
                FieldByName('Consig').AsString := 'N';                                                                
                post;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.PecasMovimentacao;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  idconcessionaria, CodigoSGS, QuantidadeAnterior,QuantidadeAtual,QuantidadeMovimento, DataMovimento,CustoMedio : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Movimento_Item.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  FDBNovo1.tblPecasMovimentacao.Open;
  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            QuantidadeAnterior :=  ListaCampos [2];
            QuantidadeAtual :=     ListaCampos [3];
            QuantidadeMovimento:=  ListaCampos [4];
            DataMovimento :=       ListaCampos [5];
            if ListaCampos.Count = 7 then
              CustoMedio :=          ListaCampos [6];
            with FDBNovo1.tblPecas2 do
              begin
                Close;
                ParamByName('idCodigo').AsString := CodigoSGS;
                Open;
                with FDBNovo1.tblPecasMovimentacao do
                  begin
                    Insert;
                    if FDBNovo1.tblPecas.RecordCount <> 0 then
                      FieldByName('Id_Pecas').AsInteger := FDBNovo1.tblPecas2.FieldByName('Id_Pecas').AsInteger
                    else
                      FieldByName('Id_Pecas').AsInteger := 0;
                    if idConcessionaria = '732' then
                      FieldByName('Id_Concessionaria').AsInteger := 4;
                    if idConcessionaria = '735' then
                      FieldByName('Id_Concessionaria').AsInteger := 5;
                    if idConcessionaria = '738' then
                      FieldByName('Id_Concessionaria').AsInteger := 6;
                    if StrToFloat(QuantidadeAtual) - StrToFloat(QuantidadeAnterior) > 0 then
                      FieldByName('Movimento').AsString := 'E'
                    else
                      FieldByName('Movimento').AsString := 'S';
                    FieldByName('Quantidade_Movimentada').AsString := QuantidadeMovimento;
                    FieldByName('Quantidade_Atual').AsString := QuantidadeAtual;
                    FieldByName('Data').AsString := DataMovimento;
                    FieldByName('Custo_Medio').AsString := CustoMedio;
                    post;
                  end;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.PecasEstoque;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  idconcessionaria, CodigoSGS, Quantidade, CustoMedio, CustoAtual, DataUltimaVenda, DataUltimaCompra : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Estoque_Pecas.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
           if ListaCampos.Count = 7 then
            begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            Quantidade :=          ListaCampos [2];
            CustoMedio :=          ListaCampos [3];
            CustoAtual :=          ListaCampos [4];
            DataUltimaVenda :=     ListaCampos [5];
            DataUltimaCompra :=    ListaCampos [6];
            end
            else
            begin
            idConcessionaria :=    ListaCampos [0];
            CodigoSGS :=           ListaCampos [1];
            Quantidade :=          ListaCampos [2];
            CustoMedio :=          ListaCampos [3];
            CustoAtual :=          '';
            DataUltimaVenda :=     ListaCampos [4];
            DataUltimaCompra :=    ListaCampos [5];

            end;
            with FDBNovo1.tblPecas2 do
              begin
                Close;
                ParamByName('idCodigo').AsString := CodigoSGS;
                Open;
                FDBNovo1.tblPecasEstoque.Open;
                with FDBNovo1.tblPecasEstoque do
                  begin
                    Insert;
                    if FDBNovo1.tblPecas2.RecordCount <> 0 then
                      FieldByName('Id_Pecas').AsInteger := FDBNovo1.tblPecas2.FieldByName('Id_Pecas').AsInteger
                    else
                      FieldByName('Id_Pecas').AsInteger := 0;
                    if idConcessionaria = '732' then
                      FieldByName('Id_Concessionaria').AsInteger := 4;
                    if idConcessionaria = '735' then
                      FieldByName('Id_Concessionaria').AsInteger := 5;
                    if idConcessionaria = '738' then
                      FieldByName('Id_Concessionaria').AsInteger := 6;
                    FieldByName('Estoque').AsString := Quantidade;
                    FieldByName('EstoqOS').AsString := '0';
                    FieldByName('Cst_Medio').AsString := CustoMedio;
                    FieldByName('Cst_Atual').AsString := CustoAtual;
                    FieldByName('Ult_Compra').AsString := DataUltimaCompra;
                    FieldByName('Ult_Venda').AsString := DataUltimaVenda;
                    post;
                  end;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Pecas;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  CodigoSGS,Codigo,Descricao,NCM,Substrib,IPI,COFINS_ST,Preco : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'pecas.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin

            CodigoSgs :=   ListaCampos [0];
            Codigo :=      ListaCampos [1];
            if Length(codigo) = 10 then
              Codigo := Codigo + '00';
            if Length(codigo) > 12 then
              Codigo := Copy(Codigo,1,12);
            Descricao :=   ListaCampos [2];
            NCM :=         ListaCampos [3];
            SubsTrib :=    ListaCampos [4];
            if SubsTrib = 'S' then
             Substrib := 'T';
            if Substrib = 'N' then
             substrib := 'F';
            IPI :=         ListaCampos [5];
            COFINS_ST :=   ListaCampos [6];
            if COFINS_ST = 'S' then
              COFINS_ST := 'T';
            if COFINS_ST = 'N' then
              COFINS_ST := 'F';
            Preco :=       ListaCampos [7];
            with FDBNovo1.tblPecas do
              begin
                Close;
                ParamByName('idCodigo').AsString := Codigo;
                Open;
                if FDBNovo1.tblPecas.RecordCount <> 0 then
                  begin
                    with FDBNovo1.tblPecas do
                     begin
                       Edit;
                       FieldByName('Codigo_Sgs').AsInteger := StrToInt(CodigoSgs);
                       post;
                     end;
                  end
                else
                  begin //insert produto novo
                    with FDBNovo1.tblpecas do
                      begin
                        Insert;
                        FieldByName('Codigo').AsString := Codigo;
                        FieldByName('Codigo_Sgs').AsInteger := StrToInt(CodigoSgs);
                        FieldByName('Original').AsString := 'T';
                        FieldByName('Descricao').AsString := Descricao;
                        FieldByName('NCM').AsString := Copy(NCM,1,4)+ '.'+ Copy(NCM,5,2)+ '.'+ Copy(NCM,7,2);
                        FieldByName('Subst_Trib').AsString := SubsTrib;
                        FieldByName('IPI').AsString := IPI;
                        FieldByName('ST_COFINS').AsString := COFINS_ST;
                        FieldByName('Preco').AsString := Preco;
                        FieldByName('Unidade').AsString := 'PC';
                        FieldBYName('Lista').AsString := 'F';
                        FieldByName('Grupo').AsString := '001';
                        if FieldByName('Subst_trib').AsString = 'F' then
                         begin
                          FieldByName('CFOP1').AsString := '5102';
                          FieldByName('CFOP2').AsString := '6102';
                         end;
                        if FieldByName('Subst_trib').AsString = 'T' then
                         begin
                          FieldByName('CFOP1').AsString := '5405';
                          FieldByName('CFOP2').AsString := '6404';
                         end;
                        with FDBNovo1.tblPecyam do
                        begin
                          Close;
                          ParamByName('idCodigo').AsString := Codigo;
                          Open;
                        end;
                        if FdbNovo1.tblPecyam.RecordCount <> 0 then
                          FieldByName('Cod_Proc').AsString :=
                            FDBNovo1.tblPecyam.FieldByName('Origem').AsString
                        else
                          FieldByName('Cod_Proc').AsString := '0';
                            //Item nacional com ICMS CST 000
                        if (FieldByName('Cod_proc').AsString = '0') and (FieldByName('Subst_trib').AsString = 'F') then
                          FDBNovo1.tblPecas.FieldByName('CST').AsString := '000';
                            //Item nacional ICMS subst CST 060
                        if (FieldByName('Cod_proc').AsString = '0') and (FieldByName('Subst_trib').AsString = 'T') then
                          FDBNovo1.tblPecas.FieldByName('CST').AsString := '060';
                            //Item importado com ICMS CST 200
                        if (FieldByName('Cod_proc').AsString <> '0') and (FieldByName('Subst_trib').AsString = 'F') then
                          FDBNovo1.tblPecas.FieldByName('CST').AsString := '200';
                           //Item importado ICMS subst CST 260
                        if (FieldByName('Cod_proc').AsString <> '0') and (FieldByName('Subst_trib').AsString = 'T') then
                          FDBNovo1.tblPecas.FieldByName('CST').AsString := '260';
                        Post;
                      end;
                  end;
              end;
          end;
      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Clientes2;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  codigoSGS, numeroendereco, endereco, complemento,codigoendereco,bairro, estado,cep,nome_municipio : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'enderecos.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            CodigoSGS :=         ListaCampos [0];
            CodigoEndereco :=    ListaCampos [1];
            Endereco :=          ListaCampos [2];
            NumeroEndereco :=    ListaCampos [3];
            Complemento :=       ListaCampos [4];
            Bairro :=            ListaCampos [5];
            CEP :=               ListaCampos [6];
            Nome_municipio :=    ListaCampos [7];
            estado :=            ListaCampos [8];
            with FDBNovo1.tblClientes2 do
              begin
                Close;
                ParamByName('idCodigoSGS').AsString := CodigoSGS;
                Open;
                if FDBNovo1.tblClientes2.RecordCount <> 0 then
                  begin
                    with FDBNovo1.tblClientes2 do
                     begin
                        Edit;
                        if StrToInt(CodigoEndereco) =1 then
                         begin

                          if endereco <> '' then
                           FieldByName('Endereco').ASString := Endereco + ' ' +
                            numeroEndereco + ' ' + Complemento;
                          if (Bairro <> '') and (Bairro <> ' ') then
                           FieldByName('bairro').AsString := bairro;
                          if (nome_municipio <> '') and (nome_municipio <> ' ')then
                           FieldByName('cidade').AsString := nome_municipio;
                          if Estado <> '' then
                           FieldByName('estado').AsString := estado;
                          if CEP <> '' then
                           FieldByName('cep').AsString := cep;
                          if endereco <> '' then
                           FieldByName('COEndereco').ASString := Endereco + ' ' +
                            numeroEndereco + ' ' + Complemento;
                          if (Bairro <> '') and (Bairro <> ' ') then
                            FieldByName('CObairro').AsString := bairro;
                          if (nome_municipio <> '') and (nome_municipio <> ' ')then
                           FieldByName('COcidade').AsString := nome_municipio;
                          if Estado <> '' then
                           FieldByName('COestado').AsString := estado;
                          if CEP <> '' then
                           FieldByName('COcep').AsString := cep;
                         end;
                        if StrToInt(CodigoEndereco) = 2 then
                         begin
                          if endereco <> '' then
                          FieldByName('COEndereco').ASString := Endereco + ' ' +
                            numeroEndereco + ' ' + Complemento;
                          if (Bairro <> '') and (Bairro <> ' ') then
                           FieldByName('CObairro').AsString := bairro;
                          if (nome_municipio <> '') and (nome_municipio <> ' ')then
                           FieldByName('COcidade').AsString := nome_municipio;
                          if Estado <> '' then
                           FieldByName('COestado').AsString := estado;
                          if CEP <> '' then
                           FieldByName('COcep').AsString := cep;
                         end;
                        post;
                     end;
                  end;
              end;
          end;

      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Clientes;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i  : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  codigoSGS, nome, cpf, cnpj,ie,identidade, pai, mae, nascimento,email, telefone,celular : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Clientes.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

//while contaregistros < 10 do
//  begin
      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            cnpj := '';
            cpf := '';
            CodigoSGS :=    ListaCampos [0];
            Nome :=         ListaCampos [1];
            if ListaCampos[2] <> '' then
              CPF :=          Strzero(ListaCampos [2],11);
            if ListaCampos[2] <> '' then
              CPF :=        ColocaPontoseBarrasCPF(CPF) + '    ';
            if ListaCampos[3] <> '' then
              CNPJ :=         Strzero(ListaCampos [3],14);
            if ListaCampos[3] <> '' then
              CNPJ :=        ColocaPontoseBarrasCNPJ(CNPJ);
            IE :=           ListaCampos [4];
            Identidade :=   ListaCampos [5];
            nascimento :=   ListaCampos [6];
            pai :=          ListaCampos [7];
            mae :=          ListaCampos [8];
            email :=        ListaCampos [9];
            Telefone :=     ListaCampos [10];
            Celular :=      ListaCampos [11];
            with FDBNovo1.tblClientes do
              begin
                Close;
                if CNPJ <> '' then
                  ParamByName('idCPF').AsString := CNPJ
                else
                  ParamByName('idCPF').AsString := CPF;
                Open;
                if FDBNovo1.tblClientes.RecordCount = 0 then
                  begin
                    with FDBNovo1.tblClientes do
                     begin
                        Insert;
                        FieldByName('Nome').ASString := Nome;
                        if CPF <> '' then
                         begin
                          FieldByName('CPF').AsString := 'CPF';
                          FieldByName('Num_CPF').AsString := cpf;
                          FieldByName('Identidade').AsString := identidade;
                         end
                        else
                         begin
                          FieldByName('CPF').AsString := 'CNPJ';
                          FieldByName('Num_CPF').AsString := cnpj;
                          FieldByName('Identidade').AsString := ie;
                         end;
                        if PAI = '' then
                          FieldByName('pai').AsString := 'não declarado'
                        else
                          FieldByName('pai').AsString := pai;
                        if mae = '' then
                          FieldByName('mae').AsString := 'não declarado'
                        else
                          FieldByName('mae').AsString := mae;
                        FieldByName('email').AsString := email;
                        FieldByName('fone1').AsString := telefone;
                        FieldByName('fone2').AsString := celular;
                        FieldByName('CodigoSGS').AsString := CodigoSGS;
                        FieldByName('endereco').AsString := 'não declarado';
                        FieldByName('bairro').AsString := 'não declarado';
                        FieldByName('cidade').AsString := 'não declarado';
                        FieldByName('estado').AsString := 'ND';
                        FieldByName('cep').AsString := '1';
                        FieldByName('COendereco').AsString := 'não declarado';
                        FieldByName('CObairro').AsString := 'não declarado';
                        FieldByName('COcidade').AsString := 'não declarado';
                        FieldByName('COestado').AsString := 'ND';
                        FieldByName('cocep').AsString := '1';
                        FieldByName('id_Concessionaria').AsString := '4';
                        FieldByName('Nascimento').AsString := nascimento;
                        if nascimento <> '' then
                          FieldByName('cliente').AsString := 'T';
                        if fieldbYname('Desconto').Value = null then
                          fieldbyname('desconto').asinteger := 0;
                        post;
                     end;
                  end
                else
                  with FDBNovo1.tblClientes do
                   begin
                    Edit;
                    FieldByName('CodigoSgs').AsInteger := StrToInt(CodigoSgs);
                    Post;
                   end;
              end;
          end;

      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Clientes3;
var
  arq : TextFile;
  separador,mCodigo ,Linha  : string ;
  i  : integer ;
  ListaCampos : TStringList ;
  mPrimeiraLinha : boolean ;
  codigoSGS, nome, cpf, cnpj,ie,identidade, pai, mae, nascimento,email, telefone,celular : String;
begin

  ListaCampos := TStringList.Create ;
  Separador := ';';

  AssignFile(arq, 'Clientes.txt');
  Reset(arq);

  mPrimeiraLinha := True ;

  while not Eof(arq) do
  begin

//while contaregistros < 10 do
//  begin
      Readln(arq,Linha);

      if copy ( Linha,Length ( Linha) ,1  ) <> Separador then
         Linha := Linha +Separador ;

      mCodigo := '' ;

      for i :=  1  to   Length ( Linha) do
      begin
        if  Pos(Separador, copy ( Linha,i ,1   ) )  =   0     then
              mCodigo  :=   mCodigo + copy ( Linha,i ,1   )
        else
        begin
           ListaCampos.Add  (  mCodigo );
           mCodigo := '' ;
        end ;

      end;

           //campos estão separados é hora de processar os dados
        if ( mPrimeiraLinha = False )   then
          begin
            cnpj := '';
            cpf := '';
            CodigoSGS :=    ListaCampos [0];
            Nome :=         ListaCampos [1];
            if ListaCampos[2] <> '' then
              CPF :=          Strzero(ListaCampos [2],11);
            if ListaCampos[2] <> '' then
              CPF :=        ColocaPontoseBarrasCPF(CPF) + '    ';
            if ListaCampos[3] <> '' then
              CNPJ :=         Strzero(ListaCampos [3],14);
            if ListaCampos[3] <> '' then
              CNPJ :=        ColocaPontoseBarrasCNPJ(CNPJ);
            IE :=           ListaCampos [4];
            Identidade :=   ListaCampos [5];
            nascimento :=   ListaCampos [6];
            pai :=          ListaCampos [7];
            mae :=          ListaCampos [8];
            email :=        ListaCampos [9];
            Telefone :=     ListaCampos [10];
            Celular :=      ListaCampos [11];
            with FDBNovo1.tblClientes2 do
              begin
                Close;
                ParamByName('idCodigoSGS').AsString := CodigoSGS;
                Open;
                if FDBNovo1.tblClientes2.RecordCount <> 0 then
                  begin
                    with FDBNovo1.tblClientes2 do
                     begin
//                       showmessage(fieldByName('nome')Asatring);
                        Edit;
                        FieldByName('Nascimento').AsString := nascimento;
                        if nascimento <> '' then
                          FieldByName('cliente').AsString := 'T';
                        post;
                     end;
                  end
              end;
          end;

      mPrimeiraLinha := false ;
      ListaCampos.Clear  ;
  end ;
 showmessage('Concluído');
end;

procedure TMenu1.Clientes4;
begin

            with FDBNovo1.tblClientes4 do
              begin
                Open;
                FIRST;
                while not eof do
                begin
                  if fieldbYname('Desconto').Value = null then
                   BEGIN
                     Edit;
                      fieldbyname('desconto').asinteger := 0;
                     post;
                   END;
                  next;
                end;
              end;
 showmessage('Concluído');
end;
end.

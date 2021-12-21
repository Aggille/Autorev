unit NFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrNFe, StdCtrls, Buttons, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,
  ACBrNFeDANFEFR, ACBrBase, ACBrDFeReport, ACBrDFeDANFeReport;

type
  TBoxNFe = class(TForm)
    BtnEmissao: TBitBtn;
    BtnConfiguracoes: TBitBtn;
    BtnGerenciamento: TBitBtn;
    BtnCredDebEstoque: TBitBtn;
    BtnImobilizado: TBitBtn;
    BtnDevolucao: TBitBtn;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEmissaoClick(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure BtnGerenciamentoClick(Sender: TObject);
    procedure BtnCredDebEstoqueClick(Sender: TObject);
    procedure BtnImobilizadoClick(Sender: TObject);
    procedure BtnDevolucaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxNFe: TBoxNFe;

implementation

uses FDB, NFeConfiguracoes, NFeEmissao, NfeGerenciamento, NFeComplementar,
  NFeCredDebEstoque, NFeDevolucao, NFeImobilizado;

{$R *.dfm}

procedure TBoxNFe.BtnDevolucaoClick(Sender: TObject);
begin
  if not Assigned(BoxNFeDevolucao) then
    BoxNFeDevolucao := TBoxNFeDevolucao.Create(Self);
  BoxNFeDevolucao.Show;
end;

procedure TBoxNFe.BtnImobilizadoClick(Sender: TObject);
begin
  if not Assigned(BoxNFeImobilizado) then
    BoxNFeImobilizado := TBoxNFeImobilizado.Create(Self);
  BoxNFeImobilizado.Show;
end;

procedure TBoxNFe.BtnConfiguracoesClick(Sender: TObject);
begin
  if not Assigned(BoxNFeConfiguracoes) then
    BoxNFeConfiguracoes := TBoxNFeConfiguracoes.Create(Self);
  BoxNFeConfiguracoes.Show;
end;

procedure TBoxNFe.BtnCredDebEstoqueClick(Sender: TObject);
begin
  if not Assigned(BoxNFeCredDebEstoque) then
    BoxNFeCredDebEstoque := TBoxNFeCredDebEstoque.Create(Self);
  BoxNFeCredDebEstoque.Show;
end;

procedure TBoxNFe.BtnEmissaoClick(Sender: TObject);
begin
  if not Assigned(BoxNFeComplementar) then
    BoxNFeComplementar := TBoxNFeComplementar.Create(Self);
  BoxNFeComplementar.Show;
end;

procedure TBoxNFe.BtnGerenciamentoClick(Sender: TObject);
begin
  if not Assigned(BoxNFeGerenciamento) then
    BoxNFeGerenciamento := TBoxNFeGerenciamento.Create(Self);
  BoxNFeGerenciamento.Show;
end;

procedure TBoxNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxNFe := nil;
  BoxNFeGErenciamento := nil;
end;

procedure TBoxNFe.FormShow(Sender: TObject);
begin
  { Habilita/desabilita os botões }
  BtnConfiguracoes.Enabled := False;
  Btnemissao.Enabled := False;
  BtnImobilizado.enabled := False;
  BtnCredDebEstoque.enabled := False;
  BtnDevolucao.enabled := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso50.AsString = 'T') then {peças}
    begin
      BtnConfiguracoes.Enabled := True;
      Btnemissao.Enabled := True;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso58.AsString = 'T') then {peças}
     BtnImobilizado.enabled := True;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso59.AsString = 'T') then {peças}
     BtnCredDebEstoque.enabled := True;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso60.AsString = 'T') then {peças}
     BtnEmissao.enabled := True;

  BtnGerenciamento.SetFocus;
end;

end.

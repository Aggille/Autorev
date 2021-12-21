{***************************************
 Funcões comuns de banco de dados a todos os sistema criados
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit FuncoesBDSystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Dialogs, Forms,
  SqlExpr, DBXpress, DB, DBClient, FuncoesSystem;

 type
   TTypeLocalizar = (fsSearch, fsFilter);

  function CdsNull (aCds: TClientDataSet) : Boolean;
  procedure RefreshCds (aCds: TClientDataSet);
  procedure FilterSearch (aCds: TDataSet; aType: TTypeLocalizar; aBusca: string);


implementation

function CdsNull(aCds: TClientDataSet): Boolean;
begin
  {: Verify ClientDataSet empty }
  Result := aCds.IsEmpty;
end;

procedure RefreshCds (aCds : TClientDataSet);
begin
  {: Refresh ClientDataSet }
  aCds.Close;
  aCds.Open;
end;

procedure FilterSearch (aCds: TDataSet; aType: TTypeLocalizar; aBusca: string);
begin
  {: filter or search data }
  aCds.Close;
  if aCds is TClientDataSet then
    case aType of
      {: filter data }
      fsFilter: (aCds as TClientDataSet).Params[0].AsInteger := StrToInt(aBusca);
      {: search data }
      fsSearch: (aCds as TClientDataSet).Params[0].AsString := UpperCase('%'+aBusca+'%');
    end;
  aCds.Open;
end;

end.

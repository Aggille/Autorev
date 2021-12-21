program ImportaBanco;

uses
  Forms,
  Menu in 'Menu.pas' {Menu1},
  FDBVelho in 'FDBVelho.pas' {FDBVelho1},
  FDBNovo in 'FDBNovo.pas' {FDBNovo1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu1, Menu1);
  Application.CreateForm(TFDBVelho1, FDBVelho1);
  Application.CreateForm(TFDBNovo1, FDBNovo1);
  Application.Run;
end.

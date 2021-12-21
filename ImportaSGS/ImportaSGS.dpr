program ImportaSGS;

uses
  Forms,
  Menu in 'Menu.pas' {Menu1},
  FDBNovo in 'FDBNovo.pas' {FDBNovo1},
  Biblioteca in 'Biblioteca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu1, Menu1);
  Application.CreateForm(TFDBNovo1, FDBNovo1);
  Application.Run;
end.

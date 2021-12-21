unit CadastroCRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet;

type
  TBoxCRM = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblCRMClientes: TIBDataSet;
    DataSourceCRMClientes: TDataSource;
    tblCRMAtendimento: TIBDataSet;
    DataSourceCRMAtendimento: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxCRM: TBoxCRM;

implementation

{$R *.dfm}

end.


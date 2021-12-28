unit UBoxRenave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TBoxRenave = class(TForm)
    Panel1: TPanel;
    btnVeiculos_0_Pendentes: TSpeedButton;
    BtnEntrada_0_Estoque: TSpeedButton;
    BtnAutoriz_0_Transf: TSpeedButton;
    btnCancTransf: TSpeedButton;
    btnSaida_0_Consumidor: TSpeedButton;
    Panel2: TPanel;
    btnEntrada0km: TSpeedButton;
    btnEntradaUsado: TSpeedButton;
    btnSaida: TSpeedButton;
    btnTransfFilial: TSpeedButton;
    btnTransfEstab: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    BtnCancela_0_SaidaEstoque: TSpeedButton;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVeiculos_0_PendentesClick(Sender: TObject);
    procedure BtnEntrada_0_EstoqueClick(Sender: TObject);
    procedure BtnAutoriz_0_TransfClick(Sender: TObject);
    procedure btnCancTransfClick(Sender: TObject);
    procedure btnSaida_0_ConsumidorClick(Sender: TObject);
    procedure BtnCancela_0_SaidaEstoqueClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRenave: TBoxRenave;

implementation

uses
  UBoxConsultaVeiculos0Km, UBoxEntradaVeiculo0KM,
  UBoxAutorizaTransferenciaVeiculo0KM, UBoxTransferenciaVeiculo0KM,
  UBoxSaidaVeiculo0KM, UBoxCancelamentoSaidaVeiculo0KM, UBoxConsultaATPV,
  UBoxRejeitaEntradaVeiculo0KM, UBoxDevolucaoVeiculo0KM,
  UBoxCancelaTransferenciaVeiculo0KM;

{$R *.dfm}

procedure TBoxRenave.BtnAutoriz_0_TransfClick(Sender: TObject);
begin
  Application.CreateForm(TBoxAutorizaTransferenciaVeiculo0KM, BoxAutorizaTransferenciaVeiculo0KM);
  BoxAutorizaTransferenciaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.BtnCancela_0_SaidaEstoqueClick(Sender: TObject);
begin
  Application.Createform( TBoxCancelamentoSaidaVeiculo0KM, BoxCancelamentoSaidaVeiculo0KM );
  BoxCancelamentoSaidaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.btnCancTransfClick(Sender: TObject);
begin
  Application.CreateForm( TBoxTransferenciaVeiculo0KM, BoxTransferenciaVeiculo0KM );
  BoxTransferenciaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.BtnEntrada_0_EstoqueClick(Sender: TObject);
begin
  Application.CreateForm( TBoxEntradaVeiculo0KM, BoxEntradaVeiculo0KM );
  BoxEntradaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.btnSaida_0_ConsumidorClick(Sender: TObject);
begin
  Application.Createform( TBoxSaidaVeiculo0KM, BoxSaidaVeiculo0KM );
  BoxSaidaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.btnVeiculos_0_PendentesClick(Sender: TObject);
begin
  Application.CreateForm( TBoxConsultaVeiculos0KM, BoxConsultaVeiculos0KM );
  BoxConsultaVeiculos0KM.ShowModal;
end;

procedure TBoxRenave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  BoxRenave := nil;
end;

procedure TBoxRenave.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm( TBoxConsultaATPV, BoxConsultaATPV );
  BoxConsultaATPV.ShowModal;
end;

procedure TBoxRenave.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform( TBoxRejeitaEntradaVeiculo0KM, BoxRejeitaEntradaVeiculo0KM );
  BoxRejeitaEntradaVeiculo0KM.ShowModal;
end;

procedure TBoxRenave.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform( TBoxDevolucaoVeiculo0KM, BoxDevolucaoVeiculo0KM );
  BoxDevolucaoVeiculo0KM.showModal;
end;

procedure TBoxRenave.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm( TBoxCancelaTransferenciaVeiculo0KM, BoxCancelaTransferenciaVeiculo0KM );
  BoxCancelaTransferenciaVeiculo0KM.ShowModal;
end;

end.

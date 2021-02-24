unit LogOut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel;

type
  TfrmLogOut = class(TForm)
    sLabelFX1: TsLabelFX;
    btnCerrarSesion: TButton;
    btnSalir: TButton;
    procedure btnCerrarSesionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CerrarSesion : integer;
    CerrarLogOut : integer;

  end;

var
  frmLogOut: TfrmLogOut;

implementation

uses
  MainDesktop;

{$R *.dfm}

procedure TfrmLogOut.btnCerrarSesionClick(Sender: TObject);
begin
  Mainform.Hide;
  CerrarSesion := 1;
  frmLogOut.Hide;
  frmLogOut.Close;
end;

procedure TfrmLogOut.btnSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CerrarSesion = 1 then
  begin
    Mainform.OnShow := Mainform.FormShow;
    Mainform.Show;
  end;

  CerrarLogOut := 1;

  Action := caFree;
end;

procedure TfrmLogOut.FormShow(Sender: TObject);
begin
  CerrarSesion := 0;
  CerrarLogOut := 0;
end;

end.

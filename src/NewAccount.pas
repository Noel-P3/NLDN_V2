unit NewAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmNuevaCuenta = class(TForm)
    lbledtNombre_cuenta: TLabeledEdit;
    lblConfirma: TLabel;
    lbledtNombre_usuario: TLabeledEdit;
    lbledtEmail: TLabeledEdit;
    lbledtPassword: TLabeledEdit;
    btnCrearFolder: TButton;
    btnReady: TButton;
    btnChooseFolder: TButton;
    lbledtFolder: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReadyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    Cierra : integer;

  public
    { Public declarations }
  end;

var
  frmNuevaCuenta: TfrmNuevaCuenta;

implementation

uses
  MainDesktop;

{$R *.dfm}

procedure TfrmNuevaCuenta.btnReadyClick(Sender: TObject);
begin
  MainForm.qUsuarios_CuentaNOMBRE_CUENTA.AsString :=  lbledtNombre_cuenta.Text;
  MainForm.qUsuarios_CuentaNOMBRE_USUARIO.AsString := lbledtNombre_usuario.Text;
  MainForm.qUsuarios_CuentaCORREO.AsString :=         lbledtEmail.Text;
  MainForm.qUsuarios_CuentaPASSWORD.AsString :=       lbledtPassword.Text;

  if cierra <> 1 then
  begin
    Close;
  end;
end;

procedure TfrmNuevaCuenta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Cierra := 1;
 btnReadyClick(btnReady);
 Action := caFree;
end;

procedure TfrmNuevaCuenta.FormShow(Sender: TObject);
begin
  if not MainForm.qUsuarios_CuentaNOMBRE_CUENTA.IsNull then
  lblConfirma.Caption := 'Formulario para editar una cuenta';

  lbledtNombre_cuenta.Text  := MainForm.qUsuarios_CuentaNOMBRE_CUENTA.AsString;
  lbledtNombre_usuario.Text := MainForm.qUsuarios_CuentaNOMBRE_USUARIO.AsString;
  lbledtEmail.Text          := MainForm.qUsuarios_CuentaCORREO.AsString;
  lbledtPassword.Text       := MainForm.qUsuarios_CuentaPASSWORD.AsString;

  Cierra := 0;
end;

end.

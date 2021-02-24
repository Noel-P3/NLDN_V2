program NLND;

uses
  Vcl.Forms,
  MainDesktop in 'MainDesktop.pas' {MainForm},
  DataModule in 'src\DM\DataModule.pas' {DM: TDataModule},
  SesionInicio in 'src\SesionInicio.pas' {InicioSesion},
  Vcl.Themes,
  Vcl.Styles,
  DBProvider in 'src\DM\DBProvider.pas',
  MailSend in 'src\MailSend.pas' {Envio_Correo},
  Password in 'src\Password.pas' {frmConfiguracion},
  configUser in 'src\configUser.pas' {ConfigUsuario},
  EjecutaAplicaciones in 'src\EjecutaAplicaciones.pas' {frmExecApp},
  LogOut in 'src\LogOut.pas' {frmLogOut},
  ConfirmaEmail in 'src\ConfirmaEmail.pas' {frmConfirmaEmail},
  NewAccount in 'src\NewAccount.pas' {frmNuevaCuenta},
  Db_provider in 'src\Db_provider.pas' {frmDbProvider};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.OnMinimize := MainForm.OnMinimize;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

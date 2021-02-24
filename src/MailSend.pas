unit MailSend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdServerIOHandler, IdSSL,
  IdSSLOpenSSL, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, sLabel, Data.DB, MemDS, DBAccess, Uni;

type
  TEnvio_Correo = class(TForm)
    edtUserEmail: TEdit;
    edtCodigo: TEdit;
    btnCodigo: TButton;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    btnAbreCnfigPass: TButton;
    mmoInstrucciones: TMemo;
    btnSalirfrm: TButton;
    qUnquery: TUniQuery;
    qEMAIL_REQUEST: TUniQuery;
    qUnquery2xd: TUniQuery;
    qUnqueryID_USUARIO: TIntegerField;
    qUnqueryNOMBRES: TStringField;
    qUnqueryAPELLIDOS: TStringField;
    qUnqueryCORREO: TStringField;
    qUnqueryUSUARIO: TStringField;
    qUnqueryPASSWORD: TStringField;
    qUnqueryUSUARIO_CONFIRMADO: TIntegerField;
    qEMAIL_REQUESTID_USUARIO: TIntegerField;
    qEMAIL_REQUESTNOMBRES: TStringField;
    qEMAIL_REQUESTAPELLIDOS: TStringField;
    qEMAIL_REQUESTCORREO: TStringField;
    qEMAIL_REQUESTUSUARIO: TStringField;
    qEMAIL_REQUESTPASSWORD: TStringField;
    qEMAIL_REQUESTTIPO_REQUEST: TStringField;
    qEMAIL_REQUESTCODIGO: TStringField;
    qUnquery2xdID_USUARIO: TIntegerField;
    qUnquery2xdNOMBRES: TStringField;
    qUnquery2xdAPELLIDOS: TStringField;
    qUnquery2xdCORREO: TStringField;
    qUnquery2xdUSUARIO: TStringField;
    qUnquery2xdPASSWORD: TStringField;
    qUnquery2xdTIPO_REQUEST: TStringField;
    qUnquery2xdCODIGO: TStringField;
    procedure Gmail(UserName, Password, Destinatario, Asunto, body: string);
    procedure btnCodigoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtUserEmailChange(Sender: TObject);
    procedure btnSalirfrmClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure btnAbreCnfigPassClick(Sender: TObject);
    Procedure ActivaForma(Unidad: TFormClass; Var Forma);
    procedure RandomMize;
    procedure EnviaCorreo(Destinatario,Asunto,Body :string);
  private
    { Private declarations }
    codigo : string;

  public
    { Public declarations }
    usuario : string;
    contra : string;
    totarget : string;
    subject : string;
    body : string;

    USER_PASSMS :string;
    USER_IDSMS :Integer;
  end;

var
  Envio_Correo: TEnvio_Correo;

implementation

uses
  DataModule,SesionInicio, Password;

{$R *.dfm}

{ TEnvio_Correo }

procedure TEnvio_Correo.ActivaForma(Unidad: TFormClass; var Forma);
Var
  Indice : Integer;
  creada : Boolean;
begin

// Procedimiento que ayuda a abrir un form de forma sencilla por parametros
// Ejemplo.: ActivaForma(TMainForm,MainForm);

  creada := False;
  If MDIChildCount < 1 Then
     Application.CreateForm(Unidad, Forma)
  Else
  Begin
     with Application.MainForm do
       for Indice := 0 to MDIChildCount-1 do
         If (MDIChildren[Indice] = TForm(Forma)) Then
         Begin
            creada := True;
            Break;
         End;
     If Not creada Then
        Application.CreateForm(Unidad, Forma)
     Else
     Begin
        MDIChildren[Indice].BringToFront;
     End;
  End;
end;

procedure TEnvio_Correo.btnAbreCnfigPassClick(Sender: TObject);
begin
  if edtCodigo.Text = codigo then
  begin
    qUnquery2xd.SQL.Clear;
    qUnquery2xd.sql.Add('DELETE FROM EMAIL_REQUEST');
    qUnquery2xd.SQL.Add('WHERE ID_USUARIO = '+IntToStr(USER_IDSMS));
    qUnquery2xd.SQL.Add('AND TIPO_REQUEST = ''RECUPERA CONTRASENA''');

    qUnquery2xd.ExecSQL;

    ActivaForma(TfrmConfiguracion, frmConfiguracion);
    frmConfiguracion.HolaMailSend := 1;

    Envio_Correo.Hide;
  end;
end;

procedure TEnvio_Correo.btnCodigoClick(Sender: TObject);
begin
  //Selecciona usuarios donde el email insertado
  qUnquery.Close;
  qUnquery.SQL.Clear;
  qUnquery.SQL.Add(' SELECT * FROM USERS');
  qUnquery.SQL.Add(' WHERE CORREO = '+QuotedStr(edtUserEmail.Text));
  qUnquery.SQL.Add(' OR (USUARIO = '+QuotedStr(edtUserEmail.Text));
  qUnquery.SQL.Add(' ) ');
  qUnquery.Open;

  // Se llena las variables con el correo que se utiliza para enviar el correo xd
  usuario := 'nlnd.nagd@gmail.com';
  contra  := 'Rocklee0912*';
  totarget := qUnqueryCORREO.AsString;
  subject  := 'NLND *Recupera la contrase�a*';

  //Se ejecuta RandomMize
  RandomMize;

  //Variables que se llenan con la contrase�a y el id del usuario escrito por el usuario xd
  USER_PASSMS := qUnqueryPASSWORD.AsString;
  USER_IDSMS := qUnqueryID_USUARIO.AsInteger;

  //Si el email insertado existe entonces esta validacion es verdadera
  if not qUnqueryID_USUARIO.IsNull then
  begin
    //Inserta el codigo nuevo a enviar
    qEMAIL_REQUEST.Close;
    qEMAIL_REQUEST.Open;
    qEMAIL_REQUEST.Insert;
    qEMAIL_REQUESTID_USUARIO.AsInteger := qUnqueryID_USUARIO.AsInteger;
    qEMAIL_REQUESTNOMBRES.AsString := qUnqueryNOMBRES.AsString;
    qEMAIL_REQUESTAPELLIDOS.AsString := qUnqueryAPELLIDOS.AsString;
    qEMAIL_REQUESTCORREO.AsString := qUnqueryCORREO.AsString;
    qEMAIL_REQUESTUSUARIO.AsString := qUnqueryUSUARIO.AsString;
    qEMAIL_REQUESTPASSWORD.AsString := qUnqueryPASSWORD.AsString;
    qEMAIL_REQUESTTIPO_REQUEST.AsString := 'RECUPERA CONTRASENA';
    qEMAIL_REQUESTCODIGO.AsString := codigo;
    qEMAIL_REQUEST.Post;

    //Trata de enviar el correo con las variables llenadas
    try
      begin
        Gmail(usuario,contra,totarget,subject,body);
      end;

    except
      //Ojala esto funcione

    end;

    //Mensaje de confirmacion
    Application.MessageBox('Correo enviado correctamente!!!' + #13#10 +
      '***************************' + #13#10 +
      'Habra un c�digo en ella, utilizala ' + #13#10 +
      'para cambiar tu contrase�a', 'NLND-Aviso', MB_OK +
      MB_ICONINFORMATION + MB_TOPMOST);

    //Habilita botones para que el usuario pueda digitar el codigo enviado
    btnAbreCnfigPass.Visible:= True;
    edtCodigo.Visible:= True;
  end
  else
  begin
    //Mensaje en caso de error
    Application.MessageBox('Este usuario no existe...', 'NLND-Error',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
  end;
end;

procedure TEnvio_Correo.btnSalirfrmClick(Sender: TObject);
begin
  //Cierra formulario
  Envio_Correo.Close;
end;

procedure TEnvio_Correo.edtCodigoChange(Sender: TObject);
begin
  //Habilita o deshabilita el boton
  if edtCodigo.Text <> '' then
  begin
    btnAbreCnfigPass.Enabled := True;
  end
  else
    btnAbreCnfigPass.Enabled := False;
end;

procedure TEnvio_Correo.edtUserEmailChange(Sender: TObject);
begin
 //Habilita o deshabilita el boton
  if edtUserEmail.Text <> '' then
  begin
    btnCodigo.Enabled := True;
  end
  else
    btnCodigo.Enabled := False;
end;

procedure TEnvio_Correo.EnviaCorreo(Destinatario, Asunto, Body: string);
var
usuario,password :string;
begin
  usuario := 'nlnd.nagd@gmail.com';
  password := 'Rocklee0912*';

  try
    Gmail(usuario,password,Destinatario,Asunto,Body);
  except

  end;
end;

procedure TEnvio_Correo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Al cerrar formulario Inicio de sesion se habilita
  InicioSesion.Enabled := True;
  //Al cerrar formulario este se libera de la memoria
  Action := caFree;
end;

procedure TEnvio_Correo.FormShow(Sender: TObject);
begin
  //Al abrir formulario se habilita y se agranda estos objetos
  InicioSesion.Enabled := False;
  edtUserEmail.Height := 30;
end;

procedure TEnvio_Correo.Gmail(UserName, Password, Destinatario, Asunto,
  body: string);
  var
  DATA: TIdMessage;
  SMTP: TIdSMTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
begin

  SMTP := TIdSMTP.Create(nil);
  DATA := TIdMessage.Create(nil);
  SSL  := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  SSL.SSLOptions.Method := sslvTLSv1;
  SSL.SSLOptions.Mode := sslmUnassigned;
  SSL.SSLOptions.VerifyMode := [];
  SSL.SSLOptions.VerifyDepth := 0;

  DATA.From.Address := UserName;
  DATA.Recipients.EMailAddresses := Destinatario;
  DATA.Subject := Asunto;
  DATA.ContentType := 'text/html';
  DATA.Body.Text := body;

  SMTP.IOHandler := SSL;
  SMTP.Host := 'smtp.gmail.com';
  SMTP.Port := 587;
  SMTP.Username := UserName;
  SMTP.Password := Password;
  SMTP.UseTLS := utUseExplicitTLS;

  SMTP.Connect;
  try
    SMTP.Send(DATA);
  except
    raise Exception.Create('Error al enviar el correo');
  end;
  SMTP.Disconnect;

  SMTP.Free;
  DATA.Free;
  SSL.Free;
end;

procedure TEnvio_Correo.RandomMize;
var
  i: Integer;
begin
  Randomize;

  for i := 1 to 1 do
    body := ( IntToStr( Random( 10000 ) + 1 ) );

    codigo := body;

    body := '<html>'+'<body><h2>Hola este es tu codigo</h2></body>'+'<p><b><h3>Codigo.: '+body+'</h3></b></p>'+'</html>';
end;

end.

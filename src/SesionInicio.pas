unit SesionInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, Uni, System.UITypes,
  acPNG, Vcl.ExtCtrls,Vcl.Menus,Winapi.ShellAPI, W7Classes, W7Images, sLabel,UrlMon;

type
  TInicioSesion = class(TForm)
    PageControl1: TPageControl;
    Generales: TTabSheet;
    Label3: TLabel;
    Registro: TTabSheet;
    edtEmail: TEdit;
    edtPass: TEdit;
    btnIniciarSesion: TButton;
    qUsers: TUniQuery;
    dsUSERS: TDataSource;
    btnSalir: TButton;
    BtnRegister: TButton;
    EdtPassRe: TEdit;
    EdtEmailRe: TEdit;
    ButtonSalirRe: TButton;
    LabelRegistro: TLabel;
    edtNombreRe: TEdit;
    edtApellidoRe: TEdit;
    chkSeePassword: TCheckBox;
    chkSeePass: TCheckBox;
    chkRecordUser: TCheckBox;
    statbar: TStatusBar;
    statusBar2: TStatusBar;
    btnRegistro: TButton;
    btnLogin: TButton;
    btnRecuperaContra: TButton;
    btnRecuperaContra2: TButton;
    qEMAIL_REQUEST: TUniQuery;
    qEMAIL_REQUESTID_USUARIO: TIntegerField;
    qEMAIL_REQUESTNOMBRES: TStringField;
    qEMAIL_REQUESTAPELLIDOS: TStringField;
    qEMAIL_REQUESTCORREO: TStringField;
    qEMAIL_REQUESTUSUARIO: TStringField;
    qEMAIL_REQUESTPASSWORD: TStringField;
    qEMAIL_REQUESTTIPO_REQUEST: TStringField;
    qUsersID_USUARIO: TIntegerField;
    qUsersNOMBRES: TStringField;
    qUsersAPELLIDOS: TStringField;
    qUsersCORREO: TStringField;
    qUsersUSUARIO: TStringField;
    qUsersPASSWORD: TStringField;
    qUsersUSUARIO_CONFIRMADO: TIntegerField;
    edtUsuarioRe: TEdit;
    qEMAIL_REQUESTCODIGO: TStringField;
    qFolder: TUniQuery;
    qFolderID_FOLDER: TIntegerField;
    qFolderID_USUARIO: TIntegerField;
    qFolderNOMBRE_FOLDER: TStringField;
    W7Image1: TW7Image;
    W7Image2: TW7Image;
    lblRecordarUsuario: TsLabel;
    W7Image3: TW7Image;
    imgPassOcultoRe: TW7Image;
    imgPassSeeRe: TW7Image;
    imgPassOculto: TW7Image;
    imgPassSee: TW7Image;
    procedure btnIniciarSesionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure edtPassChange(Sender: TObject);
    procedure BtnRegisterClick(Sender: TObject);
    procedure EdtPassReChange(Sender: TObject);
    procedure chkSeePasswordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qUsersAfterPost(DataSet: TDataSet);
    procedure chkSeePassClick(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
    procedure btnRegistroClick(Sender: TObject);
    procedure Actualiza;
    procedure btnRecuperaContraClick(Sender: TObject);
    Procedure ActivaForma(Unidad: TFormClass; Var Forma);
    procedure SesionInicioShoww;
    procedure RandomMize;
    procedure EdtPassReKeyPress(Sender: TObject; var Key: Char);
    procedure imgPassOcultoReClick(Sender: TObject);
    procedure imgPassOcultoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblRecordarUsuarioClick(Sender: TObject);
  private
    { Private declarations }
    codigo : string;
  public
    { Public declarations }
    cuerpo : string;
  end;

var
  InicioSesion: TInicioSesion;

implementation

uses
  DataModule, MainDesktop, MailSend;

{$R *.dfm}

procedure TInicioSesion.ActivaForma(Unidad: TFormClass; var Forma);
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

procedure TInicioSesion.Actualiza;
//var st:array[0..255] of Char;
begin
//
//  Te avisa si existe una nueva version del programa comprobando si hay
//  DM.Version_exe es la version de la aplicacion
//  DM.Version_BD es la version de la base de datos que van en conjunto con la aplicacion
//  asi se decidio el dise�o
//
  if DM.Version_Local <> DM.Version_BD then
  begin
    case
      Application.MessageBox('Hay una nueva versi�n disponible, �Deseas descargarla ahora?',
      'NLND-Pregunta', MB_YESNO + MB_ICONWARNING + MB_TOPMOST) of
      IDYES:
        begin
            //Ejecuta un archivo y en este caso abre un una pagina web donde se puede descargar el programa
            try
              URLDownloadToFile(nil,
              'http://download1594.mediafire.com/48vnk6cgwvbg/97pzqqer5klq4ki/NLND.UO.exe',
              PChar(ExtractFilePath(Application.ExeName) + 'NLND.UO.exe'),
              0,nil);
              ShellExecute(Handle, 'open','.\NLND.UO.exe',nil,nil, SW_SHOWNORMAL);
            except
              MessageDlg('Error al descargar el actualizador...' + #13#10 +
                #13#10 + 'La actualizaci�n autom�tica fall�...',  mtError,
                [mbOK], 0);
            end;
        end;
      IDNO:
        begin

        end;
    end;
  end;
end;

procedure TInicioSesion.btnIniciarSesionClick(Sender: TObject);
var ChequeaPass : string;
begin
  //Con el data set hago un select con el usuario logueado
  qUsers.Close;
  qUsers.SQL.Clear;
  qUsers.SQL.Add(' SELECT * FROM USERS');
  qUsers.SQL.Add(' WHERE CORREO = '+QuotedStr(edtEmail.Text));
  qUsers.Sql.add(' AND PASSWORD =  '+QuotedSTR(edtPass.Text));
  qUsers.SQL.Add(' OR (USUARIO = '+QuotedStr(edtEmail.Text));
  qUsers.SQL.Add(' AND PASSWORD = '+QuotedSTR(edtPass.Text));
  qUsers.SQL.Add(' ) ');

  //si el data set qusuarios no esta activo que lo active no es "necesario esto" pero por seguridad
  //lo hice asi xd
  if qUsers.Active = False then
  begin
   qUsers.Open;
   ChequeaPass := qUsersPASSWORD.AsString;
  end;

  //Si el usuario logueado no trae nada pues no entra a esta condicion

  if not qUsersID_USUARIO.IsNull then
  begin

    if ChequeaPass = edtPass.Text then
    begin

       //Si recordar usuario es igual a verdadero que entre a esta condicion

      if chkRecordUser.Checked = true then
      begin

        //Recordar usuario en el xml se vuelve verdadero osea un 1

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['RCUP'].Text := '1';
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Recordar_Usuario := '1';
        DM.XMLNLND.Active:=False;
      end
      else
      begin

        //De lo contrario sera 0 que es falso a la vez

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['RCUP'].Text := '0';
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Recordar_Usuario := '0';
        DM.XMLNLND.Active:= False;
      end;

      if DM.Version_Exe <> DM.Version_Local then
      begin

        //Si la version local es diferente a la version del xml pues el xml se actualiza a la version
        //Local... �por qu�?... porque asi fue dise�ado xd :V nah es para saber sin tener que entrar al
        //Programa cual es la versi�n...

        DM.XMLNLND.Active:=False;
        DM.XMLNLND.Active:=True;
        DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['ver'].Text := DM.Version_Local;
        DM.XMLNLND.SaveToFile('DBProvider.xml');
        DM.Version_Exe := DM.Version_Local;
        DM.XMLNLND.Active:= False;
      end;

      //Manda el okey a MainDesktop

      Modalresult := mrok;
    end
    else
    begin
     MessageDlg('Contrase�a incorrecta',  mtError, [mbOK], 0);
    end;
  end
  else
  begin
    //De lo contrario no inicia sesion y te manda este mensaje

    MessageDlg('Email o Contrase�a incorrectos',  mtError, [mbOK], 0);
  end;
end;

procedure TInicioSesion.btnRecuperaContraClick(Sender: TObject);
begin
  ActivaForma(TEnvio_Correo, Envio_Correo);
end;

procedure TInicioSesion.btnRegistroClick(Sender: TObject);
begin

  // Esto hace que al darle al boton "Iniciar sesion aqui!!!" o "Registrar aqui!!!" esto hace que
  // se mueva de entre iniciar sesion o registrar usuario

  if PageControl1.ActivePageIndex = 0 then
  begin
    PageControl1.ActivePageIndex := 1;
    btnLogin.SetFocus;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TInicioSesion.btnSalirClick(Sender: TObject);
begin
 //La aplicacion ce cierra xd
 Application.Terminate;
end;

procedure TInicioSesion.chkSeePassClick(Sender: TObject);
begin
  //Si ver contrase�a es igual a verdadero entonces se podra ver de lo contrario se ocultara con
  //puntos negros xd

  if chkSeePass.Checked = True then
  begin
    edtPass.PasswordChar := #0;
    edtPass.Height := 30;
    imgPassOculto.Visible := false;
    imgPassSee.Left := imgPassOculto.Left;
    imgPassSee.Visible := true;
  end
  else
  begin
    edtPass.PasswordChar := '*';
    edtPass.Height := 30;
    imgPassSee.Visible := false;
    imgPassOculto.Visible := true;
  end;
end;

procedure TInicioSesion.chkSeePasswordClick(Sender: TObject);
begin
  //Si ver contrase�a es igual a verdadero entonces se podra ver de lo contrario se ocultara con
  //puntos negros xd

  if chkSeePassword.Checked = true then
  begin

    EdtPassRe.PasswordChar := #0;
    EdtPassRe.Height := 30;
    imgPassOcultoRe.Visible := false;
    imgPassSeeRe.Left := imgPassOculto.Left;
    imgPassSeeRe.Visible := true;
  end
  else
  begin
    EdtPassRe.PasswordChar := '*';
    EdtPassRe.Height := 30;
    imgPassSeeRe.Visible := false;
    imgPassOcultoRe.Visible := true;
  end;
end;

procedure TInicioSesion.BtnRegisterClick(Sender: TObject);
var
usuario : string;
contra : string;
totarget : string;
subject : string;
begin
  //Se le dice al data set que busque a un usuario con e-mail que el usuario quiere registrar para
  //chequear si existe

  qUsers.Close;
  qUsers.SQL.Clear;
  qUsers.SQL.Add(' SELECT * FROM USERS');
  qUsers.SQL.Add(' WHERE CORREO = '+QuotedStr(EdtEmailRe.Text));
  qUsers.SQL.Add(' OR (USUARIO = '+QuotedStr(edtUsuarioRe.Text));
  qUsers.SQL.Add(' ) ');

  qUsers.Open;

       //Si no existe entonces el usuario puede ser creado

       if qUsersID_USUARIO.IsNull then
        begin
          qUsers.Append;

          qUsersNOMBRES.AsString            := edtNombreRe.Text;
          qUsersAPELLIDOS.AsString          := edtApellidoRe.Text;
          qUsersCORREO.AsString             := EdtEmailRe.Text;
          qUsersUSUARIO.AsString            := edtUsuarioRe.Text;
          qUsersPASSWORD.AsString           := EdtPassRe.Text;
          qUsersUSUARIO_CONFIRMADO.AsString := '0';

          try
            qUsers.Post;
          except
            abort;
          end;

           usuario := 'nlnd.nagd@gmail.com';
           contra  := 'Rocklee0912*';
           totarget := EdtEmailRe.Text;
           subject  := 'NLND-Confirma tu E-mail';

           RandomMize;

            qEMAIL_REQUEST.Close;
            qEMAIL_REQUEST.Open;
            qEMAIL_REQUEST.Insert;
            qEMAIL_REQUESTID_USUARIO.AsInteger        := qUsersID_USUARIO.AsInteger;
            qEMAIL_REQUESTNOMBRES.AsString            := qUsersNOMBRES.AsString;
            qEMAIL_REQUESTAPELLIDOS.AsString          := qUsersAPELLIDOS.AsString;
            qEMAIL_REQUESTCORREO.AsString             := qUsersCORREO.AsString;
            qEMAIL_REQUESTUSUARIO.AsString            := qUsersUSUARIO.AsString;
            qEMAIL_REQUESTPASSWORD.AsString           := qUsersPASSWORD.AsString;
            qEMAIL_REQUESTTIPO_REQUEST.AsString       := 'CONFIRMAR EMAIL';
            qEMAIL_REQUESTCODIGO.AsString             := codigo;
            qEMAIL_REQUEST.Post;

            qFolder.Close;
            qFolder.Open;
            qFolder.Insert;
            qFolderID_USUARIO.AsInteger               := qUsersID_USUARIO.AsInteger;
            qFolderNOMBRE_FOLDER.AsString             := 'Todo';
            qFolder.Post;

            try
              begin
                Envio_Correo.Gmail(usuario,contra,totarget,subject,cuerpo);
              end;
            except
              //Ojala esto funcione
            end;

            Application.MessageBox('NLND te ha enviado un correo con un c�digo en ella'
              + #13#10 + 'para que puedas confirmar tu E-MAIL...' + #13#10 +
              #13#10 +
              'Dentro de la aplicaci�n estara habilitado el espacio luego ' +
              #13#10 + 'de iniciar sesi�n', 'NLND-Aviso', MB_OK +
              MB_ICONINFORMATION + MB_TOPMOST);

        end
       else
       begin
        MessageDlg('Usuario ya existe',  mtError, [mbOK], 0);
       end;
end;

procedure TInicioSesion.edtPassChange(Sender: TObject);
begin
   if edtEmail.Text <> '' then
  begin
    if edtPass.Text <> '' then
    btnIniciarSesion.Enabled := True;
  end
  else
    btnIniciarSesion.Enabled := False;
end;

procedure TInicioSesion.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then btnIniciarSesionClick(btnIniciarSesion)
end;

procedure TInicioSesion.EdtPassReChange(Sender: TObject);
begin
  if edtNombreRe.Text <> '' then
  begin
    if edtApellidoRe.Text <> '' then
    begin
      if EdtEmailRe.Text <> '' then
      begin
        if edtUsuarioRe.Text <> '' then
        begin
          if EdtPassRe.Text <> '' then
          BtnRegister.Enabled := True;
        end
        else
          BtnRegister.Enabled := False;
      end;
    end;
  end
end;

procedure TInicioSesion.EdtPassReKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then BtnRegisterClick(BtnRegister);
end;

procedure TInicioSesion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TInicioSesion.FormCreate(Sender: TObject);
begin
    // Ejecuta el procedimiento actualiza
    Actualiza;
end;

procedure TInicioSesion.FormShow(Sender: TObject);
begin
    //Ejecuta el inicio de la pantalla
    SesionInicioShoww;
end;

procedure TInicioSesion.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    edtEmail.Height := 30;
    edtPass.Height := 30;
    InicioSesion.Caption := 'NLND-Inicio de sesi�n';
  end;

  if PageControl1.ActivePageIndex = 1 then
  begin
    EdtPassRe.Height := 30;
    EdtEmailRe.Height := 30;
    edtNombreRe.Height := 30;
    edtUsuarioRe.Height := 30;
    edtApellidoRe.Height := 30;
    btnLogin.SetFocus;
    InicioSesion.Caption := 'NLND-Registro de usuarios';
  end;
end;

procedure TInicioSesion.qUsersAfterPost(DataSet: TDataSet);
begin
  edtEmail.Text := qUsersCORREO.AsString;
  edtPass.Text  := qUsersPASSWORD.AsString;

  case Application.MessageBox('Desea iniciar sesion con el nuevo usuario registrado?',
    'Usuario registrado con exito!!', MB_YESNO +
    MB_ICONQUESTION) of
    IDYES:
      begin
        btnIniciarSesionClick(btnIniciarSesion);
      end;
    IDNO:
      begin
        edtEmail.Text := '';
        edtPass.Text  := '';

        PageControl1.ActivePageIndex := 0;
      end;
  end;
end;
procedure TInicioSesion.RandomMize;
var
  i: Integer;
  codigoEmail : integer;
begin
  // Randomize initializes the built-in random number generator with a random value
  //(obtained from the system clock). The random number generator should be initialized by
  //making a call to Randomize, or by assigning a value to RandSeed.
  Randomize;

  codigoEmail := 0;

  //Asigna un valor random a la variable boddy entre 10000 a 1 y se repetira hasta que codigoemail sea mayor que 999
  while codigoEmail < 999 do
  begin
    for i := 1 to 1 do
    codigoEmail := ( Random( 10000 ) + 1 );
  end;

//  repeat
//    for i := 1 to 1 do
//    codigoEmail := ( Random( 10000 ) + 1 );
//  until(codigoEmail > 999);
    //codigo va a ser igual a boddy que tendra un numero random "x"
    codigo := IntToStr(codigoEmail);

    //Sera el cuerpo del mensaje o del correo en este caso
    Cuerpo := '<html>'+'<body><h2>Hola este es tu codigo para confirma tu correo</h2></body>'+'<p><b><h3>Codigo.: '+codigo+'</h3></b></p>'+'</html>';
end;

procedure TInicioSesion.SesionInicioShoww;
begin
 PageControl1.ActivePageIndex := 0;

  edtEmail.Height := 30;
  edtPass.Height := 30;

  if DM.Estado = 1 then
  begin
    statbar.Panels[0].Text := 'Estado.: Conectado!!!';
    statusBar2.Panels[0].Text := 'Estado.: Conectado!!!';
  end
  else
  begin
    statbar.Panels[0].Text := 'Estado.: Desconectado D:';
    statusBar2.Panels[0].Text := 'Estado.: Desconectado D:';
    //Inicio Sesion Enabled := False
    edtEmail.Enabled := False;
    edtPass.Enabled := False;
    btnIniciarSesion.Enabled := False;
    btnRecuperaContra2.Enabled := False;
    chkSeePass.Enabled := False;
    chkRecordUser.Enabled := False;
    //Registro Enabled := False;
    edtNombreRe.Enabled := False;
    edtApellidoRe.Enabled := False;
    EdtEmailRe.Enabled := False;
    EdtPassRe.Enabled := False;
    BtnRegister.Enabled := False;
    btnLogin.Enabled := False;
    btnRecuperaContra.Enabled := False;
    chkSeePassword.Enabled := False;
  end;

  statbar.Panels[1].Text := 'Ver.:'+(DM.Version_Local);
  statusBar2.Panels[1].Text := 'Ver.:'+(DM.Version_Local);

  if DM.Recordar_Usuario = '1' then
  begin
    chkRecordUser.Checked := true;

    DM.XMLNLND.Active:=False;
    DM.XMLNLND.Active:=True;
    edtEmail.Text := dm.XMLNLND.ChildNodes.FindNode('body').ChildNodes.Nodes['email'].Text;
    DM.XMLNLND.Active:=False;
  end;

  if edtEmail.Text <> '' then
    edtPass.SetFocus
  else edtEmail.SetFocus;
end;

procedure TInicioSesion.imgPassOcultoClick(Sender: TObject);
begin
  if chkSeePass.Checked = true then chkSeePass.Checked := false
  else chkSeePass.Checked := true;
end;

procedure TInicioSesion.imgPassOcultoReClick(Sender: TObject);
begin
  if chkSeePassword.Checked = true then chkSeePassword.Checked := false
  else chkSeePassword.Checked := true;
end;

procedure TInicioSesion.lblRecordarUsuarioClick(Sender: TObject);
begin
  if chkRecordUser.Checked = false then
  chkRecordUser.Checked := true
  else chkRecordUser.Checked := false;
end;

end.

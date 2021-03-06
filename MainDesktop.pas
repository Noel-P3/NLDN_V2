unit MainDesktop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, W7Classes,
  W7Buttons, W7Panels, Data.DB, MemDS, DBAccess, Uni, AdvMetroTile, acPNG,
  W7Images, System.Win.TaskbarCore, Vcl.Taskbar, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, CRGrid, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,Winapi.ShellAPI,
  Vcl.Buttons, Vcl.Menus, ToolPanels, Vcl.Mask, AdvDBLookupComboBox,
  sDBLookupComboBox,UrlMon,System.UITypes;

type
  TMainForm = class(TForm)
    statUser: TStatusBar;
    tmrtimer: TTimer;
    dsUsuarios_Cuenta: TDataSource;
    pnlBarradetareas: TPanel;
    dbnvgr1: TDBNavigator;
    pnlre: TPanel;
    btnUpdate: TButton;
    btnEdit: TSpeedButton;
    btnEliminar: TSpeedButton;
    lblConfirma: TLabel;
    btnConfirma: TButton;
    qConfirmaEmail: TUniQuery;
    qConfirmaEmailID_USUARIO: TIntegerField;
    qConfirmaEmailNOMBRES: TStringField;
    qConfirmaEmailAPELLIDOS: TStringField;
    qConfirmaEmailEMAIL: TStringField;
    qConfirmaEmailPASSWORD: TStringField;
    qConfirmaEmailCODIGO: TStringField;
    qUnquery: TUniQuery;
    qUnquery2xd: TUniQuery;
    btnSalir: TSpeedButton;
    TrayIcon1: TTrayIcon;
    pm1: TPopupMenu;
    mniShutdown: TMenuItem;
    mniShowApplication: TMenuItem;
    chkEsconde: TCheckBox;
    dsFolder: TDataSource;
    btnConfigPass: TButton;
    grdCuentas: TCRDBGrid;
    qUsuarios_Cuenta: TUniQuery;
    qUsuarios_CuentaID_CUENTA: TIntegerField;
    qUsuarios_CuentaID_USUARIO: TIntegerField;
    qUsuarios_CuentaID_FOLDER: TIntegerField;
    qUsuarios_CuentaNOMBRE_CUENTA: TStringField;
    qUsuarios_CuentaNOMBRE_USUARIO: TStringField;
    qUsuarios_CuentaTELEFONO: TStringField;
    qUsuarios_CuentaCORREO: TStringField;
    qUsuarios_CuentaPASSWORD: TStringField;
    qFolder: TUniQuery;
    qFolderNOMBRE_FOLDER: TStringField;
    qFolderID_FOLDER: TIntegerField;
    qFolderID_USUARIO: TIntegerField;
    pnlTop2: TPanel;
    lbledtFolder: TLabeledEdit;
    btnConfigurarFolder: TButton;
    btnChooseFolder: TButton;
    procedure tmrtimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    Procedure ActivaForma(Unidad: TFormClass; Var Forma);
    procedure qUsuarios_CuentaBeforePost(DataSet: TDataSet);
    procedure btnConfigPassClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure Disabled;
    procedure btnEditClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure qUsuarios_CuentaAfterInsert(DataSet: TDataSet);
    procedure qUsuarios_CuentaAfterPost(DataSet: TDataSet);
    procedure qUsuarios_CuentaAfterCancel(DataSet: TDataSet);
    procedure qUsuarios_CuentaAfterEdit(DataSet: TDataSet);
    procedure btnConfirmaClick(Sender: TObject);
    procedure trayIconCreate;
    procedure FormDestroy(Sender: TObject);
    procedure OnMinimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure mniShutdownClick(Sender: TObject);
    procedure mniShowApplicationClick(Sender: TObject);
    procedure chkEscondeClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
   USUARIO_NOMBRE : string;
   USUARIO_APELLIDO : string;
   ID_USUARIO : Integer;
   USER_PASS : string;
   USER_EMAIL : string;
   USER_USUARIO :string;
   USER_CONFIRMA : string;
   UNO :Integer;
  end;

var
  MainForm: TMainForm;

implementation

uses
  DataModule, SesionInicio, MailSend, Password, configUser, EjecutaAplicaciones, LogOut, ConfirmaEmail, NewAccount;

{$R *.dfm}

procedure TMainForm.ActivaForma(Unidad: TFormClass; var Forma);
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

procedure TMainForm.btn1Click(Sender: TObject);
begin
  ActivaForma(TfrmExecApp, frmExecApp);
end;

procedure TMainForm.btnConfigPassClick(Sender: TObject);
var confirmPass :string;
begin
  //Input box donde se inserta la contrase�a
  confirmPass:= Vcl.Dialogs.InputBox('NLND-Valida Usuario','Para validar, digite su contrase�a actual','');
  if confirmPass = '' then abort;

  //Valida si la contrase�a insertada es igual a la del usuario logueado
  if confirmPass = USER_PASS then
  begin
    // Abre la pantalla configuraci�n
    ActivaForma(TConfigUsuario, ConfigUsuario);
  end
  else
  begin
    //Mensaje en caso de error en la validacion
    Application.MessageBox('Contrase�a incorrecta', 'NLND-Error', MB_OK
      + MB_ICONSTOP + MB_TOPMOST);
  end;
end;

procedure TMainForm.btnConfirmaClick(Sender: TObject);
begin
  //Abre confirma E-mail
  ActivaForma(TfrmConfirmaEmail, frmConfirmaEmail);
end;

procedure TMainForm.btnEditClick(Sender: TObject);
begin
  // Pone el dataset en estado de editar o edici�n
  qUsuarios_Cuenta.Edit;
end;

procedure TMainForm.btnEliminarClick(Sender: TObject);
begin

  //Para poder eliminar un registro y este pregunta antes de hacerlo

case Application.MessageBox('�Estas seguro de querer eliminar este registro?',
  'NLND-Pregunta', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) of
  IDYES:
    begin
      //Elimina el registro elegido por el usuario
      qUsuarios_Cuenta.Delete;
    end;
  IDNO:
    begin
      //
    end;
end;

end;

procedure TMainForm.btnSalirClick(Sender: TObject);
begin
  //Habre formulario log out
  ActivaForma(TfrmLogOut, frmLogOut);
end;

procedure TMainForm.btnUpdateClick(Sender: TObject);
//var st:array[0..255] of Char;
begin
 //Ejecuta un archivo y en este caso abre un una pagina web donde se puede descargar el programa
// ShellExecute(Handle,'open',StrPCopy(St,'.\Actualizacion.url'),nil,nil,SW_SHOW);
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

procedure TMainForm.chkEscondeClick(Sender: TObject);
var
confirmPass :string;
begin
  if chkEsconde.Checked = true then
  begin
    grdCuentas.Visible := false;
    Disabled;
  end
  else
  begin
    confirmPass:= Vcl.Dialogs.InputBox('NLND-Valida Usuario','Para validar, digite su contrase�a actual','');
    if confirmPass = '' then
    begin
      chkEsconde.OnClick := nil;
      chkEsconde.Checked := true;
      chkEsconde.OnClick := chkEscondeClick;
      abort;
    end;
    if confirmPass = USER_PASS then
    begin
      grdCuentas.Visible := true;
      Disabled;
    end
    else
    begin
      //Mensaje en caso de error en la validacion
      Application.MessageBox('Contrase�a incorrecta', 'NLND-Error', MB_OK
        + MB_ICONSTOP + MB_TOPMOST);

      chkEsconde.OnClick := nil;
      chkEsconde.Checked := false;
      chkEsconde.OnClick := chkEscondeClick;
    end;
  end;
end;

procedure TMainForm.Disabled;
begin
    //Este comprueba la version del xml y la version de la base de datos, si es diferente entra
    if DM.Version_Exe <> DM.Version_BD then
    begin
      //El boton actualizar se pone visible y habilitado
      btnUpdate.Visible := true;
      btnUpdate.Enabled := true;
    end;

    // si el ususuario esta confirmado pues el boton confirma y el label no apareceran
    if USER_CONFIRMA = '1' then
    begin
      btnConfirma.Visible := false;
      lblConfirma.Visible := false;
    end
    else
    begin
       //Si el usuario no esta confirmado pues el boton y el label de confirma se muestran
      if USER_CONFIRMA = '0' then
      BEGIN
        btnConfirma.Visible := true;
        lblConfirma.Visible := true;
      END;
    end;

    if grdCuentas.Visible = false then
    begin
      btnEdit.Visible := false;
      btnEliminar.Visible := false;
      dbnvgr1.Enabled := false;
    end
    else
    begin
      btnEdit.Visible := true;
      btnEliminar.Visible := true;
      dbnvgr1.Enabled := true;
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Se crea el formulario log out
  Application.CreateForm(TfrmLogOut,frmLogOut);
  //Log out sera invisible si no se hace esto por alguna razon da error en el showmodal
  frmLogOut.Visible := false;
  //Muestra en pantalla log out y lo hace visible
  frmLogOut.ShowModal;
  //Si cerrar log out es igual a 1 pues entra a esta condicion
  if frmLogOut.CerrarLogOut = 1 then
  begin
   //Aborta todo el procedimiento
   Abort;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // Muestra en un panelBar la fecha y la hora exacta del presente ejecutado la aplicaci�n
  //  statUser.Panels[1].text := datetostr(date);
  statUser.Panels[1].text := FormatDateTime('dddd",d-mmmm-yyyy',Now);
  statUser.Panels[2].text := timetostr(time);
  UNO := 0;
  trayIconCreate;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  TrayIcon1.Destroy;
end;

procedure TMainForm.FormShow(Sender: TObject);
var
UserInput :string;
begin
  //Cuando el form trata de abrirse primero se abre el formulario inicio de sesion antes
  Application.CreateForm(TInicioSesion, InicioSesion);
  InicioSesion.ShowModal;
  // Si inicio de sesion envio el Ok entonces se ejecuta este if
  try
    if InicioSesion.ModalResult = mrOk then
    begin

      //Las variables globales ahora tienen el valor del ID, Nombres y apellidos y la contrase�a
      //del usuario logueado

      ID_USUARIO := InicioSesion.qUsersID_USUARIO.AsInteger;
      USUARIO_NOMBRE := InicioSesion.qUsersNOMBRES.AsString;
      USUARIO_APELLIDO := InicioSesion.qUsersAPELLIDOS.AsString;
      USER_PASS := InicioSesion.qUsersPASSWORD.AsString;
      USER_EMAIL := InicioSesion.qUsersCORREO.AsString;
      USER_USUARIO := InicioSesion.qUsersUSUARIO.AsString;
      USER_CONFIRMA := InicioSesion.qUsersUSUARIO_CONFIRMADO.AsString;
      UserInput := InicioSesion.edtEmail.Text;

      // Se pone el nombre del usuario logueado en el panel de abajo y la version del la apliaci�n
      statUser.Panels[0].Text := 'Usuario: '+(USUARIO_NOMBRE) +' '+(USUARIO_APELLIDO);
      statUser.Panels[3].Text := 'Ver.:'+(DM.Version_Exe);

      //Actualmente en deshuso pero esto hace que si actualiz contrase�a se habre desde el main pues
      //Esta pantalla la que se habre funcionara bien por eso se queda asi aunque nunca sucedera y
      //fue complicado de hacer
      UNO := 1;

  //     Aqui se le indica al data set que cuentas del usuario va a mostrar
      qUsuarios_Cuenta.Close;
      qUsuarios_Cuenta.SQL.Clear;
      qUsuarios_Cuenta.SQL.Add('SELECT * FROM USERS_ACCOUNT');
      qUsuarios_Cuenta.SQL.Add('WHERE ID_USUARIO = '+IntToStr(ID_USUARIO));
      qUsuarios_Cuenta.SQL.Add('ORDER BY NOMBRE_CUENTA ASC');
      qUsuarios_Cuenta.Open;

      qUsuarios_Cuenta.FetchingAll;

      // Si el check recordar usuario es igual a verdadero entonces se ejecuta este if
      // Funci�n.: Escribe el e-mail en el xml que esta instalado en el programa
      //Para poder recordarlo  luego
      if DM.Recordar_Usuario = '1' then
      begin
      DM.XMLNLND.Active:=False;
      DM.XMLNLND.Active:=True;
      DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['email'].Text := UserInput;
      DM.XMLNLND.SaveToFile('DBProvider.xml');
      DM.XMLNLND.Active:=False;
      end;

      // Se ejecuta Disabled
      Disabled;
    end
    else
    begin
      //Si inicio de sesi�n no envia el Ok entonces la aplicacion se termina
      Application.Terminate;
    end;
  finally
    InicioSesion.Free;
    InicioSesion := nil;
  end;

end;

procedure TMainForm.mniShowApplicationClick(Sender: TObject);
var
confirmPass : string;
begin
  { Hide the tray icon and show the window,
  setting its state property to wsNormal. }
  if grdCuentas.Visible = true then
  begin
    confirmPass:= Vcl.Dialogs.InputBox('NLND-Valida Usuario','Para validar, digite su contrase�a actual','');

    if confirmPass = '' then
    begin
      abort;
    end;

    if confirmPass = USER_PASS then
    begin
      MainForm.OnShow := nil;
      TrayIcon1.Visible := False;
      Show();
      WindowState := wsNormal;
      Application.BringToFront();
    end
    else
    begin
        //Mensaje en caso de error en la validacion
      Application.MessageBox('Contrase�a incorrecta', 'NLND-Error', MB_OK
        + MB_ICONSTOP + MB_TOPMOST);
    end;
  end
  else
  begin
    MainForm.OnShow := nil;
    TrayIcon1.Visible := False;
    Show();
    WindowState := wsNormal;
    Application.BringToFront();
  end;
end;

procedure TMainForm.mniShutdownClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMainForm.OnMinimize(Sender: TObject);
begin
  if dm.OnMinimize = '0' then
  begin
      Mainform.Hide;
      Mainform.WindowState := wsMinimized;

      { Show the animated tray icon and also a hint balloon. }
      Mainform.TrayIcon1.Visible := True;
      Mainform.TrayIcon1.Animate := True;
      Mainform.TrayIcon1.ShowBalloonHint;
  end;
end;

procedure TMainForm.qUsuarios_CuentaAfterCancel(DataSet: TDataSet);
begin
//Despues de cancelar a la hora de hacer un nuevo registro o edita los botonos se habilitan
//y se ponen visibles
  btnEdit.Enabled:= True;
  btnEdit.Visible:= True;
  btnEliminar.Enabled:= True;
  btnEliminar.Visible:= True;
  grdCuentas.ReadOnly := true;
end;

procedure TMainForm.qUsuarios_CuentaAfterEdit(DataSet: TDataSet);
begin
//Despues de editar cualquier registro el boton eliminar se deshabilita y no se podra ver
  btnEliminar.Enabled:=False;
  btnEliminar.Visible:=False;
  btnEdit.Visible:=False;
  btnEdit.Enabled:=False;
  grdCuentas.ReadOnly := false;

  ActivaForma(TfrmNuevaCuenta, frmNuevaCuenta);
end;

procedure TMainForm.qUsuarios_CuentaAfterInsert(DataSet: TDataSet);
begin
  //Despues de querer insertar un nuevo registro los botones edit y eliminar se deshabilitan y
  //no se podran ver

  btnEdit.Enabled:= False;
  btnEdit.Visible:= False;
  btnEliminar.Enabled:= False;
  btnEliminar.Visible:= False;
  grdCuentas.ReadOnly := false;

  ActivaForma(TfrmNuevaCuenta, frmNuevaCuenta);
end;

procedure TMainForm.qUsuarios_CuentaAfterPost(DataSet: TDataSet);
begin
//Despues de terminar de hacer un nuevo registro los botones edit y eliminar se habilitan y se
//podran ver
  btnEdit.Enabled:= True;
  btnEdit.Visible:= True;
  btnEliminar.Enabled:= True;
  btnEliminar.Visible:= True;
  grdCuentas.ReadOnly := true;
end;

procedure TMainForm.qUsuarios_CuentaBeforePost(DataSet: TDataSet);
begin
  if qUsuarios_CuentaNOMBRE_CUENTA.AsString <> '' then
  begin
     //Antes de insertar un nuevo registro aqui se le indica al data set el id del usuario
    qUsuarios_CuentaID_USUARIO.AsInteger := ID_USUARIO;
//  qUsuarios_CuentaID_FOLDER.AsInteger  :=
  end
  else
  begin
  Application.MessageBox('El campo "NOMBRE DE LA CUENTA" no puede estar vacio',
    'NLND', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  abort;
  end;
end;

procedure TMainForm.tmrtimerTimer(Sender: TObject);
var
  DateTime : TDateTime;
  str : string;
//  UnaHora : string;
begin
  // En un ciclo sin fin este indicara la hora exacta por segundos y el dia
  DateTime := Time;
  str := TimeToStr(DateTime);
  statUser.Panels[2].text := str;
//    statUser.Panels[1].text := datetostr(date);
  statUser.Panels[1].text :=  FormatDateTime('dddd", "d"-"mmmm"-"yyyy',Now);
end;

procedure TMainForm.TrayIcon1DblClick(Sender: TObject);
var
confirmPass : string;
begin
  { Hide the tray icon and show the window,
  setting its state property to wsNormal. }
  if grdCuentas.Visible = true then
  begin
    confirmPass:= Vcl.Dialogs.InputBox('NLND-Valida Usuario','Para validar, digite su contrase�a actual','');

    if confirmPass = USER_PASS then
    begin
      MainForm.OnShow := nil;
      TrayIcon1.Visible := False;
      Show();
      WindowState := wsNormal;
      Application.BringToFront();
    end
    else
    begin
        //Mensaje en caso de error en la validacion
      Application.MessageBox('Contrase�a incorrecta', 'NLND-Error', MB_OK
        + MB_ICONSTOP + MB_TOPMOST);
    end;
  end
  else
  begin
    MainForm.OnShow := nil;
    TrayIcon1.Visible := False;
    Show();
    WindowState := wsNormal;
    Application.BringToFront();
  end;
end;

procedure TMainForm.trayIconCreate;
var
MyIcon : TIcon;
begin
{ Load the tray icons. }
  TrayIcon1.Icons := TImageList.Create(Self);
  MyIcon := TIcon.Create;
  MyIcon.LoadFromFile('NLND_Icon.ico');
  TrayIcon1.Icon.Assign(MyIcon);
  TrayIcon1.Icons.AddIcon(MyIcon);

  MyIcon.LoadFromFile('NLND_Icon.ico');
  TrayIcon1.Icons.AddIcon(MyIcon);

  { Set up a hint message and the animation interval. }
  TrayIcon1.Hint := 'NLND';
  TrayIcon1.AnimateInterval := 200;

  { Set up a hint balloon. }
  TrayIcon1.BalloonTitle := 'NLND';
  TrayIcon1.BalloonHint := 'Doble click al icono en la barra de tareas para restaurar la aplicaci�n';
  TrayIcon1.BalloonFlags := bfInfo;
end;

end.

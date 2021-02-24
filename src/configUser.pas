unit configUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, acPNG,
  W7Classes, W7Images;

type
  TConfigUsuario = class(TForm)
    pnlUnpanel: TPanel;
    lblTitulo: TLabel;
    edtNombres: TDBEdit;
    qUsuarios: TUniQuery;
    dsUsuarios: TDataSource;
    edtApellidos: TDBEdit;
    edtEmail: TDBEdit;
    edtPass: TDBEdit;
    btnEdit: TSpeedButton;
    btnSalvar: TButton;
    btnCancel: TSpeedButton;
    btnSalir: TButton;
    qUnquery: TUniQuery;
    qUnqueryID_USUARIO: TIntegerField;
    qUnqueryNOMBRES: TStringField;
    qUnqueryAPELLIDOS: TStringField;
    qUnqueryEMAIL: TStringField;
    qUnqueryPASSWORD: TStringField;
    chkSeePass: TCheckBox;
    qUnqueryCONFIRMADO: TStringField;
    rgAppConfig: TRadioGroup;
    qUsuariosID_USUARIO: TIntegerField;
    qUsuariosNOMBRES: TStringField;
    qUsuariosAPELLIDOS: TStringField;
    qUsuariosCORREO: TStringField;
    qUsuariosUSUARIO: TStringField;
    qUsuariosPASSWORD: TStringField;
    qUsuariosUSUARIO_CONFIRMADO: TIntegerField;
    edtUsuario: TDBEdit;
    lblNombres: TLabel;
    lblApellidos: TLabel;
    lblEmail: TLabel;
    lblUsuario: TLabel;
    lblPassword: TLabel;
    imgPassOculto: TW7Image;
    imgPassSee: TW7Image;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure qUsuariosAfterEdit(DataSet: TDataSet);
    procedure qUsuariosAfterCancel(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure qUsuariosAfterPost(DataSet: TDataSet);
    procedure btnSalirClick(Sender: TObject);
    procedure chkSeePassClick(Sender: TObject);
    procedure rgAppConfigClick(Sender: TObject);
    procedure imgPassOcultoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigUsuario: TConfigUsuario;

implementation

uses
  DataModule, MainDesktop, MailSend;

{$R *.dfm}

procedure TConfigUsuario.btnCancelClick(Sender: TObject);
begin
 //Cancela el proceso del dataset
 qUsuarios.Cancel;
end;

procedure TConfigUsuario.btnEditClick(Sender: TObject);
begin
  //Manda al dataset a editarse
  qUsuarios.Edit;
end;

procedure TConfigUsuario.btnSalirClick(Sender: TObject);
begin
  //Cierra formulario
  ConfigUsuario.Close;
end;

procedure TConfigUsuario.btnSalvarClick(Sender: TObject);
var Asunto,Body :string;
begin
  //Si es diferente de variable mainform entonces esta validacion es igual a verdadera
  if qUsuariosNOMBRES.AsString <> MainForm.USUARIO_NOMBRE then
  begin
    //Actualiza variable del mainform
    MainForm.USUARIO_NOMBRE :=  qUsuariosNOMBRES.AsString;
    //Actualiza panel con el nombre y apellido nuevo
    MainForm.statUser.Panels[0].Text := 'Usuario: '+(MainForm.USUARIO_NOMBRE) +' '+(MainForm.USUARIO_APELLIDO);
  end;
  //Si es diferente de variable mainform entonces esta validacion es igual a verdadera
  if qUsuariosAPELLIDOS.AsString <> MainForm.USUARIO_APELLIDO then
  begin
    //Actualiza variable del mainform
    MainForm.USUARIO_APELLIDO := qUsuariosAPELLIDOS.AsString;
    //Actualiza panel con el nombre y apellido nuevo
    MainForm.statUser.Panels[0].Text := 'Usuario: '+(MainForm.USUARIO_NOMBRE) +' '+(MainForm.USUARIO_APELLIDO);
  end;
  //Si es diferente de variable mainform entonces esta validacion es igual a verdadera
  if qUsuariosCORREO.AsString <> MainForm.USER_EMAIL then
  begin
    //Actualiza variable del mainform
    MainForm.USER_EMAIL := qUsuariosCORREO.AsString;
  end;
  //Si es diferente de variable mainform entonces esta validacion es igual a verdadera
  if qUsuariosUSUARIO.AsString <> MainForm.USER_USUARIO then
  begin
    //Actualiza variable del mainform
    MainForm.USER_USUARIO := qUsuariosUSUARIO.AsString;
  end;
  //Si es diferente de variable mainform entonces esta validacion es igual a verdadera
  if qUsuariosPASSWORD.AsString <> MainForm.USER_PASS then
  begin
    //Actualiza variable del mainform
    MainForm.USER_PASS := qUsuariosPASSWORD.AsString;

    Asunto := 'Aviso tu Contraseņa ha sido cambiada';
    Body := '<html>'+
            '<body>'+
            '<hr>'+
            '<h3>Le informamos que su clave ha sido actualizada,</h3>'+
            '<h3>exactamente '+DateTimeToStr(now)+' , </h3>'+
            '<h3>En caso de que usted no realizo el cambio, contactar con el administrador<h3>'+
            '<hr>'+
            '</body></html>';

//     Trata de enviar el correo con las variables llenadas
    try
      begin
        Envio_Correo.EnviaCorreo(MainForm.USER_EMAIL,Asunto,Body);
      end;
    except
      //Ojala esto funcione
    end;
  end;

  //Inserta los cambios hechos por el usuario a la tabla
  qUsuarios.Post;
  //Refresca el data set
  qUsuarios.Refresh;
end;

procedure TConfigUsuario.chkSeePassClick(Sender: TObject);
begin
  //Si ver contraseņa es igual a verdadero entonces se podra ver de lo contrario se ocultara con
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

procedure TConfigUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Libera memoria al cerrar formulario
 Action := caFree;
end;

procedure TConfigUsuario.FormShow(Sender: TObject);
begin
  //Al abrir formulario selecciona el usuario logueado
  qUsuarios.Close;
  qUsuarios.SQL.Clear;
  qUsuarios.SQL.Add('SELECT * FROM USERS');
  qUsuarios.SQL.Add('WHERE ID_USUARIO = '+IntToStr(MainForm.ID_USUARIO));

  qUsuarios.Open;

  if dm.OnMinimize = '0' then
  begin                         
    rgAppConfig.ItemIndex := 0;
  end
  else
  begin
    rgAppConfig.ItemIndex := 1;
  end;
  
end;

procedure TConfigUsuario.imgPassOcultoClick(Sender: TObject);
begin
  if chkSeePass.Checked = true then chkSeePass.Checked := false
  else chkSeePass.Checked := true;
end;

procedure TConfigUsuario.qUsuariosAfterCancel(DataSet: TDataSet);
begin
 //Despues de cancelar habilita o deshabilita botones
 btnEdit.Visible := true;
 btnCancel.Visible := False;
 btnSalvar.Enabled := False;
end;

procedure TConfigUsuario.qUsuariosAfterEdit(DataSet: TDataSet);
begin
  //Despues de editar habilita o deshabilita botones
  btnEdit.Visible := False;
  btnCancel.Visible := True;
  btnSalvar.Enabled := true;
end;

procedure TConfigUsuario.qUsuariosAfterPost(DataSet: TDataSet);
begin
  //Despues de salvar habilita o deshabilita botones
  btnSalvar.Enabled := False;
  btnCancel.Visible := False;
  btnEdit.Visible := True;
end;

procedure TConfigUsuario.rgAppConfigClick(Sender: TObject);
begin
  case rgAppConfig.ItemIndex of
    0:begin
        if dm.OnMinimize = '1' then
        begin
          DM.XMLNLND.Active:=False;
          DM.XMLNLND.Active:=True;
          DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['OMNM'].Text := '0';
          DM.XMLNLND.SaveToFile('DBProvider.xml');
          DM.XMLNLND.Active:=False;
          dm.OnMinimize := '0';
        end;
      end;
    1:begin 
        if dm.OnMinimize = '0' then
        begin
          DM.XMLNLND.Active:=False;
          DM.XMLNLND.Active:=True;
          DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['OMNM'].Text := '1';
          DM.XMLNLND.SaveToFile('DBProvider.xml');
          DM.XMLNLND.Active:=False;
          dm.OnMinimize := '1';
        end;
      end;
  end;
end;

end.

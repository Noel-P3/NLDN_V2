unit Password;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  MemDS, DBAccess, Uni;

type
  TfrmConfiguracion = class(TForm)
    pnlConfigDB: TPanel;
    edtChangePass1: TEdit;
    edtChangePass2: TEdit;
    BtnUpdatePass: TButton;
    lblTitulo1: TLabel;
    qUnquery: TUniQuery;
    btnSalir: TButton;
    lblContrasena: TLabel;
    lblConfirmaContra: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnUpdatePassClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure edtChangePass2Change(Sender: TObject);
    procedure edtChangePass2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    HolaMailSend :Integer;
  end;

var
  frmConfiguracion: TfrmConfiguracion;

implementation

uses
  DataModule, SesionInicio, MainDesktop, MailSend;

{$R *.dfm}

procedure TfrmConfiguracion.btnSalirClick(Sender: TObject);
begin
  frmConfiguracion.Close;
end;

procedure TfrmConfiguracion.BtnUpdatePassClick(Sender: TObject);
begin
  //Mensaje para el usuario que le preguntar� si desea actualizar con dos casos: si y no..
  case Application.MessageBox('�Seguro desea actualizar la contrase�a?',
    'NLND-Pregunta', MB_YESNO + MB_ICONINFORMATION + MB_TOPMOST) of
    IDYES:
      begin
          //usuario.: 20200683
          //Contrase�a actual.: beltre
         //En caso de si entonces entra a este bloque de codigo
         //------------------------------------------------------------------//
        //Si la contrase�a digitada es igual a la confirmacion de contrase�a entonces entra
       if edtChangePass2.Text = edtChangePass1.Text then
       begin
            //Si la contrase�a digitada es diferente a la contrase�a actual del usuario entra
            if edtChangePass1.Text <> Envio_Correo.USER_PASSMS then
            begin
             qUnquery.SQL.Add('UPDATE USERS SET PASSWORD = '+QuotedStr(edtChangePass2.Text));
             qUnquery.SQL.Add('WHERE ID_USUARIO = '+IntToStr(Envio_Correo.USER_IDSMS));

             qUnquery.ExecSQL;

             Envio_Correo.USER_PASSMS := edtChangePass2.Text;

             Application.MessageBox('Contrase�a actualizada correctamente!!!',
             'NLND-Enhorabuena', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

             edtChangePass1.Text := '';
             edtChangePass2.Text := '';

             frmConfiguracion.Close;
            end
            else
            begin
             Application.MessageBox('La contrase�a a cambiar no puede ser igual a la actual',

             'NLND-Error', MB_OK + MB_ICONWARNING + MB_TOPMOST);

             edtChangePass1.Text := '';
             edtChangePass2.Text := '';
            end;
       end
       else
        begin
         Application.MessageBox('Las contrase�as deben de ser iguales para poder actualizar',
           'NLND-Erro', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

           edtChangePass2.Text := '';
        end;
      end;
    IDNO:
      begin
        //Tato xd
      end;
  end;
end;

procedure TfrmConfiguracion.edtChangePass2Change(Sender: TObject);
begin
   if edtChangePass1.Text <> '' then
  begin
    if edtChangePass2.Text <> '' then
    BtnUpdatePass.Enabled := True;
  end
  else
    BtnUpdatePass.Enabled := False;
end;

procedure TfrmConfiguracion.edtChangePass2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then BtnUpdatePassClick(BtnUpdatePass)
end;

procedure TfrmConfiguracion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if HolaMailSend = 1 then
  begin
    Envio_Correo.Close;
  end;
 Action := caFree;
end;

procedure TfrmConfiguracion.FormCreate(Sender: TObject);
begin
  HolaMailSend := 0;
end;

procedure TfrmConfiguracion.FormShow(Sender: TObject);
begin
  edtChangePass1.Height := 30;
  edtChangePass2.Height := 30;
end;

end.

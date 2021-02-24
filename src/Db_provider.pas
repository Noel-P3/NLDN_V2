unit Db_provider;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit,Winapi.ShellAPI;

type
  TfrmDbProvider = class(TForm)
    edtServidor: TAdvEdit;
    Memo1: TMemo;
    btnReiniciar: TButton;
    btnSalir: TButton;
    procedure btnSalirClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDbProvider: TfrmDbProvider;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TfrmDbProvider.btnReiniciarClick(Sender: TObject);
begin
  if DM.XMLNLND.Active = false then DM.XMLNLND.Active := true;
  DM.XMLNLND.ChildNodes.Nodes['body'].ChildNodes.Nodes['DBPro'].Text := edtServidor.Text;
  DM.XMLNLND.SaveToFile('DBProvider.xml');
  if DM.XMLNLND.Active = true then DM.XMLNLND.Active := false;

  ShellExecute(Handle, 'open','.\NLND.EXE',nil,nil, SW_SHOWNORMAL);
  Close;
end;

procedure TfrmDbProvider.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDbProvider.FormShow(Sender: TObject);
begin
  if DM.XMLNLND.Active = false then DM.XMLNLND.Active := true;
  edtServidor.Text := dm.XMLNLND.ChildNodes.FindNode('body').ChildNodes.Nodes['DBPro'].Text;
  if DM.XMLNLND.Active = true then DM.XMLNLND.Active := false;
end;

end.

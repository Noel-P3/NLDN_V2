object frmConfiguracion: TfrmConfiguracion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NLND-Cambiar la contrase'#241'a'
  ClientHeight = 265
  ClientWidth = 440
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConfigDB: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 265
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 273
    ExplicitHeight = 259
    object lblTitulo1: TLabel
      Left = 130
      Top = 38
      Width = 190
      Height = 18
      Caption = 'Change the password'
      Font.Charset = OEM_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Terminal'
      Font.Style = []
      ParentFont = False
    end
    object lblContrasena: TLabel
      Left = 20
      Top = 84
      Width = 104
      Height = 16
      Caption = 'Nueva Contrase'#241'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblConfirmaContra: TLabel
      Left = 0
      Top = 118
      Width = 124
      Height = 16
      Caption = 'Confirmar contrase'#241'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtChangePass1: TEdit
      Left = 130
      Top = 76
      Width = 190
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
    end
    object edtChangePass2: TEdit
      Left = 130
      Top = 112
      Width = 190
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnChange = edtChangePass2Change
      OnKeyPress = edtChangePass2KeyPress
    end
    object BtnUpdatePass: TButton
      Left = 130
      Top = 148
      Width = 190
      Height = 41
      Caption = 'Actualiza'
      Enabled = False
      TabOrder = 2
      OnClick = BtnUpdatePassClick
    end
    object btnSalir: TButton
      Left = 130
      Top = 195
      Width = 190
      Height = 41
      Caption = 'Salir'
      TabOrder = 3
      OnClick = btnSalirClick
    end
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    Left = 184
    Top = 8
  end
end

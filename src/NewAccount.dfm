object frmNuevaCuenta: TfrmNuevaCuenta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NLND-Agregar nueva cuenta'
  ClientHeight = 332
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lblConfirma: TLabel
    Left = 133
    Top = 8
    Width = 331
    Height = 22
    Caption = 'Formulario para agregar una nueva cuenta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbledtNombre_cuenta: TLabeledEdit
    Left = 80
    Top = 59
    Width = 201
    Height = 24
    EditLabel.Width = 119
    EditLabel.Height = 16
    EditLabel.Caption = 'Nombre de la cuenta'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object lbledtNombre_usuario: TLabeledEdit
    Left = 312
    Top = 59
    Width = 201
    Height = 24
    EditLabel.Width = 109
    EditLabel.Height = 16
    EditLabel.Caption = 'Nombre de usuario'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object lbledtEmail: TLabeledEdit
    Left = 80
    Top = 152
    Width = 433
    Height = 24
    EditLabel.Width = 39
    EditLabel.Height = 16
    EditLabel.Caption = 'Correo'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object lbledtPassword: TLabeledEdit
    Left = 80
    Top = 107
    Width = 201
    Height = 24
    EditLabel.Width = 65
    EditLabel.Height = 16
    EditLabel.Caption = 'Contrase'#241'a'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnCrearFolder: TButton
    Left = 312
    Top = 222
    Width = 201
    Height = 43
    Caption = 'Crear nuevo folder'
    TabOrder = 4
    Visible = False
  end
  object btnReady: TButton
    Left = 80
    Top = 271
    Width = 433
    Height = 50
    Caption = 'Listo'
    TabOrder = 5
    OnClick = btnReadyClick
  end
  object btnChooseFolder: TButton
    Left = 80
    Top = 222
    Width = 201
    Height = 43
    Caption = 'Elegir el folder'
    TabOrder = 6
    Visible = False
  end
  object lbledtFolder: TLabeledEdit
    Left = 80
    Top = 195
    Width = 433
    Height = 24
    EditLabel.Width = 36
    EditLabel.Height = 16
    EditLabel.Caption = 'Folder'
    ReadOnly = True
    TabOrder = 7
    Visible = False
  end
end

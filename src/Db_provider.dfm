object frmDbProvider: TfrmDbProvider
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n manual del servidor'
  ClientHeight = 197
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtServidor: TAdvEdit
    Left = 8
    Top = 32
    Width = 177
    Height = 25
    EmptyTextStyle = []
    LabelCaption = 'IP O NOMBRE DEL SERVIDOR'
    LabelPosition = lpTopLeft
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 0
    Text = ''
    Visible = True
    Version = '3.3.2.8'
  end
  object Memo1: TMemo
    Left = 191
    Top = 8
    Width = 315
    Height = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Si estas en esta pantalla significa que la '
      'conexion al '
      'servidor no fue sastifactoria...'
      ''
      'Para poder resolver este '
      'caso habla con el *administrador del sistema*, o '
      'si '
      'conoces la direccion IP o "Nombre" del servidor, '
      'puedes digitarlo en la cajita que esta a la '
      'izquierda'
      'de esta ayuda.'
      ''
      'Una vez digitado prueba hacer "click" '
      'en reiniciar aplicaci'#243'n y esperar que funcione '
      'todo '
      'correctamente.')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnReiniciar: TButton
    Left = 8
    Top = 83
    Width = 177
    Height = 41
    Caption = 'Reiniciar aplicaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnReiniciarClick
  end
  object btnSalir: TButton
    Left = 8
    Top = 150
    Width = 177
    Height = 41
    Caption = 'Cerrar aplicaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnSalirClick
  end
end

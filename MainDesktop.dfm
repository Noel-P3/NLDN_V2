object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NLND'
  ClientHeight = 542
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlre: TPanel
    Left = 761
    Top = 102
    Width = 211
    Height = 421
    Align = alRight
    TabOrder = 2
    object lblConfirma: TLabel
      Left = 6
      Top = 25
      Width = 191
      Height = 44
      Caption = 'Codigo de confirmacion'#13#10
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnUpdate: TButton
      Left = 12
      Top = 304
      Width = 184
      Height = 55
      Hint = 'Descargar la nueva actualizaci'#243'n'
      Caption = 'Actualizaci'#243'n aqu'#237'!!!'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = btnUpdateClick
    end
    object btnConfirma: TButton
      AlignWithMargins = True
      Left = 1
      Top = 74
      Width = 208
      Height = 55
      Hint = 'Confirmar E-mail'
      Caption = 'Confirmar E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = btnConfirmaClick
    end
    object btnConfigPass: TButton
      AlignWithMargins = True
      Left = 4
      Top = 373
      Width = 203
      Height = 44
      Hint = 'Configurar usuarios'
      Align = alBottom
      Caption = 'Configuraci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnConfigPassClick
    end
  end
  object pnlBarradetareas: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 57
    Align = alTop
    TabOrder = 1
    object btnEliminar: TSpeedButton
      Left = 316
      Top = 1
      Width = 51
      Height = 55
      Hint = 'Eliminar registro'
      Align = alLeft
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004659
        DF28445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445B
        DE65445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445B
        DE65445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445BDE65445B
        DE65445BDE65445BDE65445BDE65445BDE654659DF280000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF3A4EC0FF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF3A4EC0FF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF3A4EC0FF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF3A4EC0FF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF3A4EC0FF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF596E
        E3FFBCC2EBFFBCC2EBFFBCC2EBFFBCC2EBFFBCC2EBFFBCC2EBFFBCC2EBFFBCC2
        EBFFBCC2EBFFBCC2EBFFBCC2EBFFBCC2EBFF4756AAFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFFB1B8E5FFA0A8DCFFA0A8DCFFA0A8DCFFA0A8DCFFA0A8DCFFA0A8
        DCFFA0A8DCFFA0A8DCFFA0A8DCFFA0A8DCFF4352A8FF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7782C5FFCFD4F7FF30409DFFA2ABDEFFA2ABDEFF3040
        9DFFCFD4F7FF7782C5FF5A67B5FFD1D6F8FF4B59ACFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7D88C8FFDCE1FEFF30409DFFADB4E3FFADB4E3FF3040
        9DFFDCE1FEFF7D88C8FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7D88C8FFDCE1FEFF30409DFFADB4E3FFADB4E3FF3040
        9DFFDCE1FEFF7D88C8FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7D88C8FFDCE1FEFF30409DFFADB4E3FFADB4E3FF3040
        9DFFDCE1FEFF7D88C8FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF30409DFF3344A4780000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7D88C8FFDCE1FEFF30409DFFADB4E3FFADB4E3FF3040
        9DFFDCE1FEFF7D88C8FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF30409DFF3243A4FF3D50C66C0000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFF5E6BB7FF7D88C8FFDCE1FEFF30409DFFADB4E3FFADB4E3FF3040
        9DFFDCE1FEFF7D88C8FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF3243A4FF4157D5FF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF556A
        E3FFA3ABE4FF4E5CAFFF616EB9FF9DA6DAFF30409DFF7F8ACAFF7F8ACAFF3040
        9DFF9DA6DAFF616EB9FF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF30409DFF3243A4FF4157D5FF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF384BB9FF30409DFF30409DFF30409DFF30409DFF30409DFF30409DFF3040
        9DFF30409DFF30409DFF5E6BB7FFDEE2FFFF4E5CAEFF30409DFF30409DFF3040
        9DFF3243A4FF4157D5FF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5C70
        E4FFD1D6F8FFD1D6F8FFD1D6F8FFD1D6F8FFD1D6F8FFD1D6F8FFD1D6F8FFD1D6
        F8FFD1D6F8FFD1D6F8FFD5DAFAFFDEE2FFFF4E5CAEFF30409DFF30409DFF3243
        A4FF4157D5FF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5166
        E2FF8E9ADEFF8B94D1FF8A94D0FF8A94D0FF8A94D0FF8A94D0FF8A94D0FF8A94
        D0FF8A94D0FF8A94D0FF8A94D0FF8A94D0FF3F4DA5FF30409DFF3243A4FF4157
        D5FF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF455C
        DFFF3D50B6FF3848A2FF3848A2FF3848A2FF3848A2FF3848A2FF3848A2FF3848
        A2FF3848A2FF3848A2FF3848A2FF3848A2FF32419EFF3243A4FF4157D5FF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF5E72
        E5FFDEE2FFFFDEE2FFFFDEE2FFFFDEE2FFFFDEE2FFFFDEE2FFFFDEE2FFFFDEE2
        FFFFDEE2FFFFDEE2FFFFDEE2FFFFDEE2FFFF4F5EB4FF4157D5FF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF4E64
        E1FF7B8ADCFF7B8ADCFF7B8ADCFFC2C9F1FFCFD4F7FF7581C4FF7581C4FFCFD4
        F7FFC2C8EFFF7A87D4FF7B8ADCFF7B8ADCFF4C60D8FF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF7584DBFFDEE2FFFFBCC3ECFFBCC3ECFFDEE2
        FFFF7381D6FF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF7181DBFFADB5E8FFADB5E8FF7181
        DBFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE650000000000000000445A
        DF66445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDFFF445B
        DFFF445BDFFF445BDFFF445BDFFF445BDFFF445BDE6500000000000000004659
        DF28445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445A
        DF66445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445A
        DF66445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445ADF66445A
        DF66445ADF66445ADF66445ADF66445ADF664659DF2800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEliminarClick
      ExplicitLeft = 322
      ExplicitTop = 2
    end
    object btnSalir: TSpeedButton
      Left = 920
      Top = 1
      Width = 51
      Height = 55
      Hint = 'Salir de la aplicaci'#243'n'
      Align = alRight
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000875730357A4E2CDC754425FC744223FF734021FF834D2FFF844D30FF804C
        30FF584231FC664D32EC7D5B36B08F7038200000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007E522E797444
        26FC734020FF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3F382FFF634B31ED926A3552000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000995E331E744527F873401FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3D382FFF916435CFD595
        400C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000007C4F2D67744122FF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF9A5F
        33F3C4823B2B0000000000000000000000000000000000000000000000000000
        000000000000000000008057308A6E3F21FF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE19F41E8F9B5442D00000000000000000000000000000000000000000000
        00000000000080512C686D3E21FF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846E5FFB3421B000000000000000000000000000000000000
        0000CC88330F6D4427FD723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFCB846C6FFB649070000000000000000000000000000
        0000AD7038C96A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFCB846FFFBB74687000000000000000000000000C387
        3C408B5230FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFCB846FFFCB846F9FFBC44220000000000000000B77A
        39CA874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF72473BFF804C
        48FFE4A241FFFCB846FFFCB846FFFCB846FFFCB8469A00000000FFBF400CC484
        3BF9874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF4C8CA2FF32C7FBFF3E9ACDFF6F442AFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF67446FFF4F3C
        E8FFCA915FFFFCB846FFFCB846FFFCB846FFFCB846F4FFBF400CFCB74658C486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF34C5F6FF32CFFEFF31BDFEFF5C6366FF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF674370FF4A3A
        FBFF5843EBFFDEA265FFFCB846FFFCB846FFFCB846FFFCB74555FCB8469AC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF3FA7CCFF32CEFEFF33AEF0FF6A4C38FF723F1FFF864E2FFF874E30FF874E
        30FF532C9CFF452FA0FF42388EFF42388EFF42388EFF42388EFF573FBBFF4A3A
        FBFF4A3AFBFF5A46EAFFDEA463FFFCB846FFFCB846FFFCB94698FCB845CAC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF64594FFF6E462DFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF5A45EBFFDEA265FFFCB846FFFCB946C7FCB847EBC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF4A3AFBFF5A45EBFFDEA265FFFCB846E9FCB846F9C486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF5A46EAFFE2A65FF9FCB846F9C486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF5A46EAFFE2A65FF9FCB847EBC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF4A3AFBFF5A45EBFFDEA265FFFCB846E9FCB845CAC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF591BBEFF4C26ECFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3AFBFF4A3A
        FBFF4A3AFBFF4A3AFBFF5A45EBFFDEA265FFFCB846FFFCB946C7FCB8479BC486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF532C9CFF452FA0FF42388EFF42388EFF42388EFF42388EFF573FBBFF4A3A
        FBFF4A3AFBFF5A46EAFFDEA463FFFCB846FFFCB846FFFCB74699FCB74559C486
        3CFF874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF674370FF4A3A
        FBFF5843EBFFDEA265FFFCB846FFFCB846FFFCB846FFFCB94657FFB6490EC385
        3BFA874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF67446FFF4F3C
        E8FFCA915FFFFCB846FFFCB846FFFCB846FFFCB846F4FFB14E0D00000000B679
        3ACB874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF72473BFF804C
        48FFE4A241FFFCB846FFFCB846FFFCB846FFFCB846960000000000000000985C
        338D874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFCB846FFFCB846F3FFB54A180000000000000000874E
        3079874E30FF6A4027FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFCB846FFFBB84581000000000000000000000000874E
        3079874E30FF6C4127FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF864E2FFF874E30FF874E
        30FF483B30FF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846FFFDB846CCFFAA3909000000000000000000000000874E
        3079874E30FF6E4127FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF723F
        1FFF723F1FFF723F1FFF723F1FFF734020FF794324FF874D30FF844D30FF7147
        30FF43392FFF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE4A241FFFCB846E3FFB54A1800000000000000000000000000000000874E
        3079874E30FF704227FF723F1FFF723F1FFF723F1FFF723F1FFF723F1FFF733F
        20FF784324FF7D4728FF814B2CFF78492FFF644430FF4F3D2FFF3D372FFF3B37
        2FFF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFE1A041E9F9B7482E0000000000000000000000000000000000000000874E
        3079874E30FF724327FF723F1FFF733F20FF784323FF7D4728FF824B2DFF7849
        2EFF644430FF4F3D2FFF3D3730FF3B372FFF3B372FFF3B372FFF3B372FFF3B37
        2FFF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF3B372FFF744830FF874E
        30FFA96B374A000000000000000000000000000000000000000000000000874D
        306A874E30FF77482CFF73462CFF744830FF744830FF6D4630FF654530FF6444
        30FF644430FF644430FF644430FF644430FF644430FF644430FF644430FF6444
        30FF644430FF644430FF644430FF644430FF644430FF644430FF7F4C30FF874E
        30FF894E2E270000000000000000000000000000000000000000000000008552
        3319874E30E9874E30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E
        30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E
        30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E30FF874E30FF884F
        2FBCFF0000010000000000000000000000000000000000000000000000000000
        0000854E2C17874E3066874D2F77874D2F77874D2F77874D2F77874D2F77874D
        2F778E53317EA96C36A6B77939CABF8039E3C2843BF4C5863CFCC5863CFCC284
        3BF4BF8039E3B77938C9A76C36A68E53317E874D2F77874D2F77874F2F578055
        2B06000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSalirClick
      ExplicitLeft = 919
      ExplicitTop = -4
    end
    object btnEdit: TSpeedButton
      Left = 265
      Top = 1
      Width = 51
      Height = 55
      Hint = 'Editar registro'
      Align = alLeft
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000050000
        0010000000160000001600000016000000160000001600000016000000160000
        0016000000160000001600000016000000160000001600000016000000160000
        0016000000160000001600000016000000160000001600000016000000160000
        0010000000050000000000000000000000000000000000000000000000100000
        0031000000420000004300000043000000430000004300000043000000430000
        0043000000430000004300000043000000430000004300000043000000430000
        0043000000430000004300000043000000430000004300000043000000420000
        003100000010000000000000000000000000000000000000000000000016B0B0
        AEF3AFAFADFFAEAEABFFADADABFFADADABFFADADABFFADADABFFADADABFFADAD
        ABFFADADABFFADADABFFADADABFFADADABFFADADABFFADADABFFADADABFFADAD
        ABFFADADABFFADADABFFADADABFFADADABFFADADABFFAEAEABFFAFAFADFFB0B0
        AEF300000016000000000000000000000000000000000000000000000016B0B0
        ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
        ADFF00000016000000000000000000000000000000000000000000000016AEAE
        ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAE
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFFFFFEFF0000D6FF424BFDFF3D47FCFFDBDCFDFF0000D6FF434C
        FDFF4049FCFF3944FCFFFFFFFFFF9A9A99FFB5B5B5FFB4B4B4FFB3B3B3FFEFEF
        EFFF9A9A9AFFB5B5B5FFB5B5B5FFB4B4B4FFB2B2B2FFFFFFFFFFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFCFFFFFFFDFFFFFFFDFFFFFF
        FCFFFFFFFCFFFFFFFCFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
        FCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFBFFFFFFFAFFFFFFFBFFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFDFDFDFF9A9A9AFFB6B6B6FFB5B5B5FFB5B5B5FFB4B4B4FFEDED
        EDFF9B9B9BFFB6B6B6FFB6B6B6FFBBB9B8FF7D8585FF0020BCFF5056FFFF454D
        FFFFFFFFFCFF0000D8FF444DFEFF414AFDFF3A44FDFFFFFFF9FFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFBFBFAFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFEFEFCFFFEFE
        FCFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFFFFBECED6FF4F473BFF4C6870FFB8D1
        DBFFFFFFFFFFFFFFFDFFFFFFFAFFFFFFF9FFFFFFF8FFFDFCF9FFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFEFDF7FFFFFFF8FFFFFFF8FFFFFFF7FFFFFFF6FFFFFFF6FFFFFF
        F6FFFFFFF6FFFFFFF6FFFFFFF7FFFFFFFBFFFFFFFFFF516F80FF58717AFF61B5
        E6FF3474A2FFABBECDFFFFFFFDFFFFFFFCFFFDFDF9FFF9F9F8FFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFFFFF6FF0000D9FF0000D9FF464FFFFF424CFEFF414BFEFF414B
        FEFF414BFEFF414AFEFF3B45FEFFFFFFF8FFA4A19FFF7F9DB1FF69BEEBFFA4E1
        FFFF7AC8F9FF3D8CCAFF225D94FFCCC2BAFFBBB8B6FFFAFAF8FFFFFFFFFFADAD
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFFBF9F5FFFFFFF6FFFFFFF6FFFFFFF5FFFFFFF4FFFFFFF4FFFFFF
        F4FFFFFFF4FFFFFFF4FFFFFEF4FFFDFBF6FFFFFDF9FFFFFFFCFF6DA1C2FFF0FE
        FFFFA9DEFBFF54B4FBFF0C96FFFF286093FFFFFFFDFFFFFBF8FFFFFFFFFFAEAE
        ABFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFF7F6F5FFFBF9F7FFFCFAF8FFFBF9F7FFFAF9F6FFFBF9F7FFFBFA
        F8FFFBF9F7FFFAF9F6FFFDFBF5FFFFFFF4FFFFFFF4FFFFFFF5FFAFC8D1FF77BA
        D8FFEBFBFFFF5DBCFFFF1297FFFF0F97FFFF265D91FFFFFFFAFFFFFFFFFFB0AF
        ACFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFF6F5F5FF9B9B9BFFB7B7B7FFB5B6B6FFE8E8E8FF9C9D9DFFB7B7
        B7FFB6B6B6FFB6B6B4FFFFFDF5FF0000D9FF454EFFFF464EFFFF4B4EFFFF1C72
        C1FF79DBFFFFDDF6FFFF62BDFFFF1497FFFF0F96FFFF285E91FFE2EAF2FFB8B4
        AFFF00000016000000000000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFF4F3F3FFF7F5F5FFF7F6F6FFF7F6F6FFF6F5F5FFF7F6F6FFF7F6
        F6FFF7F6F6FFF7F6F5FFFAF7F3FFFFFEF3FFFFFFF2FFFFFEF1FFFFFEF3FFFFFF
        F4FF1B6EC2FF7BDBFFFFDFF6FFFF62BDFFFF1497FFFF1197FFFF2D6397FFC8BD
        B0FF00000022000000060000000000000000000000000000000000000016ADAD
        ABFFFFFFFFFFF2F2F0FFF4F4F3FFF5F5F4FFF5F5F4FFF5F5F4FFF4F4F3FFF4F4
        F3FFF5F5F4FFF4F4F3FFF4F4F2FFF6F6F3FFF7F7F3FFF6F6F3FFF7F6F2FFFDF9
        F4FFCEDBEAFF1D70C4FF7BDCFFFFDEF6FFFF62BDFFFF1498FFFF1C8DEDFF3468
        9AFF0000003D0000001C0000000600000000000000000000000000000016ADAD
        ABFFFFFFFFFFF1F1F0FF9C9C9CFFB8B8B8FFB8B8B8FFB7B7B8FFB6B6B6FFE6E5
        E5FF9D9D9DFFB6B6B6FFF4F4F3FF9D9D9DFFB8B8B8FFB7B7B8FFB6B6B6FFE8E6
        E5FFA6A29EFFCBC1B8FF1B6FC3FF7ADBFFFFDEF6FFFF62BEFFFF1498FFFF169B
        FFFF3B6D9BFF0000003D0000001C00000006000000000000000000000016ADAD
        ABFFFFFFFFFFF0F0EEFFF4F3F0FFF5F4F1FFF4F4F1FFF4F4F1FFF4F4F0FFF4F3
        F0FFF4F4F1FFF3F3F0FFF2F2F0FFF3F3F2FFF3F3F2FFF3F3F2FFF2F2F1FFF2F2
        F1FFF4F4F2FFF9F6F2FFFFFAF1FF1A6DC2FF7ADBFFFFDEF6FFFF62BEFFFF1498
        FFFF139CFFFF326EA4FF0000003D0000001C000000060000000000000016ADAD
        ABFFFFFFFFFFF2F1ECFFFAF8ECFFFBFAECFFF9F8ECFFF8F7ECFFFCFAECFFFBFA
        ECFFFAF9EBFFF7F6ECFFF2F2EEFFF2F2F0FFF2F2F1FFF2F2F0FFF1F1F0FFF0F0
        EFFFF2F2F1FFF3F3F1FFF8F5F1FFFFFBF2FF1C6FC4FF7ADCFFFFDEF7FFFF5FBF
        FFFF0A9AFFFF8B7D70FF78776AFF0000003D0000001C0000000600000016ADAD
        ABFFFFFFFFFFF5F4EBFF0000DAFF464EFFFF414BFFFFCFD0F0FF0000DAFF4750
        FFFF434DFFFF3E48FFFFF5F5EDFF9E9E9DFFB8B9B9FFB8B8B8FFB7B7B7FFE3E3
        E2FF9E9E9EFFB9B9B9FFB9B9B9FFBFBCB9FFCAC0B8FF1B6FC4FF70C6F6FFD7F9
        FFFFAC9E94FF9E9C94FF7B7F72FF9A6ACDFF000000370000001100000016ADAD
        ABFFFFFFFFFFF0EDE9FFF8F5EAFFF8F6E9FFF6F4E9FFF5F3EAFFF9F6EAFFF9F7
        E9FFF7F5E9FFF4F2E9FFF0EFEBFFEFEEEDFFEFEEEEFFEFEEEEFFEEEDEDFFEEED
        EDFFEFEEEEFFEFEEEEFFEFEEEEFFF0EFEEFFF5F0EDFFFFF5EDFF146EC6FFB7AC
        A5FFEBEAE4FF878A81FFCA8CC9FFC184BAFF986BC8FF0000001100000016ADAD
        ABFFFFFFFFFFEAE9E8FFECEBE9FFECEBE9FFECEBE9FFECEBE9FFEDEBE9FFEDEB
        E9FFECEBE9FFECEBE9FFEBEAE9FFEBEAEAFFEBEAEAFFEBEAEAFFEBEAEAFFEAE9
        EAFFEAE9EAFFEAE9E9FFEAE9E9FFEAE9E9FFECEAE9FFEFEBE9FFFFFFFFFFA4A0
        99FF999B91FFDCA2DBFFD099CEFFC88FC2FF9F70CAFF0000000600000016ADAD
        ABFFFFFFFFFFE8E7E5FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8
        E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8
        E7FFE8E7E6FFE7E6E5FFE8E6E5FFE8E6E5FFE7E6E5FFE8E6E5FFFFFFFFFFAEB2
        AAFFBF83D5FFE5B1E3FFDAA7D6FFAB7BCCFF000000060000000000000016ADAE
        ABFFFFFFFFFFE7E6E5FFE8E7E6FFE9E8E7FFE9E8E7FFE9E8E6FFE8E7E6FFE8E7
        E6FFE9E8E7FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE7E6
        E5FFF3F1F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADB1
        AAFF0000001BBE89D2FFB987D0FF00000006000000000000000000000016AEAE
        ABFFFFFFFFFFE7E6E5FFEAE9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEAE9
        E8FFEAE9E8FFEAE9E8FFE8E7E6FFE7E6E5FFE7E6E5FFE7E6E5FFE7E6E5FFE5E4
        E3FFFFFFFFFFCBCBCAFFA7A7A4FFA7A7A5FFA7A7A4FFA5A5A2FFFFFFFFFFAEB0
        ABFF00000010000000000000000000000000000000000000000000000016AEAE
        ABFFFFFFFFFFE7E6E5FF9E9E9FFFBABABAFFB9B9BAFFB9B9B9FFB8B8B9FFDFDD
        DCFF9F9FA0FFB8B8B9FFE8E7E6FFE6E5E4FFE6E5E4FFE6E5E4FFE6E5E4FFE4E3
        E2FFFFFFFFFFA7A7A5FFFFFFFFFFF9F9F8FFF0EFEFFFFFFFFFFFE9E9E9FFAFB0
        ADEA00000005000000000000000000000000000000000000000000000016AEAE
        ABFFFFFFFFFFE5E4E3FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7
        E6FFE8E7E6FFE8E7E6FFE6E5E4FFE5E4E3FFE5E4E3FFE5E4E3FFE5E4E3FFE3E2
        E1FFFFFFFFFFA7A7A5FFF9F9F8FFEDECECFFFFFFFFFFE7E7E7FFADADAAE50000
        000500000000000000000000000000000000000000000000000000000016AEAE
        ABFFFFFFFFFFE2E1E0FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3
        E2FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE3E2E1FFE2E1
        E0FFFFFFFFFFA7A7A4FFF0EFEFFFFFFFFFFFE6E6E6FFACACA9E6000000050000
        000000000000000000000000000000000000000000000000000000000015AEAE
        ACFFFFFFFFFFE0DFDEFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0
        DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE0DF
        DEFFFFFFFFFFA5A5A3FFFFFFFFFFE7E7E7FFA9A9A6C000000004000000000000
        00000000000000000000000000000000000000000000000000000000000DAFAF
        ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9E9E9FFA7A7A5AE0000000300000000000000000000
        000000000000000000000000000000000000000000000000000000000004AFAF
        ADB4B0B0ADFFAEAEACFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
        ABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFADAE
        ABFFAEAEABFFAFAFADFFACACAAB0000000040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEditClick
      ExplicitLeft = 271
      ExplicitTop = -4
    end
    object dbnvgr1: TDBNavigator
      Left = 1
      Top = 1
      Width = 264
      Height = 55
      DataSource = dsUsuarios_Cuenta
      VisibleButtons = [nbInsert, nbPost, nbCancel, nbRefresh]
      Align = alLeft
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insertar nueva cuenta'
        'Eliminar cuenta'
        'Editar cuenta'
        'Publicar los cambios'
        'Cancelar los cambios'
        'Actualizar lista de cuentas'
        'Apply updates'
        'Cancel updates')
      TabOrder = 0
    end
    object chkEsconde: TCheckBox
      Left = 725
      Top = 1
      Width = 195
      Height = 55
      Hint = 'Esconder cuentas para el p'#250'blico'
      Align = alRight
      Caption = 'Esconder cuentas para el p'#250'blico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = chkEscondeClick
    end
  end
  object statUser: TStatusBar
    Left = 0
    Top = 523
    Width = 972
    Height = 19
    DoubleBuffered = False
    Panels = <
      item
        Text = 'Usuario.:'
        Width = 450
      end
      item
        Text = 'Date.:'
        Width = 180
      end
      item
        Text = 'Clock.:'
        Width = 270
      end
      item
        Text = 'Ver.:'
        Width = 60
      end>
    ParentDoubleBuffered = False
  end
  object grdCuentas: TCRDBGrid
    Left = 0
    Top = 102
    Width = 761
    Height = 421
    Align = alClient
    DataSource = dsUsuarios_Cuenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE_CUENTA'
        Title.Caption = 'NOMBRE DE LA CUENTA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE_USUARIO'
        Title.Caption = 'USUARIO DE LA CUENTA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CORREO'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONO'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PASSWORD'
        Title.Caption = 'CONTRASE'#209'A'
        Width = 150
        Visible = True
      end>
  end
  object pnlTop2: TPanel
    Left = 0
    Top = 57
    Width = 972
    Height = 45
    Align = alTop
    TabOrder = 4
    Visible = False
    object lbledtFolder: TLabeledEdit
      Left = 59
      Top = 11
      Width = 244
      Height = 24
      EditLabel.Width = 45
      EditLabel.Height = 16
      EditLabel.Caption = 'Folder.:'
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
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 0
    end
    object btnConfigurarFolder: TButton
      Left = 390
      Top = 6
      Width = 187
      Height = 34
      Caption = 'Configuracion de los folders'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnChooseFolder: TButton
      Left = 309
      Top = 6
      Width = 75
      Height = 34
      Caption = 'Folder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object tmrtimer: TTimer
    OnTimer = tmrtimerTimer
    Left = 56
    Top = 208
  end
  object dsUsuarios_Cuenta: TDataSource
    AutoEdit = False
    DataSet = qUsuarios_Cuenta
    Left = 159
    Top = 129
  end
  object qConfirmaEmail: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM CONFIRMA_EMAIL')
    Left = 881
    Top = 145
    object qConfirmaEmailID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qConfirmaEmailNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Required = True
      Size = 250
    end
    object qConfirmaEmailAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Required = True
      Size = 250
    end
    object qConfirmaEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 250
    end
    object qConfirmaEmailPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 250
    end
    object qConfirmaEmailCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 100
    end
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    Left = 833
    Top = 145
  end
  object qUnquery2xd: TUniQuery
    Connection = DM.DBNLND
    Left = 857
    Top = 193
  end
  object TrayIcon1: TTrayIcon
    PopupMenu = pm1
    OnDblClick = TrayIcon1DblClick
    Left = 640
  end
  object pm1: TPopupMenu
    Left = 600
    object mniShowApplication: TMenuItem
      Caption = 'Recuperar ventana'
      OnClick = mniShowApplicationClick
    end
    object mniShutdown: TMenuItem
      Caption = 'Cerrar aplicaci'#243'n'
      OnClick = mniShutdownClick
    end
  end
  object dsFolder: TDataSource
    DataSet = qFolder
    Left = 584
    Top = 136
  end
  object qUsuarios_Cuenta: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM USERS_ACCOUNT')
    AfterInsert = qUsuarios_CuentaAfterInsert
    AfterEdit = qUsuarios_CuentaAfterEdit
    BeforePost = qUsuarios_CuentaBeforePost
    AfterPost = qUsuarios_CuentaAfterPost
    AfterCancel = qUsuarios_CuentaAfterCancel
    Left = 56
    Top = 128
    object qUsuarios_CuentaID_CUENTA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CUENTA'
      ReadOnly = True
      Required = True
    end
    object qUsuarios_CuentaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qUsuarios_CuentaID_FOLDER: TIntegerField
      FieldName = 'ID_FOLDER'
    end
    object qUsuarios_CuentaNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 250
    end
    object qUsuarios_CuentaNOMBRE_USUARIO: TStringField
      FieldName = 'NOMBRE_USUARIO'
      Size = 250
    end
    object qUsuarios_CuentaTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 250
    end
    object qUsuarios_CuentaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 250
    end
    object qUsuarios_CuentaPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 250
    end
  end
  object qFolder: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM USERS_FOLDERS_ACCOUNT WHERE ID_USUARIO = 7')
    Left = 512
    Top = 136
    object qFolderNOMBRE_FOLDER: TStringField
      FieldName = 'NOMBRE_FOLDER'
      Required = True
      Size = 250
    end
    object qFolderID_FOLDER: TIntegerField
      FieldName = 'ID_FOLDER'
      ReadOnly = True
      Required = True
    end
    object qFolderID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
  end
end

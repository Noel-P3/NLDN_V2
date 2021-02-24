object Envio_Correo: TEnvio_Correo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NLND-Recupera Contrase'#241'a'
  ClientHeight = 344
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 8
    Top = 8
    Width = 473
    Height = 23
    Caption = 'He olvidado el nombre o contrase'#241'a de mi cuenta NLND'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel2: TsLabel
    Left = 8
    Top = 43
    Width = 313
    Height = 19
    Caption = 'Introduce tu direcci'#243'n de correo electr'#243'nico '
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object edtUserEmail: TEdit
    Left = 8
    Top = 79
    Width = 241
    Height = 27
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'E-MAIL'
    OnChange = edtUserEmailChange
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 185
    Width = 161
    Height = 27
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'CODIGO'
    Visible = False
    OnChange = edtCodigoChange
  end
  object btnCodigo: TButton
    Left = 8
    Top = 112
    Width = 161
    Height = 40
    Caption = 'ENVIAR CORREO'
    Enabled = False
    TabOrder = 1
    OnClick = btnCodigoClick
  end
  object btnAbreCnfigPass: TButton
    Left = 8
    Top = 218
    Width = 161
    Height = 44
    Caption = 'ENVIAR CODIGO'
    TabOrder = 3
    TabStop = False
    Visible = False
    OnClick = btnAbreCnfigPassClick
  end
  object mmoInstrucciones: TMemo
    Left = 255
    Top = 68
    Width = 229
    Height = 268
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Instrucciones'
      ''
      '1- Inserta el correo con el cual te '
      'logueas donde dice "E-MAIL"'
      ''
      '2- Una vez insertado el correo, se '
      'te enviara un correo con un codigo '
      'en ella'
      ''
      '3- Ese codigo tendras que insertar '
      'en el apartado de codigo y luego '
      'presionar enviar codigo'
      ''
      'Nota.: Si no ves el apartado es'
      'porque se habilitara luego de '
      'enviar el correo'
      ''
      '4- Si todo va bien podras reiniciar '
      'la contrase'#241'a')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object btnSalirfrm: TButton
    Left = 8
    Top = 296
    Width = 161
    Height = 40
    Caption = 'SALIR'
    TabOrder = 5
    OnClick = btnSalirfrmClick
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 320
    Top = 40
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 384
    Top = 32
  end
  object IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 432
    Top = 32
  end
  object qUnquery: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM USERS')
    Left = 200
    Top = 128
    object qUnqueryID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ReadOnly = True
      Required = True
    end
    object qUnqueryNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Required = True
      Size = 250
    end
    object qUnqueryAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Required = True
      Size = 250
    end
    object qUnqueryCORREO: TStringField
      FieldName = 'CORREO'
      Required = True
      Size = 250
    end
    object qUnqueryUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 250
    end
    object qUnqueryPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 250
    end
    object qUnqueryUSUARIO_CONFIRMADO: TIntegerField
      FieldName = 'USUARIO_CONFIRMADO'
    end
  end
  object qEMAIL_REQUEST: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM EMAIL_REQUEST')
    Left = 200
    Top = 192
    object qEMAIL_REQUESTID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qEMAIL_REQUESTNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Required = True
      Size = 250
    end
    object qEMAIL_REQUESTAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Required = True
      Size = 250
    end
    object qEMAIL_REQUESTCORREO: TStringField
      FieldName = 'CORREO'
      Required = True
      Size = 250
    end
    object qEMAIL_REQUESTUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 250
    end
    object qEMAIL_REQUESTPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 250
    end
    object qEMAIL_REQUESTTIPO_REQUEST: TStringField
      FieldName = 'TIPO_REQUEST'
      Required = True
    end
    object qEMAIL_REQUESTCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 250
    end
  end
  object qUnquery2xd: TUniQuery
    Connection = DM.DBNLND
    SQL.Strings = (
      'SELECT * FROM EMAIL_REQUEST')
    Left = 200
    Top = 248
    object qUnquery2xdID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qUnquery2xdNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Required = True
      Size = 250
    end
    object qUnquery2xdAPELLIDOS: TStringField
      FieldName = 'APELLIDOS'
      Required = True
      Size = 250
    end
    object qUnquery2xdCORREO: TStringField
      FieldName = 'CORREO'
      Required = True
      Size = 250
    end
    object qUnquery2xdUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 250
    end
    object qUnquery2xdPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 250
    end
    object qUnquery2xdTIPO_REQUEST: TStringField
      FieldName = 'TIPO_REQUEST'
      Required = True
    end
    object qUnquery2xdCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 250
    end
  end
end

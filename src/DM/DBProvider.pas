
{*******************************************************************************************************************************************}
{                                                                                                                                           }
{                                                             XML Data Binding                                                              }
{                                                                                                                                           }
{         Generated on: 26-02-2020 3:11:39 PM                                                                                               }
{       Generated from: C:\Users\Home\Desktop\Nada que ver\Cosas Importantes de noel\Proyectos Personales\NLDN\Win32\Debug\DBProvider.xml   }
{   Settings stored in: C:\Users\Home\Desktop\Nada que ver\Cosas Importantes de noel\Proyectos Personales\NLDN\Win32\Debug\DBProvider.xdb   }
{                                                                                                                                           }
{*******************************************************************************************************************************************}

unit DBProvider;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLBodyType = interface;

{ IXMLBodyType }

  IXMLBodyType = interface(IXMLNode)
    ['{17366357-4645-4542-8738-8BB4358E9E02}']
    { Property Accessors }
    function Get_DBPro: UnicodeString;
    function Get_DB: UnicodeString;
    procedure Set_DBPro(Value: UnicodeString);
    procedure Set_DB(Value: UnicodeString);
    { Methods & Properties }
    property DBPro: UnicodeString read Get_DBPro write Set_DBPro;
    property DB: UnicodeString read Get_DB write Set_DB;
  end;

{ Forward Decls }

  TXMLBodyType = class;

{ TXMLBodyType }

  TXMLBodyType = class(TXMLNode, IXMLBodyType)
  protected
    { IXMLBodyType }
    function Get_DBPro: UnicodeString;
    function Get_DB: UnicodeString;
    procedure Set_DBPro(Value: UnicodeString);
    procedure Set_DB(Value: UnicodeString);
  end;

{ Global Functions }

function Getbody(Doc: IXMLDocument): IXMLBodyType;
function Loadbody(const FileName: string): IXMLBodyType;
function Newbody: IXMLBodyType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getbody(Doc: IXMLDocument): IXMLBodyType;
begin
  Result := Doc.GetDocBinding('body', TXMLBodyType, TargetNamespace) as IXMLBodyType;
end;

function Loadbody(const FileName: string): IXMLBodyType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('body', TXMLBodyType, TargetNamespace) as IXMLBodyType;
end;

function Newbody: IXMLBodyType;
begin
  Result := NewXMLDocument.GetDocBinding('body', TXMLBodyType, TargetNamespace) as IXMLBodyType;
end;

{ TXMLBodyType }

function TXMLBodyType.Get_DBPro: UnicodeString;
begin
  Result := ChildNodes['DBPro'].Text;
end;

procedure TXMLBodyType.Set_DBPro(Value: UnicodeString);
begin
  ChildNodes['DBPro'].NodeValue := Value;
end;

function TXMLBodyType.Get_DB: UnicodeString;
begin
  Result := ChildNodes['DB'].Text;
end;

procedure TXMLBodyType.Set_DB(Value: UnicodeString);
begin
  ChildNodes['DB'].NodeValue := Value;
end;

end.
unit JSEcd.Model.RegistroJ215;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ215 = class(TJSEcdModelRegistro)
  private
    FcodHistFat: string;
    FdescFat: string;
    FindDcFat: string;
    FvlFatCont: Currency;
  public
    property codHistFat: string read FcodHistFat write FcodHistFat;
    property descFat: string read FdescFat write FdescFat;
    property vlFatCont: Currency read FvlFatCont write FvlFatCont;
    property indDcFat: string read FindDcFat write FindDcFat;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ215 }

constructor TJSEcdModelRegistroJ215.Create;
begin
  inherited;
  reg := 'J215';
end;

end.

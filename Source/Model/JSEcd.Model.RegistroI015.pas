unit JSEcd.Model.RegistroI015;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI015 = class(TJSEcdModelRegistro)
  private
    FcodCtaRes: string;
  public
    property codCtaRes: string read FcodCtaRes write FcodCtaRes;
    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI015 }

constructor TJSEcdModelRegistroI015.Create;
begin
  inherited;
  reg := 'I015';
end;

end.

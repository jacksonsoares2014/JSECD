unit JSEcd.Model.Registro0035;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistro0035 = class(TJSEcdModelRegistro)
  private
    FcodScp: string;
    FnomeScp: string;
  public
    property codScp: string read FcodScp write FcodScp;
    property nomeScp: string read FnomeScp write FnomeScp;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0035 }

constructor TJSEcdModelRegistro0035.Create;
begin
  inherited;
  reg := '0035';
end;

end.

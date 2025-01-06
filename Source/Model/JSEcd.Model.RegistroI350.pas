unit JSEcd.Model.RegistroI350;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI350 = class(TJSEcdModelRegistro)
  private
    FdtRes: string;
  public
    property dtRes: string read FdtRes write FdtRes;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI350 }

constructor TJSEcdModelRegistroI350.Create;
begin
  inherited;
  reg := 'I350';
end;

end.

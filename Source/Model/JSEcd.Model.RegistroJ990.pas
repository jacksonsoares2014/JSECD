unit JSEcd.Model.RegistroJ990;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ990 = class(TJSEcdModelRegistro)
  private
    FqtdLinJ: Integer;
  public
    property qtdLinJ: Integer read FqtdLinJ write FqtdLinJ;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ990 }

constructor TJSEcdModelRegistroJ990.Create;
begin
  inherited;
  reg := 'J990';
  qtdlinJ := 0;
end;

end.

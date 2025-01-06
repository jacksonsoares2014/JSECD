unit JSEcd.Model.RegistroI555;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI555 = class(TJSEcdModelRegistro)
  private
    FrzContTot: string;
  public
    property rzContTot: string read FrzContTot write FrzContTot;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI555 }

constructor TJSEcdModelRegistroI555.Create;
begin
  inherited;
  reg := 'I555';
end;

end.

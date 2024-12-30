unit JSEcd.Model.RegistroI550;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI550 = class(TJSEcdModelRegistro)
  private
    FrzCont: string;
  public
    property rzCont: string read FrzCont write FrzCont;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI550 }

constructor TJSEcdModelRegistroI550.create;
begin
  inherited;
  reg := 'I550';
end;

end.

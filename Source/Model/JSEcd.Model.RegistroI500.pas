unit JSEcd.Model.RegistroI500;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI500 = class(TJSEcdModelRegistro)
  private
    FtamFonte: Integer;
  public
    property tamFonte: Integer read FtamFonte write FtamFonte;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI500 }

constructor TJSEcdModelRegistroI500.create;
begin
  inherited;
  reg := 'I500';
end;

end.

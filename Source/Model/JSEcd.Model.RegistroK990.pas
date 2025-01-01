unit JSEcd.Model.RegistroK990;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroK990 = class(TJSEcdModelRegistro)
  private
    FqtdLinK: Integer;
  public
    property qtdLinK: Integer read FqtdLinK write FqtdLinK;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroK990 }

constructor TJSEcdModelRegistroK990.create;
begin
  inherited;
  reg := 'K990';
  qtdlinK := 0;
end;

end.

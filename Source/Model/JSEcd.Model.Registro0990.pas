unit JSEcd.Model.Registro0990;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistro0990 = class(TJSEcdModelRegistro)
  private
    FqtdLin0: Integer;
  public
    property qtdLin0: Integer read FqtdLin0 write FqtdLin0;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistro0990 }

constructor TJSEcdModelRegistro0990.create;
begin
  inherited;
  reg := '0990';
  qtdlin0 := 0;
end;

end.

unit JSEcd.Model.RegistroI990;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI990 = class(TJSEcdModelRegistro)
  private
    FqtdLinI: Integer;
  public
    property qtdLinI: Integer read FqtdLinI write FqtdLinI;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI990 }

constructor TJSEcdModelRegistroI990.create;
begin
  inherited;
  reg := 'I990';
  qtdlinI := 0;
end;

end.

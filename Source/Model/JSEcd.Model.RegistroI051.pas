unit JSEcd.Model.RegistroI051;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI051 = class(TJSEcdModelRegistro)
  private
    FcodCcus: string;
    FcodCtaRef: string;
  public
    property codCcus: string read FcodCcus write FcodCcus;
    property codCtaRef: string read FcodCtaRef write FcodCtaRef;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI051 }

constructor TJSEcdModelRegistroI051.Create;
begin
  inherited;
  reg := 'I051';
end;

end.

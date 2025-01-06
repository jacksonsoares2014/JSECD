unit JSEcd.Model.RegistroI355;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI355 = class(TJSEcdModelRegistro)
  private
    FvlCtaMf: Currency;
    FindDc: string;
    FcodCta: string;
    FvlCta: Currency;
    FindDcMf: string;
    FcodCcus: string;
  public
    property codCta: string read FcodCta write FcodCta;
    property codCcus: string read FcodCcus write FcodCcus;
    property vlCta: Currency read FvlCta write FvlCta;
    property indDc: string read FindDc write FindDc;
    property vlCtaMf: Currency read FvlCtaMf write FvlCtaMf;
    property indDcMf: string read FindDcMf write FindDcMf;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI355 }

constructor TJSEcdModelRegistroI355.Create;
begin
  inherited;
  reg := 'I355';
end;

end.

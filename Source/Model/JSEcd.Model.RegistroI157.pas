unit JSEcd.Model.RegistroI157;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI157 = class(TJSEcdModelRegistro)
  private
    FvlSldIniMf: Currency;
    FcodCta: string;
    FindDcIni: string;
    FvlSldIni: Currency;
    FindDcIniMf: string;
    FcodCcus: string;
  public
    property codCta: string read FcodCta write FcodCta;
    property codCcus: string read FcodCcus write FcodCcus;
    property vlSldIni: Currency read FvlSldIni write FvlSldIni;
    property indDcIni: string read FindDcIni write FindDcIni;
    property vlSldIniMf: Currency read FvlSldIniMf write FvlSldIniMf;
    property indDcIniMf: string read FindDcIniMf write FindDcIniMf;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI157 }

constructor TJSEcdModelRegistroI157.create;
begin
  inherited;
  reg := 'I157';
end;

end.

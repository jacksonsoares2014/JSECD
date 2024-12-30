unit JSEcd.Model.RegistroI155;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI155 = class(TJSEcdModelRegistro)
  private
    FcodCta: string;
    FcodCcus: string;
    FvlSldIni: Currency;
    FindDcIni: string;
    FvlDeb: Currency;
    FvlCred: Currency;
    FvlSldFin: Currency;
    FindDcFin: string;
    FvlSldIniMf: Currency;
    FindDcFinMf: string;
    FvlSldFinMf: Currency;
    FvlCredMf: Currency;
    FvlDebMf: Currency;
    FindDcIniMf: string;
  public
    property codCta: string read FcodCta write FcodCta;
    property codCcus: string read FcodCcus write FcodCcus;
    property vlSldIni: Currency read FvlSldIni write FvlSldIni;
    property indDcIni: string read FindDcIni write FindDcIni;
    property vlDeb: Currency read FvlDeb write FvlDeb;
    property vlCred: Currency read FvlCred write FvlCred;
    property vlSldFin: Currency read FvlSldFin write FvlSldFin;
    property indDcFin: string read FindDcFin write FindDcFin;
    property vlSldIniMf: Currency read FvlSldIniMf write FvlSldIniMf;
    property indDcIniMf: string read FindDcIniMf write FindDcIniMf;
    property vlDebMf: Currency read FvlDebMf write FvlDebMf;
    property vlCredMf: Currency read FvlCredMf write FvlCredMf;
    property vlSldFinMf: Currency read FvlSldFinMf write FvlSldFinMf;
    property indDcFinMf: string read FindDcFinMf write FindDcFinMf;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI155 }

constructor TJSEcdModelRegistroI155.create;
begin
  inherited;
  reg := 'I155';
end;

end.

unit JSEcd.Model.RegistroJ210;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ210 = class(TJSEcdModelRegistro)
  private
    FindTip: string;
    FcodAgl: string;
    FdescrCodAgl: string;
    FvlCtaIni: Currency;
    FindDcCtaIni: string;
    FindDcCtaFin: string;
    FnotasExpRef: string;
    FvlCtaFin: Currency;
  public
    property indTip: string read FindTip write FindTip;
    property codAgl: string read FcodAgl write FcodAgl;
    property descrCodAgl: string read FdescrCodAgl write FdescrCodAgl;
    property vlCtaIni: Currency read FvlCtaIni write FvlCtaIni;
    property indDcCtaIni: string read FindDcCtaIni write FindDcCtaIni;
    property vlCtaFin: Currency read FvlCtaFin write FvlCtaFin;
    property indDcCtaFin: string read FindDcCtaFin write FindDcCtaFin;
    property notasExpRef: string read FnotasExpRef write FnotasExpRef;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroJ210 }

constructor TJSEcdModelRegistroJ210.create;
begin
  inherited;
  reg := 'J210';
end;

end.

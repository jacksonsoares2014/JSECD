unit JSEcd.Model.RegistroJ100;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ100 = class(TJSEcdModelRegistro)
  private
    FcodAgl: string;
    FindCodAgl: string;
    FnivelAgl: Integer;
    FcodAglSup: string;
    FindGrpBal: string;
    FdescrCodAgl: string;
    FvlCtaIni: Currency;
    FindDcCtaIni: string;
    FvlCtaFin: Currency;
    FindDcCtaFin: string;
    FnotaExpRef: string;
  public
    property codAgl: string read FcodAgl write FcodAgl;
    property indCodAgl: string read FindCodAgl write FindCodAgl;
    property nivelAgl: Integer read FnivelAgl write FnivelAgl;
    property codAglSup: string read FcodAglSup write FcodAglSup;
    property indGrpBal: string read FindGrpBal write FindGrpBal;
    property descrCodAgl: string read FdescrCodAgl write FdescrCodAgl;
    property vlCtaIni: Currency read FvlCtaIni write FvlCtaIni;
    property indDcCtaIni: string read FindDcCtaIni write FindDcCtaIni;
    property vlCtaFin: Currency read FvlCtaFin write FvlCtaFin;
    property indDcCtaFin: string read FindDcCtaFin write FindDcCtaFin;
    property notaExpRef: string read FnotaExpRef write FnotaExpRef;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ100 }

constructor TJSEcdModelRegistroJ100.Create;
begin
  inherited;
  reg := 'J100';
end;

end.

unit JSEcd.Model.RegistroJ150;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ150 = class(TJSEcdModelRegistro)
  private
    FindGrpDre: string;
    FcodAglSup: string;
    FindDcCtaFin: string;
    FdescrCodAgl: string;
    FindCodAgl: string;
    FnivelAgl: Integer;
    FcodAgl: string;
    FnotaExpRef: string;
    FvlCtaIni: Currency;
    FindDcCtaIni: string;
    FnuOrdem: Integer;
    FvlCtaFin: Currency;
  public
    property nuOrdem: Integer read FnuOrdem write FnuOrdem;
    property codAgl: string read FcodAgl write FcodAgl;
    property indCodAgl: string read FindCodAgl write FindCodAgl;
    property nivelAgl: Integer read FnivelAgl write FnivelAgl;
    property codAglSup: string read FcodAglSup write FcodAglSup;
    property descrCodAgl: string read FdescrCodAgl write FdescrCodAgl;
    property vlCtaIni: Currency read FvlCtaIni write FvlCtaIni;
    property indDcCtaIni: string read FindDcCtaIni write FindDcCtaIni;
    property vlCtaFin: Currency read FvlCtaFin write FvlCtaFin;
    property indDcCtaFin: string read FindDcCtaFin write FindDcCtaFin;
    property indGrpDre: string read FindGrpDre write FindGrpDre;
    property notaExpRef: string read FnotaExpRef write FnotaExpRef;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroJ150 }

constructor TJSEcdModelRegistroJ150.create;
begin
  inherited;
  reg := 'J150';
end;

end.

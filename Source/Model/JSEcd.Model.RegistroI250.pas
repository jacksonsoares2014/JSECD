unit JSEcd.Model.RegistroI250;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI250 = class(TJSEcdModelRegistro)
  private
    FcodHistPad: string;
    FnumArq: string;
    FvlDcMf: Currency;
    FindDc: string;
    FcodCta: string;
    FcodPart: string;
    FvlDc: Currency;
    FindDcMf: string;
    FHist: string;
    FcodCcus: string;
  public
    property codCta: string read FcodCta write FcodCta;
    property codCcus: string read FcodCcus write FcodCcus;
    property vlDc: Currency read FvlDc write FvlDc;
    property indDc: string read FindDc write FindDc;
    property numArq: string read FnumArq write FnumArq;
    property codHistPad: string read FcodHistPad write FcodHistPad;
    property Hist: string read FHist write FHist;
    property codPart: string read FcodPart write FcodPart;
    property vlDcMf: Currency read FvlDcMf write FvlDcMf;
    property indDcMf: string read FindDcMf write FindDcMf;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI250 }

constructor TJSEcdModelRegistroI250.Create;
begin
  inherited;
  reg := 'I250';
end;

end.

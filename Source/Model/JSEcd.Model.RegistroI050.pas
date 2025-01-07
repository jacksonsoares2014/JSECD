unit JSEcd.Model.RegistroI050;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroI050 = class(TJSEcdModelRegistro)
  private
    FdtAlt: TDateTime;
    FcodNat: TJSEcdCodNat;
    FindCta: TJSEcdIndCta;
    Fnivel: Integer;
    FcodCta: string;
    FcodCtaSup: string;
    Fcta: string;
  public
    property dtAlt: TDateTime read FdtAlt write FdtAlt;
    property codNat: TJSEcdCodNat read FcodNat write FcodNat;
    property indCta: TJSEcdIndCta read FindCta write FindCta;
    property nivel: Integer read Fnivel write Fnivel;
    property codCta: string read FcodCta write FcodCta;
    property codCtaSup: string read FcodCtaSup write FcodCtaSup;
    property cta: string read Fcta write Fcta;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI050 }

constructor TJSEcdModelRegistroI050.Create;
begin
  inherited;
  reg := 'I050';
end;

end.

unit JSEcd.Model.RegistroI050;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI050 = class(TJSEcdModelRegistro)
  private
    FdtAlt: TDateTime;
    FcodNat: string;
    FindCta: string;
    Fnivel: Integer;
    FcodCta: string;
    FcodCtaSup: string;
    Fcta: string;
  public
    property dtAlt: TDateTime read FdtAlt write FdtAlt;
    property codNat: string read FcodNat write FcodNat;
    property indCta: string read FindCta write FindCta;
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

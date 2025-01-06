unit JSEcd.Model.RegistroK200;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroK200 = class(TJSEcdModelRegistro)
  private
    FindCta: string;
    FcodNat: string;
    FcodCta: string;
    Fcta: string;
    Fnivel: Integer;
    FcodCtaSup: string;
  public
    property codNat: string read FcodNat write FcodNat;
    property indCta: string read FindCta write FindCta;
    property nivel: Integer read Fnivel write Fnivel;
    property codCta: string read FcodCta write FcodCta;
    property codCtaSup: string read FcodCtaSup write FcodCtaSup;
    property cta: string read Fcta write Fcta;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroK200 }

constructor TJSEcdModelRegistroK200.Create;
begin
  inherited;
  reg := 'K200';
end;

end.

unit JSEcd.Model.Registro0007;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistro0007 = class(TJSEcdModelRegistro)
  private
    FcodInscr: string;
    FcodEntRef: TJSEcdCodEntRef;

  public
    property codEntRef: TJSEcdCodEntRef read FcodEntRef write FcodEntRef;
    property codInscr: string read FcodInscr write FcodInscr;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0007 }

constructor TJSEcdModelRegistro0007.Create;
begin
  inherited;
  reg := '0007';
end;

end.

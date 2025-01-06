unit JSEcd.Model.RegistroI010;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroI010 = class(TJSEcdModelRegistro)
  private
    FindEsc: TJSEcdIndEsc;
    FcodVerLc: string;
  public
    property indEsc: TJSEcdIndEsc read FindEsc write FindEsc;
    property codVerLc: string read FcodVerLc write FcodVerLc;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI010 }

constructor TJSEcdModelRegistroI010.Create;
begin
  inherited;
  reg := 'I010';
end;

end.

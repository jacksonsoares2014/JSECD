unit JSEcd.Model.Registro0001;

interface

uses
  JSEcd.Model.Registro,
  JSECD.Model.Types;

type
  TJSEcdModelRegistro0001 = class(TJSEcdModelRegistro)
  private
    FindDad: TJSEcdIndicadorMovimento;
  public
    property indDad: TJSEcdIndicadorMovimento read FindDad write FindDad;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0001 }

constructor TJSEcdModelRegistro0001.Create;
begin
  inherited;
  reg := '0001';
  indDad := imSemDadosInformados;
end;

end.

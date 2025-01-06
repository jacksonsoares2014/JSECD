unit JSEcd.Model.RegistroI001;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroI001 = class(TJSEcdModelRegistro)
  private
    FindDad: TJSEcdIndicadorMovimento;
  public
    property indDad: TJSEcdIndicadorMovimento read FindDad write FindDad;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI001 }

constructor TJSEcdModelRegistroI001.Create;
begin
  inherited;
  reg := 'I001';
  indDad := imSemDadosInformados;
end;

end.

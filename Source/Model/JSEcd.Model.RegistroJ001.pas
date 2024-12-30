unit JSEcd.Model.RegistroJ001;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroJ001 = class(TJSEcdModelRegistro)
  private
    FindDad: TJSEcdIndicadorMovimento;
  public
    property indDad: TJSEcdIndicadorMovimento read FindDad write FindDad;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroJ001 }

constructor TJSEcdModelRegistroJ001.create;
begin
  inherited;
  reg := 'J001';
  indDad := imSemDadosInformados;
end;

end.

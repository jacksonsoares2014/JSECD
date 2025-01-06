unit JSEcd.Model.RegistroK001;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroK001 = class(TJSEcdModelRegistro)
  private
    FindDad: TJSEcdIndicadorMovimento;
  public
    property indDad: TJSEcdIndicadorMovimento read FindDad write FindDad;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroK001 }

constructor TJSEcdModelRegistroK001.Create;
begin
  inherited;
  reg := 'K001';
  indDad := imSemDadosInformados;
end;

end.

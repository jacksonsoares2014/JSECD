unit JSEcd.Model.RegistroI012;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroI012 = class(TJSEcdModelRegistro)
  private
    FnatLivr: string;
    FnumOrd: Integer;
    FcodHashAux: string;
    Ftipo: TJSEcdTipoLivroAssoc;
  public
    property numOrd: Integer read FnumOrd write FnumOrd;
    property natLivr: string read FnatLivr write FnatLivr;
    property tipo: TJSEcdTipoLivroAssoc read Ftipo write Ftipo;
    property codHashAux: string read FcodHashAux write FcodHashAux;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI012 }

constructor TJSEcdModelRegistroI012.create;
begin
  inherited;
  reg := 'I012';
end;

end.

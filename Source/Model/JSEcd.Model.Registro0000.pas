unit JSEcd.Model.Registro0000;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistro0000 = class(TJSEcdModelRegistro)
  private
    F_id: string;
    Freg: string;

  public
    property reg: string read Freg write Freg;
    property _id: string read F_id write F_id;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistro0000 }

constructor TJSEcdModelRegistro0000.create;
begin
  inherited;
  reg := '0000';
end;

end.

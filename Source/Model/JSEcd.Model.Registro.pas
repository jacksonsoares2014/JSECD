unit JSEcd.Model.Registro;

interface

type
  TJSEcdModelRegistro = class
  private
    Freg: string;
    F_id: string;
  public
    property reg: String read Freg write Freg;
    property _id: String read F_id write F_id;

    constructor Create; virtual;
    destructor Destroy; override;
  end;

implementation

{ TJSEcdModelRegistro }

constructor TJSEcdModelRegistro.Create;
begin

end;

destructor TJSEcdModelRegistro.Destroy;
begin

  inherited;
end;

end.

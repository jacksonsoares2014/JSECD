unit JSEcd.Model.RegistroI150;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI150 = class(TJSEcdModelRegistro)
  private
    FdtIni: TDateTime;
    FdtFin: TDateTime;
  public
    property dtIni: TDateTime read FdtIni write FdtIni;
    property dtFin: TDateTime read FdtFin write FdtFin;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI150 }

constructor TJSEcdModelRegistroI150.create;
begin
  inherited;
  reg := 'I150';
end;

end.

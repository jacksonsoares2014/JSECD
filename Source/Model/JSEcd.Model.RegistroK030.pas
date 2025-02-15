unit JSEcd.Model.RegistroK030;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroK030 = class(TJSEcdModelRegistro)
  private
    FdtIni: TDateTime;
    FdtFin: TDateTime;
  public
    property dtIni: TDateTime read FdtIni write FdtIni;
    property dtFin: TDateTime read FdtFin write FdtFin;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroK030 }

constructor TJSEcdModelRegistroK030.Create;
begin
  inherited;
  reg := 'K030';
end;

end.

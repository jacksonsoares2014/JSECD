unit JSEcd.Model.RegistroJ005;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ005 = class(TJSEcdModelRegistro)
  private
    FidDem: Integer;
    FdtIni: TDateTime;
    FdtFin: TDateTime;
    FcadDem: string;
  public
    property dtIni: TDateTime read FdtIni write FdtIni;
    property dtFin: TDateTime read FdtFin write FdtFin;
    property idDem: Integer read FidDem write FidDem;
    property cadDem: string read FcadDem write FcadDem;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroJ005 }

constructor TJSEcdModelRegistroJ005.create;
begin
  inherited;
  reg := 'J005';
end;

end.

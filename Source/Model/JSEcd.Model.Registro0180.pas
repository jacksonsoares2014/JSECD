unit JSEcd.Model.Registro0180;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistro0180 = class(TJSEcdModelRegistro)
  private
    FcodRel: TJSEcdsCodRel;
    FdtFinRel: TDateTime;
    FdtIniRel: TDateTime;
  public
    property codRel: TJSEcdsCodRel read FcodRel write FcodRel;
    property dtIniRel: TDateTime read FdtIniRel write FdtIniRel;
    property dtFinRel: TDateTime read FdtFinRel write FdtFinRel;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0180 }

constructor TJSEcdModelRegistro0180.Create;
begin
  inherited;
  reg := '0180';
end;

end.

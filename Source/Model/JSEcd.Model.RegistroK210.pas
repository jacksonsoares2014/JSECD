unit JSEcd.Model.RegistroK210;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroK210 = class(TJSEcdModelRegistro)
  private
    FcodEmp: string;
    FcodCtaEmp: string;
  public
    property codEmp: string read FcodEmp write FcodEmp;
    property codCtaEmp: string read FcodCtaEmp write FcodCtaEmp;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroK210 }

constructor TJSEcdModelRegistroK210.create;
begin
  inherited;
  reg := 'K210';
end;

end.

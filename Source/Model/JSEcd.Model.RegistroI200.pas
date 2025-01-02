unit JSEcd.Model.RegistroI200;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroI200 = class(TJSEcdModelRegistro)
  private
    FindLcto: TJSEcdIndLcto;
    FvlLcto: Currency;
    FdtLctoExt: TDateTime;
    FnumLcto: string;
    FdtLcto: TDateTime;
    FvlLctoMf: Currency;
  public
    property numLcto: string read FnumLcto write FnumLcto;
    property dtLcto: TDateTime read FdtLcto write FdtLcto;
    property vlLcto: Currency read FvlLcto write FvlLcto;
    property indLcto: TJSEcdIndLcto read FindLcto write FindLcto;
    property dtLctoExt: TDateTime read FdtLctoExt write FdtLctoExt;
    property vlLctoMf: Currency read FvlLctoMf write FvlLctoMf;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI200 }

constructor TJSEcdModelRegistroI200.create;
begin
  inherited;
  reg := 'I200';
end;

end.

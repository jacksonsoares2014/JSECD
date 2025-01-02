unit JSEcd.Export.Registro0900;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0900 = '|0900|';

type
  TJSEcdExportRegistro0900 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0900: TJSEcdModelRegistro0900;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0900 }

function TJSEcdExportRegistro0900.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0900>(AModel, FReg0900);

  result := Format(c0900,
                   [FReg0900.);
end;

end.

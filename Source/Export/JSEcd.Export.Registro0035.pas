unit JSEcd.Export.Registro0035;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0035 = '|0035|';

type
  TJSEcdExportRegistro0035 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0035: TJSEcdModelRegistro0035;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0035 }

function TJSEcdExportRegistro0035.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0035>(AModel, FReg0035);

  result := Format(c0035,
                   [FReg0035.);
end;

end.

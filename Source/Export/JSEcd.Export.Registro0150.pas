unit JSEcd.Export.Registro0150;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0150 = '|0150|';

type
  TJSEcdExportRegistro0150 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0150: TJSEcdModelRegistro0150;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0150 }

function TJSEcdExportRegistro0150.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0150>(AModel, FReg0150);

  result := Format(c0150,
                   [FReg0150.);
end;

end.

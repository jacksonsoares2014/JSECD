unit JSEcd.Export.Registro0000;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0000 = '|0000|';

type
  TJSEcdExportRegistro0000 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0000: TJSEcdModelRegistro0000;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0000 }

function TJSEcdExportRegistro0000.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0000>(AModel, FReg0000);

  result := Format(c0000,
                   [FReg0000.);
end;

end.

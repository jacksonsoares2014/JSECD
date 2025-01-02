unit JSEcd.Export.Registro0001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0001 = '|0001|';

type
  TJSEcdExportRegistro0001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0001: TJSEcdModelRegistro0001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0001 }

function TJSEcdExportRegistro0001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0001>(AModel, FReg0001);

  result := Format(c0001,
                   [FReg0001.);
end;

end.

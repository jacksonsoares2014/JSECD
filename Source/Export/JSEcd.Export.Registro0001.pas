unit JSEcd.Export.Registro0001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

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

  result := Format('|0001|%s|', [FReg0001.indDad.ToString]);
end;

end.

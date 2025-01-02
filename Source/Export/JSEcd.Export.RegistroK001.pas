unit JSEcd.Export.RegistroK001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

type
  TJSEcdExportRegistroK001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK001: TJSEcdModelRegistroK001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK001 }

function TJSEcdExportRegistroK001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK001>(AModel, FRegK001);

  result := Format('|K001|%s|', [FRegK001.indDad.ToString]);
end;

end.

unit JSEcd.Export.RegistroI001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

type
  TJSEcdExportRegistroI001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI001: TJSEcdModelRegistroI001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI001 }

function TJSEcdExportRegistroI001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI001>(AModel, FRegI001);

  result := Format('|I001|%s|', [FRegI001.indDad.ToString]);
end;

end.

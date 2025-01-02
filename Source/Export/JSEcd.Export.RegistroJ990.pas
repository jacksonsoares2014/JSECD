unit JSEcd.Export.RegistroJ990;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistroJ990 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ990: TJSEcdModelRegistroJ990;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ990 }

function TJSEcdExportRegistroJ990.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ990>(AModel, FRegJ990);

  result := Format('|J990|%d|', [FRegJ990.qtdLinJ]);
end;

end.

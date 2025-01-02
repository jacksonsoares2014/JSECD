unit JSEcd.Export.RegistroI555;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistroI555 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI555: TJSEcdModelRegistroI555;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI555 }

function TJSEcdExportRegistroI555.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI555>(AModel, FRegI555);

  result := Format('|I555|%s|', [FRegI555.rzContTot]);
end;

end.

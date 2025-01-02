unit JSEcd.Export.RegistroI350;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

type
  TJSEcdExportRegistroI350 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI350: TJSEcdModelRegistroI350;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI350 }

function TJSEcdExportRegistroI350.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI350>(AModel, FRegI350);

  result := Format('|I350|%s|', [JSEF.FormatData(FRegI350.dtRes)]);
end;

end.

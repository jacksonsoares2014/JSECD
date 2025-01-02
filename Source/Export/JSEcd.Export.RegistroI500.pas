unit JSEcd.Export.RegistroI500;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistroI500 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI500: TJSEcdModelRegistroI500;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI500 }

function TJSEcdExportRegistroI500.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI500>(AModel, FRegI500);

  result := Format('|I500|%d|', [FRegI500.tamFonte]);
end;

end.

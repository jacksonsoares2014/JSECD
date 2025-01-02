unit JSEcd.Export.RegistroK990;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistroK990 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK990: TJSEcdModelRegistroK990;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK990 }

function TJSEcdExportRegistroK990.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK990>(AModel, FRegK990);

  result := Format('|K990|%d|', [FRegK990.qtdLinK]);
end;

end.

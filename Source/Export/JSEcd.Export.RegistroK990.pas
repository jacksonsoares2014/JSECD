unit JSEcd.Export.RegistroK990;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK990 = '|K990|';

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

  result := Format(cK990,
                   [FRegK990.);
end;

end.

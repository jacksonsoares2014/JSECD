unit JSEcd.Export.RegistroK100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK100 = '|K100|';

type
  TJSEcdExportRegistroK100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK100: TJSEcdModelRegistroK100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK100 }

function TJSEcdExportRegistroK100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK100>(AModel, FRegK100);

  result := Format(cK100,
                   [FRegK100.);
end;

end.

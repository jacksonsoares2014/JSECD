unit JSEcd.Export.RegistroK200;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK200 = '|K200|';

type
  TJSEcdExportRegistroK200 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK200: TJSEcdModelRegistroK200;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK200 }

function TJSEcdExportRegistroK200.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK200>(AModel, FRegK200);

  result := Format(cK200,
                   [FRegK200.);
end;

end.

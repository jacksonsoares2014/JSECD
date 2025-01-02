unit JSEcd.Export.RegistroK030;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK030 = '|K030|';

type
  TJSEcdExportRegistroK030 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK030: TJSEcdModelRegistroK030;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK030 }

function TJSEcdExportRegistroK030.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK030>(AModel, FRegK030);

  result := Format(cK030,
                   [FRegK030.);
end;

end.

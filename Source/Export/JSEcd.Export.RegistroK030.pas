unit JSEcd.Export.RegistroK030;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cK030 = '|K030|%s|%s|';

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
                   [JSEF.FormatData(FRegK030.dtIni),
                    JSEF.FormatData(FRegK030.dtFin)]);
end;

end.

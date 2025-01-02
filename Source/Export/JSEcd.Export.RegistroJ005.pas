unit JSEcd.Export.RegistroJ005;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ005 = '|J005|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ005 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ005: TJSEcdModelRegistroJ005;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ005 }

function TJSEcdExportRegistroJ005.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ005>(AModel, FRegJ005);

  result := Format(cJ005,
                   [JSEF.FormatData(FRegJ005.dtIni),
                    JSEF.FormatData(FRegJ005.dtFin),
                    FRegJ005.idDem.ToString,
                    FRegJ005.cadDem]);
end;

end.

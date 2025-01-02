unit JSEcd.Export.RegistroJ210;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ210 = '|J210|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ210 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ210: TJSEcdModelRegistroJ210;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ210 }

function TJSEcdExportRegistroJ210.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ210>(AModel, FRegJ210);

  result := Format(cJ210,
                   [FRegJ210.indTip,
                    FRegJ210.codAgl,
                    FRegJ210.descrCodAgl,
                    JSEF.FormatCurrency(FRegJ210.vlCtaIni),
                    FRegJ210.indDcCtaIni,
                    JSEF.FormatCurrency(FRegJ210.vlCtaFin),
                    FRegJ210.indDcCtaFin,
                    FRegJ210.notasExpRef]);
end;

end.

unit JSEcd.Export.RegistroJ100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ100 = '|J100|';

type
  TJSEcdExportRegistroJ100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ100: TJSEcdModelRegistroJ100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ100 }

function TJSEcdExportRegistroJ100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ100>(AModel, FRegJ100);

  result := Format(cJ100,
                   [FRegJ100.codAgl,
                    FRegJ100.indCodAgl,
                    FRegJ100.nivelAgl.ToString,
                    FRegJ100.codAglSup,
                    FRegJ100.indGrpBal,
                    FRegJ100.descrCodAgl,
                    JSEF.FormatCurrency(FRegJ100.vlCtaIni),
                    FRegJ100.indDcCtaIni,
                    JSEF.FormatCurrency(FRegJ100.vlCtaFin),
                    FRegJ100.indDcCtaFin,
                    FRegJ100.notaExpRef]);
end;

end.

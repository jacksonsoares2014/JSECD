unit JSEcd.Export.RegistroJ150;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ150 = '|J150|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ150 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ150: TJSEcdModelRegistroJ150;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ150 }

function TJSEcdExportRegistroJ150.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ150>(AModel, FRegJ150);

  result := Format(cJ150,
                   [FRegJ150.nuOrdem.ToString,
                    FRegJ150.codAgl,
                    FRegJ150.indCodAgl,
                    FRegJ150.nivelAgl.ToString,
                    FRegJ150.codAglSup,
                    FRegJ150.descrCodAgl,
                    JSEF.FormatCurrency(FRegJ150.vlCtaIni),
                    FRegJ150.indDcCtaIni,
                    JSEF.FormatCurrency(FRegJ150.vlCtaFin),
                    FRegJ150.indDcCtaFin,
                    FRegJ150.indGrpDre,
                    FRegJ150.notaExpRef]);
end;

end.

unit JSEcd.Export.RegistroI155;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI155 = '|I155|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroI155 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI155: TJSEcdModelRegistroI155;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI155 }

function TJSEcdExportRegistroI155.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI155>(AModel, FRegI155);

  result := Format(cI155,
                   [FRegI155.codCta,
                    FRegI155.codCcus,
                    JSEF.FormatCurrency(FRegI155.vlSldIni),
                    FRegI155.indDcIni,
                    JSEF.FormatCurrency(FRegI155.vlDeb),
                    JSEF.FormatCurrency(FRegI155.vlCred),
                    JSEF.FormatCurrency(FRegI155.vlSldFin),
                    FRegI155.indDcFin,
                    JSEF.FormatCurrency(FRegI155.vlSldIniMf),
                    FRegI155.indDcIniMf,
                    JSEF.FormatCurrency(FRegI155.vlDebMf),
                    JSEF.FormatCurrency(FRegI155.vlCredMf),
                    JSEF.FormatCurrency(FRegI155.vlSldFinMf),
                    FRegI155.indDcFinMf]);
end;

end.

unit JSEcd.Export.RegistroI250;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI250 = '|I250|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroI250 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI250: TJSEcdModelRegistroI250;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI250 }

function TJSEcdExportRegistroI250.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI250>(AModel, FRegI250);

  result := Format(cI250,
                   [FRegI250.codCta,
                    FRegI250.codCcus,
                    JSEF.FormatCurrency(FRegI250.vlDc),
                    FRegI250.indDc,
                    FRegI250.numArq,
                    FRegI250.codHistPad,
                    FRegI250.Hist,
                    FRegI250.codPart,
                    JSEF.FormatCurrency(FRegI250.vlDcMf),
                    FRegI250.indDcMf]);
end;

end.

unit JSEcd.Export.RegistroI355;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI355 = '|I355|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroI355 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI355: TJSEcdModelRegistroI355;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI355 }

function TJSEcdExportRegistroI355.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI355>(AModel, FRegI355);

  result := Format(cI355,
                   [FRegI355.codCta,
                    FRegI355.codCcus,
                    JSEF.FormatCurrency(FRegI355.vlCta),
                    FRegI355.indDc,
                    JSEF.FormatCurrency(FRegI355.vlCtaMf),
                    FRegI355.indDcMf]);
end;

end.

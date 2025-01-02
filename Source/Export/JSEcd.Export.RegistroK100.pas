unit JSEcd.Export.RegistroK100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cK100 = '|K100|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroK100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK100: TJSEcdModelRegistroK100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK100 }

function TJSEcdExportRegistroK100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK100>(AModel, FRegK100);

  result := Format(cK100,
                   [FRegK100.codPais,
                    FRegK100.empCod,
                    FRegK100.Cnpj,
                    FRegK100.nome,
                    JSEF.FormatCurrency(FRegK100.perPart, 4),
                    FRegK100.evento,
                    JSEF.FormatCurrency(FRegK100.perCons, 4),
                    JSEF.FormatData(FRegK100.dataIniEmp),
                    JSEF.FormatData(FRegK100.dataFinEmp)]);
end;

end.

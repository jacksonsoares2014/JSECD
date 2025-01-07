unit JSEcd.Export.RegistroI050;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI050 = '|I050|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroI050 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI050: TJSEcdModelRegistroI050;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI050 }

function TJSEcdExportRegistroI050.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI050>(AModel, FRegI050);

  result := Format(cI050,
                   [JSEF.FormatData(FRegI050.dtAlt),
                    FRegI050.codNat.ToString,
                    FRegI050.indCta.ToString,
                    FRegI050.nivel.ToString,
                    FRegI050.codCta,
                    FRegI050.codCtaSup,
                    FRegI050.cta]);
end;

end.

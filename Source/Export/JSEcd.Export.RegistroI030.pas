unit JSEcd.Export.RegistroI030;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI030 = '|I030|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroI030 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI030: TJSEcdModelRegistroI030;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI030 }

function TJSEcdExportRegistroI030.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI030>(AModel, FRegI030);

  result := Format(cI030,
                   [FRegI030.dnrcAbert,
                    FRegI030.numOrd.ToString,
                    FRegI030.natLivr,
                    FRegI030.qtdLin.ToString,
                    FRegI030.nome,
                    FRegI030.nire,
                    FRegI030.cnpj,
                    JSEF.FormatData(FRegI030.dtArq),
                    JSEF.FormatData(FRegI030.dtArqConv),
                    FRegI030.descMun,
                    JSEF.FormatData(FRegI030.dtExSocial)]);
end;

end.

unit JSEcd.Export.RegistroJ900;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ900 = '|J900|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ900 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ900: TJSEcdModelRegistroJ900;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ900 }

function TJSEcdExportRegistroJ900.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ900>(AModel, FRegJ900);

  result := Format(cJ900,
                   [FRegJ900.dnrcEncer,
                    FRegJ900.numOrd.ToString,
                    FRegJ900.natLivro,
                    FRegJ900.nome,
                    FRegJ900.qtdLin.ToString,
                    JSEF.FormatData(FRegJ900.dtIniEscr),
                    JSEF.FormatData(FRegJ900.dtFinEscr)]);
end;

end.

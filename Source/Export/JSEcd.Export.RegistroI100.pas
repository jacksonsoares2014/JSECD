unit JSEcd.Export.RegistroI100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cI100 = '|I100|%s|%s|%s|';

type
  TJSEcdExportRegistroI100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI100: TJSEcdModelRegistroI100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI100 }

function TJSEcdExportRegistroI100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI100>(AModel, FRegI100);

  result := Format(cI100,
                   [JSEF.FormatData(FRegI100.dtAlt),
                    FRegI100.codCcus,
                    FRegI100.ccus]);
end;

end.

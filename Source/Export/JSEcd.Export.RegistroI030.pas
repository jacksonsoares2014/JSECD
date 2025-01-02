unit JSEcd.Export.RegistroI030;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI030 = '|I030|';

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
                   [FRegI030.);
end;

end.

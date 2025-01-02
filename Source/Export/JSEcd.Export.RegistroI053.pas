unit JSEcd.Export.RegistroI053;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI053 = '|I053|';

type
  TJSEcdExportRegistroI053 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI053: TJSEcdModelRegistroI053;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI053 }

function TJSEcdExportRegistroI053.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI053>(AModel, FRegI053);

  result := Format(cI053,
                   [FRegI053.);
end;

end.

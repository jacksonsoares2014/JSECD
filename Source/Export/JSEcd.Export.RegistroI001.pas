unit JSEcd.Export.RegistroI001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI001 = '|I001|';

type
  TJSEcdExportRegistroI001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI001: TJSEcdModelRegistroI001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI001 }

function TJSEcdExportRegistroI001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI001>(AModel, FRegI001);

  result := Format(cI001,
                   [FRegI001.);
end;

end.

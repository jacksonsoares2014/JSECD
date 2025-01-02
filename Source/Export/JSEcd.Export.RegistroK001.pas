unit JSEcd.Export.RegistroK001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK001 = '|K001|';

type
  TJSEcdExportRegistroK001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK001: TJSEcdModelRegistroK001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK001 }

function TJSEcdExportRegistroK001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK001>(AModel, FRegK001);

  result := Format(cK001,
                   [FRegK001.);
end;

end.

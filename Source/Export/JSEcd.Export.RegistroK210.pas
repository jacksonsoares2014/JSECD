unit JSEcd.Export.RegistroK210;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cK210 = '|K210|';

type
  TJSEcdExportRegistroK210 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegK210: TJSEcdModelRegistroK210;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroK210 }

function TJSEcdExportRegistroK210.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroK210>(AModel, FRegK210);

  result := Format(cK210,
                   [FRegK210.);
end;

end.

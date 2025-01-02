unit JSEcd.Export.RegistroI015;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI015 = '|I015|';

type
  TJSEcdExportRegistroI015 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI015: TJSEcdModelRegistroI015;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI015 }

function TJSEcdExportRegistroI015.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI015>(AModel, FRegI015);

  result := Format('|I015|%s|', [FRegI015.codCtaRes]);
end;

end.

unit JSEcd.Export.RegistroI990;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistroI990 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI990: TJSEcdModelRegistroI990;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI990 }

function TJSEcdExportRegistroI990.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI990>(AModel, FRegI990);

  result := Format('|I990|%d|', [FRegI990.qtdLinI]);
end;

end.

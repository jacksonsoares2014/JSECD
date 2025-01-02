unit JSEcd.Export.RegistroI157;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI157 = '|I157|';

type
  TJSEcdExportRegistroI157 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI157: TJSEcdModelRegistroI157;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI157 }

function TJSEcdExportRegistroI157.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI157>(AModel, FRegI157);

  result := Format(cI157,
                   [FRegI157.);
end;

end.

unit JSEcd.Export.RegistroI012;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI012 = '|I012|';

type
  TJSEcdExportRegistroI012 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI012: TJSEcdModelRegistroI012;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI012 }

function TJSEcdExportRegistroI012.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI012>(AModel, FRegI012);

  result := Format(cI012,
                   [FRegI012.);
end;

end.

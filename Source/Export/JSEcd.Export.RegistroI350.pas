unit JSEcd.Export.RegistroI350;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI350 = '|I350|';

type
  TJSEcdExportRegistroI350 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI350: TJSEcdModelRegistroI350;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI350 }

function TJSEcdExportRegistroI350.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI350>(AModel, FRegI350);

  result := Format(cI350,
                   [FRegI350.);
end;

end.

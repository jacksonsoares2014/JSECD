unit JSEcd.Export.RegistroI200;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI200 = '|I200|';

type
  TJSEcdExportRegistroI200 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI200: TJSEcdModelRegistroI200;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI200 }

function TJSEcdExportRegistroI200.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI200>(AModel, FRegI200);

  result := Format(cI200,
                   [FRegI200.);
end;

end.

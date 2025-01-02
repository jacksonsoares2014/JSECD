unit JSEcd.Export.RegistroI051;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI051 = '|I051|';

type
  TJSEcdExportRegistroI051 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI051: TJSEcdModelRegistroI051;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI051 }

function TJSEcdExportRegistroI051.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI051>(AModel, FRegI051);

  result := Format(cI051,
                   [FRegI051.);
end;

end.

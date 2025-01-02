unit JSEcd.Export.RegistroJ900;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ900 = '|J900|';

type
  TJSEcdExportRegistroJ900 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ900: TJSEcdModelRegistroJ900;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ900 }

function TJSEcdExportRegistroJ900.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ900>(AModel, FRegJ900);

  result := Format(cJ900,
                   [FRegJ900.);
end;

end.

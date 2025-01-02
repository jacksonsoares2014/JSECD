unit JSEcd.Export.RegistroJ935;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ935 = '|J935|';

type
  TJSEcdExportRegistroJ935 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ935: TJSEcdModelRegistroJ935;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ935 }

function TJSEcdExportRegistroJ935.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ935>(AModel, FRegJ935);

  result := Format(cJ935,
                   [FRegJ935.);
end;

end.

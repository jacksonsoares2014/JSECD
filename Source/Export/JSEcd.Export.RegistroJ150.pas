unit JSEcd.Export.RegistroJ150;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ150 = '|J150|';

type
  TJSEcdExportRegistroJ150 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ150: TJSEcdModelRegistroJ150;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ150 }

function TJSEcdExportRegistroJ150.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ150>(AModel, FRegJ150);

  result := Format(cJ150,
                   [FRegJ150.);
end;

end.

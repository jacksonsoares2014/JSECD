unit JSEcd.Export.RegistroJ930;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ930 = '|J930|';

type
  TJSEcdExportRegistroJ930 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ930: TJSEcdModelRegistroJ930;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ930 }

function TJSEcdExportRegistroJ930.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ930>(AModel, FRegJ930);

  result := Format(cJ930,
                   [FRegJ930.);
end;

end.

unit JSEcd.Export.RegistroI155;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI155 = '|I155|';

type
  TJSEcdExportRegistroI155 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI155: TJSEcdModelRegistroI155;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI155 }

function TJSEcdExportRegistroI155.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI155>(AModel, FRegI155);

  result := Format(cI155,
                   [FRegI155.);
end;

end.

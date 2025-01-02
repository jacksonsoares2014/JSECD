unit JSEcd.Export.RegistroI150;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI150 = '|I150|';

type
  TJSEcdExportRegistroI150 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI150: TJSEcdModelRegistroI150;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI150 }

function TJSEcdExportRegistroI150.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI150>(AModel, FRegI150);

  result := Format(cI150,
                   [FRegI150.);
end;

end.

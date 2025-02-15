unit JSEcd.Export.RegistroI010;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

const
  cI010 = '|I010|%s|%s|';

type
  TJSEcdExportRegistroI010 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI010: TJSEcdModelRegistroI010;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI010 }

function TJSEcdExportRegistroI010.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI010>(AModel, FRegI010);

  result := Format(cI010,
                   [FRegI010.indEsc.ToString,
                    FRegI010.codVerLc]);
end;

end.

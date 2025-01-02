unit JSEcd.Export.RegistroI550;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI550 = '|I550|';

type
  TJSEcdExportRegistroI550 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI550: TJSEcdModelRegistroI550;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI550 }

function TJSEcdExportRegistroI550.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI550>(AModel, FRegI550);

  result := Format(cI550,
                   [FRegI550.);
end;

end.

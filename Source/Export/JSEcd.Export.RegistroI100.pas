unit JSEcd.Export.RegistroI100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI100 = '|I100|';

type
  TJSEcdExportRegistroI100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI100: TJSEcdModelRegistroI100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI100 }

function TJSEcdExportRegistroI100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI100>(AModel, FRegI100);

  result := Format(cI100,
                   [FRegI100.);
end;

end.

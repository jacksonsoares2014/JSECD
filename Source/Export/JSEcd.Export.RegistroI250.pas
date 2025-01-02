unit JSEcd.Export.RegistroI250;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI250 = '|I250|';

type
  TJSEcdExportRegistroI250 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI250: TJSEcdModelRegistroI250;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI250 }

function TJSEcdExportRegistroI250.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI250>(AModel, FRegI250);

  result := Format(cI250,
                   [FRegI250.);
end;

end.

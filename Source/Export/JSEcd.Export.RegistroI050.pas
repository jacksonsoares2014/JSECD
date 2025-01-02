unit JSEcd.Export.RegistroI050;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI050 = '|I050|';

type
  TJSEcdExportRegistroI050 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI050: TJSEcdModelRegistroI050;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI050 }

function TJSEcdExportRegistroI050.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI050>(AModel, FRegI050);

  result := Format(cI050,
                   [FRegI050.);
end;

end.

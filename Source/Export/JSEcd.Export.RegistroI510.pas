unit JSEcd.Export.RegistroI510;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI510 = '|I510|';

type
  TJSEcdExportRegistroI510 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI510: TJSEcdModelRegistroI510;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI510 }

function TJSEcdExportRegistroI510.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI510>(AModel, FRegI510);

  result := Format(cI510,
                   [FRegI510.);
end;

end.

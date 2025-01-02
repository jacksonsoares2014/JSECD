unit JSEcd.Export.RegistroI510;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI510 = '|I510|%s|%s|%s|%s|%s|%s|';

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
                   [FRegI510.nmCampo,
                    FRegI510.descCampo,
                    FRegI510.tipoCampo,
                    FRegI510.tamCampo,
                    FRegI510.decCampo,
                    FRegI510.colCampo]);
end;

end.

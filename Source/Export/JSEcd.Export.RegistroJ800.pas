unit JSEcd.Export.RegistroJ800;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

const
  cJ800 = '|J800|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ800 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ800: TJSEcdModelRegistroJ800;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ800 }

function TJSEcdExportRegistroJ800.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ800>(AModel, FRegJ800);

  result := Format(cJ800,
                   [FRegJ800.tipoDoc.ToString,
                    FRegJ800.descRtf,
                    FRegJ800.hashRtf,
                    FRegJ800.arqRtf,
                    FRegJ800.indFimRtf]);
end;

end.

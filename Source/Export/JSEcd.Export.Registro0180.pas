unit JSEcd.Export.Registro0180;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  JSEcd.Model.Format,
  System.SysUtils;

const
  c0180 = '|0180|%s|%s|%s|';

type
  TJSEcdExportRegistro0180 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0180: TJSEcdModelRegistro0180;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0180 }

function TJSEcdExportRegistro0180.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0180>(AModel, FReg0180);

  result := Format(c0180,
                   [FReg0180.codRel.ToString,
                    JSEF.FormatData(FReg0180.dtIniRel),
                    JSEF.FormatData(FReg0180.dtFinRel)]);
end;

end.

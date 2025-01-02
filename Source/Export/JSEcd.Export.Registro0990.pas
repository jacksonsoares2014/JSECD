unit JSEcd.Export.Registro0990;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportRegistro0990 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0990: TJSEcdModelRegistro0990;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0990 }

function TJSEcdExportRegistro0990.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0990>(AModel, FReg0990);

  result := Format('|0990|%d|', [FReg0990.qtdLin0]);
end;

end.

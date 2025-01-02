unit JSEcd.Export.Registro0007;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0007 = '|0007|';

type
  TJSEcdExportRegistro0007 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0007: TJSEcdModelRegistro0007;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0007 }

function TJSEcdExportRegistro0007.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0007>(AModel, FReg0007);

  result := Format(c0007,
                   [FReg0007.);
end;

end.

unit JSEcd.Export.Registro0020;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0020 = '|0020|';

type
  TJSEcdExportRegistro0020 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0020: TJSEcdModelRegistro0020;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0020 }

function TJSEcdExportRegistro0020.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0020>(AModel, FReg0020);

  result := Format(c0020,
                   [FReg0020.);
end;

end.

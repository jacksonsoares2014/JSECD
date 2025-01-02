unit JSEcd.Export.Registro0020;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

const
  c0020 = '|0020|%s|%s|%s|%s|%s|%s|%s|';

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
                   [FReg0020.indDec.ToString,
                    FReg0020.cnpj,
                    FReg0020.uf,
                    FReg0020.ie,
                    FReg0020.codMun,
                    FReg0020.im,
                    FReg0020.nire]);
end;

end.

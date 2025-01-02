unit JSEcd.Export.Registro0150;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  c0150 = '|0150|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistro0150 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0150: TJSEcdModelRegistro0150;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0150 }

function TJSEcdExportRegistro0150.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0150>(AModel, FReg0150);

  result := Format(c0150,
                   [FReg0150.codPart,
                    FReg0150.nome,
                    FReg0150.codPais,
                    FReg0150.cnpj,
                    FReg0150.cpf,
                    FReg0150.nit,
                    FReg0150.uf,
                    FReg0150.ie,
                    FReg0150.ieSt,
                    FReg0150.codMun,
                    FReg0150.im,
                    FReg0150.suframa]);
end;

end.

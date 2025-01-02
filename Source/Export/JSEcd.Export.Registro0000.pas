unit JSEcd.Export.Registro0000;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  JSEcd.Model.Types,
  System.SysUtils;

const
  c0000 = '|0000|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistro0000 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FReg0000: TJSEcdModelRegistro0000;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistro0000 }

function TJSEcdExportRegistro0000.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistro0000>(AModel, FReg0000);

  result := Format(c0000,
                   [FReg0000.lecd,
                    JSEF.FormatData(FReg0000.dtIni),
                    JSEF.FormatData(FReg0000.dtFin),
                    FReg0000.nome,
                    FReg0000.cnpj,
                    FReg0000.uf,
                    FReg0000.ie,
                    FReg0000.codMun,
                    FReg0000.im,
                    FReg0000.indSitEsp.ToString,
                    FReg0000.indSitIniPer.ToString,
                    FReg0000.indNire.ToString,
                    FReg0000.indFinEsc.ToString,
                    FReg0000.codHashSub,
                    FReg0000.indGrandePorte.ToString,
                    FReg0000.tipEcd.ToString,
                    FReg0000.codScp,
                    FReg0000.identMf,
                    FReg0000.indEscCons,
                    FReg0000.indCentralizada.ToString,
                    FReg0000.indMudancPc.ToString,
                    FReg0000.codPlanRef.ToString]);
end;

end.

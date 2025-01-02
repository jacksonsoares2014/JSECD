unit JSEcd.Export.RegistroJ930;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Format,
  System.SysUtils;

const
  cJ930 = '|J930|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|';

type
  TJSEcdExportRegistroJ930 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ930: TJSEcdModelRegistroJ930;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ930 }

function TJSEcdExportRegistroJ930.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ930>(AModel, FRegJ930);

  result := Format(cJ930,
                   [FRegJ930.identNom,
                    FRegJ930.identCpfCnpj,
                    FRegJ930.identQualif,
                    FRegJ930.codAssin,
                    FRegJ930.indCrc,
                    FRegJ930.email,
                    FRegJ930.fone,
                    FRegJ930.ufCrc,
                    FRegJ930.numSeqCrc,
                    JSEF.FormatData(FRegJ930.dtCrc),
                    FRegJ930.indRespLegal]);
end;

end.

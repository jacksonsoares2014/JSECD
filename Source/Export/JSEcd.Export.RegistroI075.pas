unit JSEcd.Export.RegistroI075;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI075 = '|I075|%s|%s|';

type
  TJSEcdExportRegistroI075 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI075: TJSEcdModelRegistroI075;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI075 }

function TJSEcdExportRegistroI075.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI075>(AModel, FRegI075);

  result := Format(cI075,
                   [FRegI075.codHist,
                    FRegI075.descrHist]);
end;

end.

unit JSEcd.Export.RegistroI052;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cI052 = '|I052|%s|%s|';

type
  TJSEcdExportRegistroI052 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegI052: TJSEcdModelRegistroI052;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroI052 }

function TJSEcdExportRegistroI052.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroI052>(AModel, FRegI052);

  result := Format(cI052,
                   [FRegI052.codCcus,
                    FRegI052.codAgl]);
end;

end.

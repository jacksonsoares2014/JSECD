unit JSEcd.DAO.RegistroI051;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI051 = class(TInterfacedObject, IJSEcdDAOI051)
  private
  public
    function List(Value: string): TObjectList<TJSEcdModelRegistroI051>;
    class function New: IJSEcdDAOI051;
  end;

implementation

{ TJSEcdDAORegistroI051 }

function TJSEcdDAORegistroI051.List(Value: string): TObjectList<TJSEcdModelRegistroI051>;
begin
  Result := TObjectList<TJSEcdModelRegistroI051>.Create;

  if (Value = '11101001') or
     (Value = '11101002') or
     (Value = '11101005') or
     (Value = '11101007') then
  begin
    Result.Add(TJSEcdModelRegistroI051.Create);
    Result.Last.codCcus := '110100202';
    Result.Last.codCtaRef := '1.01.01.01.01';
  end;

  if Value = '11101008' then
  begin
    Result.Add(TJSEcdModelRegistroI051.Create);
    Result.Last.codCcus := '110110101';
    Result.Last.codCtaRef := '1.01.01.04.01';
  end;

  if (Value = '11102001') or (Value = '11102002') then
  begin
    Result.Add(TJSEcdModelRegistroI051.Create);
    Result.Last.codCcus := '';
    Result.Last.codCtaRef := '1.01.01.02.01';
  end;

{
|I030|TERMO DE ABERTURA|333|livro diaro|489066|TRANSAMERICA DE HOTEIS NORDESTE LTDA|
29203275327|13432810000169|03112005|03112005|Una|31122023|
|I050|01082023|01|S|1|1||ATIVO|
|I050|01082023|01|S|2|11|1|ATIVO CIRCULANTE|
|I050|01082023|01|S|3|111|11|DISPONIBILIDADES|
|I050|01082023|01|S|4|11101|111|CAIXA GERAL|
|I050|01082023|01|A|5|11101001|11101|CAIXA FUNDO FIXO - TESOURARIA GERAL|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101002|11101|CAIXA FUNDO FIXO - COMPRAS SP|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101005|11101|CAIXA FUNDO FIXO - RH|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101007|11101|CAIXA FUNDO FIXO - TRANSPORTE|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101008|11101|NUMERARIOS EM TRANSITO|
|I051||1.01.01.04.01|
|I052||18002550|
|I050|01082023|01|S|4|11102|111|BANCOS CONTA MOVIMENTO|
|I050|01082023|01|A|5|11102001|11102|BANCO BRADESCO|
|I051||1.01.01.02.01|
|I052||18002551|
|I050|01082023|01|A|5|11102002|11102|BANCO SANTANDER|
|I051||1.01.01.02.01|
|I052||18002551|
}
end;

class function TJSEcdDAORegistroI051.New: IJSEcdDAOI051;
begin
  Result := Self.Create;
end;

end.

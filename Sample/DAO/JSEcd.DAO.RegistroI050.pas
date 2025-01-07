unit JSEcd.DAO.RegistroI050;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI050 = class(TInterfacedObject, IJSEcdDAOI050)
  private
  public
    function List: TObjectList<TJSEcdModelRegistroI050>;
    class function New: IJSEcdDAOI050;
  end;

implementation

{ TJSEcdDAORegistroI050 }

function TJSEcdDAORegistroI050.List: TObjectList<TJSEcdModelRegistroI050>;
begin
  Result := TObjectList<TJSEcdModelRegistroI050>.Create;

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('S');
  Result.Last.nivel := 1;
  Result.Last.codCta := '1';
  Result.Last.codCtaSup := '';
  Result.Last.cta := 'ATIVO';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('S');
  Result.Last.nivel := 2;
  Result.Last.codCta := '11';
  Result.Last.codCtaSup := '1';
  Result.Last.cta := 'ATIVO CIRCULANTE';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('S');
  Result.Last.nivel := 3;
  Result.Last.codCta := '111';
  Result.Last.codCtaSup := '11';
  Result.Last.cta := 'DISPONIBILIDADES';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('S');
  Result.Last.nivel := 4;
  Result.Last.codCta := '11101';
  Result.Last.codCtaSup := '111';
  Result.Last.cta := 'CAIXA GERAL';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11101001';
  Result.Last.codCtaSup := '11101';
  Result.Last.cta := 'CAIXA FUNDO FIXO - TESOURARIA GERAL';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11101002';
  Result.Last.codCtaSup := '11101';
  Result.Last.cta := 'CAIXA FUNDO FIXO - COMPRAS SP';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11101005';
  Result.Last.codCtaSup := '11101';
  Result.Last.cta := 'CAIXA FUNDO FIXO - RH';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11101007';
  Result.Last.codCtaSup := '11101';
  Result.Last.cta := 'CAIXA FUNDO FIXO - TRANSPORTE';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11101008';
  Result.Last.codCtaSup := '11101';
  Result.Last.cta := 'NUMERARIOS EM TRANSITO';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('S');
  Result.Last.nivel := 4;
  Result.Last.codCta := '11102';
  Result.Last.codCtaSup := '111';
  Result.Last.cta := 'BANCOS CONTA MOVIMENTO';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11102001';
  Result.Last.codCtaSup := '11102';
  Result.Last.cta := 'BANCO BRADESCO';

  Result.Add(TJSEcdModelRegistroI050.Create);
  Result.Last.dtAlt := StrToDate('01/08/2023');
  Result.Last.codNat.FromString('01');
  Result.Last.indCta.FromString('A');
  Result.Last.nivel := 5;
  Result.Last.codCta := '11102002';
  Result.Last.codCtaSup := '11102';
  Result.Last.cta := 'BANCO SANTANDER';
end;

class function TJSEcdDAORegistroI050.New: IJSEcdDAOI050;
begin
  Result := Self.Create;
end;

end.

unit JSEcd.DAO.RegistroJ100;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroJ100 = class(TInterfacedObject, IJSEcdDAOJ100)
  private
//    FCds: TClientDataSet;
    procedure CarregaLista;
  public
    function List: TObjectList<TJSEcdModelRegistroJ100>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOJ100;
  end;

var
  Lista: TStringList;

implementation

{ TJSEcdDAORegistroJ100 }

procedure TJSEcdDAORegistroJ100.CarregaLista;
begin
  Lista.Add('|J100|18002547|T|1||A|ATIVO|379873398.68|D|178130602.68|D||');
  Lista.Add('|J100|18002548|T|2|18002547|A|ATIVO CIRCULANTE|83899947.12|D|113911262.23|D||');
  Lista.Add('|J100|18002549|T|3|18002548|A|DISPONIBILIDADES|28439539.70|D|37289402.70|D||');
  Lista.Add('|J100|18002550|D|4|18002549|A|CAIXA GERAL|67101.86|D|47205.86|D||');
  Lista.Add('|J100|18002551|D|4|18002549|A|BANCOS CONTA MOVIMENTO|13179.48|D|14232.94|D||');
  Lista.Add('|J100|18002552|D|4|18002549|A|APLICACOES DE LIQUIDEZ IMEDIATA|27909096.42|D|36754957.00|D||');
  Lista.Add('|J100|18002553|D|4|18002549|A|TITULOS E VALORES MOBILIARIOS|450161.94|D|473006.90|D||');
  Lista.Add('|J100|18002554|T|3|18002548|A|CLIENTES|44171724.95|D|61114241.54|D||');
  Lista.Add('|J100|18002555|D|4|18002554|A|DUPLICATAS A RECEBER|13151369.32|D|27324485.10|D||');
  Lista.Add('|J100|18002556|D|4|18002554|A|CARTOES DE CREDITO / DEBITO|32423765.37|D|45639993.57|D||');
  Lista.Add('|J100|18002558|D|4|18002554|A|(-) CREDITO DE CLIENTES|1403409.74|C|11850237.13|C||');
  Lista.Add('|J100|18002559|T|3|18002548|A|OUTROS CREDITOS|4484306.16|D|7379682.42|D||');
  Lista.Add('|J100|18002560|D|4|18002559|A|ADIANTAMENTOS A FORNECEDORES|1372315.44|D|4310170.58|D||');
  Lista.Add('|J100|18002561|D|4|18002559|A|ADIANTAMENTOS A EMPREGADOS|179125.96|D|304115.13|D||');
  Lista.Add('|J100|18002562|D|4|18002559|A|TRIBUTOS A RECUPERAR / COMPENSAR|2773671.06|D|2765396.71|D||');
  Lista.Add('|J100|18002563|D|4|18002559|A|PARTES RELACIONADAS|159193.70|D|0.00|C||');
  Lista.Add('|J100|18002565|T|3|18002548|A|ESTOQUES|4740733.49|D|6457932.65|D||');
  Lista.Add('|J100|18002567|D|4|18002565|A|ALMOXARIFADO|4740733.49|D|6457932.65|D||');
  Lista.Add('|J100|18002568|T|3|18002548|A|DESPESAS ANTECIPADAS|2063642.82|D|1670002.92|D||');
  Lista.Add('|J100|18002569|D|4|18002568|A|DESPESAS FUTURAS A AMORTIZAR|2063642.82|D|1568138.23|D||');
  Lista.Add('|J100|18002570|D|4|18002568|A|BENEFICIOS FOLHA DE PAGAMENTO|0.00|C|101864.69|D||');
  Lista.Add('|J100|18002571|T|2|18002547|A|ATIVO NAO CIRCULANTE|295973451.56|D|64219340.45|D||');
  Lista.Add('|J100|18002572|T|3|18002571|A|REALIZAVEL A LONGO PRAZO|15719188.10|D|3922906.61|D||');
  Lista.Add('|J100|18002573|D|4|18002572|A|DEPOSITOS JUDICIAIS|15719188.10|D|3922906.61|D||');
  Lista.Add('|J100|18002577|T|3|18002571|A|INVESTIMENTOS|223241716.25|D|610964.31|D||');
  Lista.Add('|J100|18002578|D|4|18002577|A|PARTICIPACOES PERMANENTES EM SOCIEDADES|222630751.94|D|0.00|C||');
  Lista.Add('|J100|18002579|D|4|18002577|A|BENS RECEBIDOS EM COMODATO|610964.31|D|610964.31|D||');
  Lista.Add('|J100|18002580|T|3|18002571|A|IMOBILIZADO|56978499.54|D|59714527.45|D||');
  Lista.Add('|J100|18002581|D|4|18002580|A|IMOBILIZADO - AQUISICAO|184113127.90|D|187976835.73|D||');
  Lista.Add('|J100|18002582|D|4|18002580|A|(-) DEPRECIACAO ACUMULADA|138102077.06|C|140050571.11|C||');
  Lista.Add('|J100|18002583|D|4|18002580|A|(-) DEPRECIACAO ACUMULADA CPC 27|9123243.72|D|9755351.47|D||');
  Lista.Add('|J100|18002584|D|4|18002580|A|DIREITO DE USO DE BENS|0.00|D|188706.38|D||');
  Lista.Add('|J100|18002587|D|4|18002580|A|IMOBILIZADO LEI 8200|31437099.75|D|31437146.75|D||');
  Lista.Add('|J100|18002588|D|4|18002580|A|(-) DEPRECIACOES ACUMULADAS LEI 8200|29592894.77|C|29592941.77|C||');
  Lista.Add('|J100|18002590|T|3|18002571|A|INTANGIVEL|34047.67|D|29057.92|C||');
  Lista.Add('|J100|18002591|D|4|18002590|A|ATIVO INTANGIVEL|1033350.14|D|1057249.80|D||');
  Lista.Add('|J100|18002592|D|4|18002590|A|(-) AMORTIZACAO|1000120.46|C|1087125.71|C||');
  Lista.Add('|J100|18002595|D|4|18002590|A|INTANGIVEL LEI 8200 IPC|817.99|D|817.99|D||');
end;

constructor TJSEcdDAORegistroJ100.Create;
begin

end;

destructor TJSEcdDAORegistroJ100.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroJ100.List: TObjectList<TJSEcdModelRegistroJ100>;
var
  I: Integer;
  Linha, s: string;
begin
  Lista := TStringList.Create;
  CarregaLista;
  Result := TObjectList<TJSEcdModelRegistroJ100>.Create;

  for I := 0 to (Lista.Count - 1) do
  begin
    Result.Add(TJSEcdModelRegistroJ100.Create);
    Linha := Lista[I];
    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.codAgl := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indCodAgl := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.nivelAgl := StrToInt(s);

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.codAglSup := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indGrpBal := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.descrCodAgl := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.vlCtaIni := StrToFloatDef(s, 0);

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indDcCtaIni := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.vlCtaFin := StrToFloatDef(s, 0);

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indDcCtaFin := s;

    Result.Last.notaExpRef := '';
  end;
  FreeAndNil(Lista);
end;

class function TJSEcdDAORegistroJ100.New: IJSEcdDAOJ100;
begin
  Result := Self.Create;
end;

end.

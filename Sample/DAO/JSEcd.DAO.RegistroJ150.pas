unit JSEcd.DAO.RegistroJ150;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroJ150 = class(TInterfacedObject, IJSEcdDAOJ150)
  private
//    FCds: TClientDataSet;
    procedure CarregaLista;
  public
    function List: TObjectList<TJSEcdModelRegistroJ150>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOJ150;
  end;

var
  Lista: TStringList;

implementation

{ TJSEcdDAORegistroJ150 }

procedure TJSEcdDAORegistroJ150.CarregaLista;
begin
  Lista.Add('|J150|1|17002532|T|1||RESULTADO LIQUIDO|0.0|C|245090410.1|C|R||');
  Lista.Add('|J150|2|17002534|T|2|17002532|DEMONSTRACAO DO RESULTADO|0.0|C|245090410.1|C|R||');
  Lista.Add('|J150|3|17002535|T|3|17002534|RECEITA LIQUIDA DE SERVICOS E MERCADORIA|0.00|C|209207132.98|C|R||');
  Lista.Add('|J150|4|17002536|D|4|17002535|RECEITA BRUTA DE SERVICOS E MERCADORIAS|0.00|C|220621277.18|C|R||');
  Lista.Add('|J150|5|17002537|D|4|17002535|DEDUCOES DA RECEITA BRUTA|0.00|C|19364.97|D|R||');
  Lista.Add('|J150|6|17002538|D|4|17002535|IMPOSTOS E CONTRIBUICOES S/VENDAS|0.00|D|11394779.23|D|D||');
  Lista.Add('|J150|7|17002540|T|3|17002534|CUSTOS / DESPESAS ADMINISTRATIVAS|0.00|C|164067365.86|D|R||');
  Lista.Add('|J150|8|17002541|D|4|17002540|CUSTOS DAS MERC., LOCACAO E SERV. VENDID|0.00|C|119946693.96|D|R||');
  Lista.Add('|J150|9|17002542|D|4|17002540|DESPESAS ADMINISTRATIVAS / VENDAS|0.00|D|44120671.90|D|D||');
end;

constructor TJSEcdDAORegistroJ150.Create;
begin

end;

destructor TJSEcdDAORegistroJ150.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroJ150.List: TObjectList<TJSEcdModelRegistroJ150>;
var
  I: Integer;
  Linha, s: string;
begin
  Lista := TStringList.Create;
  CarregaLista;
  Result := TObjectList<TJSEcdModelRegistroJ150>.Create;

  for I := 0 to (Lista.Count - 1) do
  begin
    Result.Add(TJSEcdModelRegistroJ150.Create);
    Linha := Lista[I];
    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.nuOrdem := StrToInt(s);

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.codAgl := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indCodAgl := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    if s = '' then
      Result.Last.nivelAgl := 0
    else
      Result.Last.nivelAgl := StrToInt(s);

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.codAglSup := s;

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

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indGrpDre := s;

    Result.Last.notaExpRef := '';
  end;
  FreeAndNil(Lista);
end;

class function TJSEcdDAORegistroJ150.New: IJSEcdDAOJ150;
begin
  Result := Self.Create;
end;

end.


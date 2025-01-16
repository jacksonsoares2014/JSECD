unit JSEcd.DAO.RegistroJ930;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroJ930 = class(TInterfacedObject, IJSEcdDAOJ930)
  private
//    FCds: TClientDataSet;
    procedure CarregaLista;
  public
    function List: TObjectList<TJSEcdModelRegistroJ930>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOJ930;
  end;

var
  Lista: TStringList;

implementation

{ TJSEcdDAORegistroJ930 }

procedure TJSEcdDAORegistroJ930.CarregaLista;
begin
  Lista.Add('|J930|RICARDO AUGUSTO CARMELLIN|16250977864|Contador|900|249231O|ricardo.carmellin@transamerica.com.br|(11) 5643-3475|SP|SP/2023/001|01052050|N|');
  Lista.Add('|J930|RICARDO AUGUSTO CARMELLIN|16250977864|Procurador|309||ricardo.carmellin@transamerica.com.br|(11) 5643-3475||||S|');
  Lista.Add('|J930|TRANSMERICA DE HOTEIS NORDESTE LTDA|13432810000169|Pessoa Jur�ca (e-CNPJ ou e-PJ)|001||ricardo.carmellin@transamerica.com.br|(11) 5643-3475||||N|');
end;

constructor TJSEcdDAORegistroJ930.Create;
begin

end;

destructor TJSEcdDAORegistroJ930.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroJ930.List: TObjectList<TJSEcdModelRegistroJ930>;
var
  I: Integer;
  Linha, s: string;
begin
  Lista := TStringList.Create;
  CarregaLista;
  Result := TObjectList<TJSEcdModelRegistroJ930>.Create;

  for I := 0 to (Lista.Count - 1) do
  begin
    Result.Add(TJSEcdModelRegistroJ930.Create);
    Linha := Lista[I];
    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.identNom := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.identCpfCnpj := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.identQualif := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.codAssin := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indCrc := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.email := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.fone := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.ufCrc := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.numSeqCrc := s;

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    if s <> '' then
      Result.Last.dtCrc := EncodeDate(StrToInt(Copy(s, 5, 4)), StrToInt(Copy(s, 3, 2)), StrToInt(Copy(s, 1, 2)));

    Linha := Copy(Linha, Pos('|', Linha) + 1, length(Linha));
    s := Copy(Linha, 1, Pos('|', Linha) - 1);
    Result.Last.indRespLegal := s;
  end;
  FreeAndNil(Lista);
end;

class function TJSEcdDAORegistroJ930.New: IJSEcdDAOJ930;
begin
  Result := Self.Create;
end;

end.

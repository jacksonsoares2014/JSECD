unit JSEcd.DAO.RegistroI200;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.DateUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI200 = class(TInterfacedObject, IJSEcdDAOI200)
  private
//    FCds: TClientDataSet;
  public
    function List(DataInicial, DataFinal: TDateTime): TObjectList<TJSEcdModelRegistroI200>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI200;
  end;

implementation

{ TJSEcdDAORegistroI200 }

constructor TJSEcdDAORegistroI200.Create;
begin

end;

destructor TJSEcdDAORegistroI200.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI200.List(DataInicial, DataFinal: TDateTime): TObjectList<TJSEcdModelRegistroI200>;
begin
  Result := TObjectList<TJSEcdModelRegistroI200>.Create;

  if MonthOf(DataInicial) <= 3 then
  begin
    Result.Add(TJSEcdModelRegistroI200.Create);
    Result.Last.numLcto := '41319';
    Result.Last.dtLcto := StrToDate('01/01/2023');
    Result.Last.vlLcto := 45305.75;
    Result.Last.indLcto.FromString('N');
  end;

  if (MonthOf(DataInicial) >= 4) and (MonthOf(DataInicial) <= 6) then
  begin
    Result.Add(TJSEcdModelRegistroI200.Create);
    Result.Last.numLcto := '42529';
    Result.Last.dtLcto := StrToDate('01/06/2023');
    Result.Last.vlLcto := 5826.75;
    Result.Last.indLcto.FromString('N');
  end;

  if (MonthOf(DataInicial) >= 7) and (MonthOf(DataInicial) <= 9) then
  begin
    Result.Add(TJSEcdModelRegistroI200.Create);
    Result.Last.numLcto := '42553';
    Result.Last.dtLcto := StrToDate('01/08/2023');
    Result.Last.vlLcto := 36365.28;
    Result.Last.indLcto.FromString('N');
  end;

  if MonthOf(DataInicial) >= 10 then
  begin
    Result.Add(TJSEcdModelRegistroI200.Create);
    Result.Last.numLcto := '42601';
    Result.Last.dtLcto := StrToDate('31/12/2023');
    Result.Last.vlLcto := 1349.77;
    Result.Last.indLcto.FromString('N');
  end;
end;

class function TJSEcdDAORegistroI200.New: IJSEcdDAOI200;
begin
  Result := Self.Create;
end;

end.

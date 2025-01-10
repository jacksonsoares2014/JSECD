unit JSEcd.DAO.RegistroI150;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI150 = class(TInterfacedObject, IJSEcdDAOI150)
  private
//    FCds: TClientDataSet;
  public
    function List: TObjectList<TJSEcdModelRegistroI150>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI150;
end;

implementation

{ TJSEcdDAORegistroI150 }

constructor TJSEcdDAORegistroI150.Create;
begin

end;

destructor TJSEcdDAORegistroI150.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI150.List: TObjectList<TJSEcdModelRegistroI150>;
begin
  Result := TObjectList<TJSEcdModelRegistroI150>.Create;

  Result.Add(TJSEcdModelRegistroI150.Create);
  Result.Last.dtIni := StrToDate('01/08/2023');
  Result.Last.dtFin := StrToDate('31/08/2023');

  Result.Add(TJSEcdModelRegistroI150.Create);
  Result.Last.dtIni := StrToDate('01/09/2023');
  Result.Last.dtFin := StrToDate('30/09/2023');

  Result.Add(TJSEcdModelRegistroI150.Create);
  Result.Last.dtIni := StrToDate('01/10/2023');
  Result.Last.dtFin := StrToDate('31/10/2023');

  Result.Add(TJSEcdModelRegistroI150.Create);
  Result.Last.dtIni := StrToDate('01/11/2023');
  Result.Last.dtFin := StrToDate('30/11/2023');

  Result.Add(TJSEcdModelRegistroI150.Create);
  Result.Last.dtIni := StrToDate('01/12/2023');
  Result.Last.dtFin := StrToDate('31/12/2023');
end;

class function TJSEcdDAORegistroI150.New: IJSEcdDAOI150;
begin
  Result := Self.Create;
end;

end.

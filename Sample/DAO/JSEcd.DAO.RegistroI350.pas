unit JSEcd.DAO.RegistroI350;

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
  TJSEcdDAORegistroI350 = class(TInterfacedObject, IJSEcdDAOI350)
  private
//    FCds: TClientDataSet;
  public
    function List: TObjectList<TJSEcdModelRegistroI350>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI350;
  end;

implementation

{ TJSEcdDAORegistroI350 }

constructor TJSEcdDAORegistroI350.Create;
begin

end;

destructor TJSEcdDAORegistroI350.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI350.List: TObjectList<TJSEcdModelRegistroI350>;
begin
  Result := TObjectList<TJSEcdModelRegistroI350>.Create;
  Result.Add(TJSEcdModelRegistroI350.Create);
  Result.Last.dtRes := StrToDate('31/12/2023');
end;

class function TJSEcdDAORegistroI350.New: IJSEcdDAOI350;
begin
  Result := Self.Create;
end;

end.

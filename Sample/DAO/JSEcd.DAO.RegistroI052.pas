unit JSEcd.DAO.RegistroI052;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI052 = class(TInterfacedObject, IJSEcdDAOI052)
  private
  public
    function List(Value: string): TObjectList<TJSEcdModelRegistroI052>;
    class function New: IJSEcdDAOI052;
  end;

implementation

{ TJSEcdDAORegistroI052 }

function TJSEcdDAORegistroI052.List(
  Value: string): TObjectList<TJSEcdModelRegistroI052>;
begin
  Result := TObjectList<TJSEcdModelRegistroI052>.Create;

  if (Value = '11101001') or
     (Value = '11101002') or
     (Value = '11101005') or
     (Value = '11101007') or
     (Value = '11101008') then
  begin
    Result.Add(TJSEcdModelRegistroI052.Create);
    Result.Last.codCcus := '';
    Result.Last.codAgl := '18002550';
  end;

  if (Value = '11102001') or (Value = '11102002') then
  begin
    Result.Add(TJSEcdModelRegistroI052.Create);
    Result.Last.codCcus := '';
    Result.Last.codAgl := '18002551';
  end;
end;

class function TJSEcdDAORegistroI052.New: IJSEcdDAOI052;
begin
  Result := Self.Create;
end;

end.

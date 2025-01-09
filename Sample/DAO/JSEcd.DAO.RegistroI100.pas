unit JSEcd.DAO.RegistroI100;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI100 = class(TInterfacedObject, IJSEcdDAOI100)
  private
//    FCds: TClientDataSet;

    procedure CarregaCcus(ACodCcus: String; ListI100: TObjectList<TJSEcdModelRegistroI100>);
  public
    function List(CodCcus: TList<string>): TObjectList<TJSEcdModelRegistroI100>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI100;
end;

implementation

{ TJSEcdDAORegistroI100 }

procedure TJSEcdDAORegistroI100.CarregaCcus(ACodCcus: String;
  ListI100: TObjectList<TJSEcdModelRegistroI100>);
var
  FCodCCus: string;
  charArray: Array[0..0] of Char;
  ArrayCcus: TArray<string>;
begin
  charArray[0] := ',';
  ArrayCcus := ACodCcus.Split(charArray);
  for FCodCCus in ArrayCcus do
  begin
    ListI100.Add(TJSEcdModelRegistroI100.Create);
    ListI100.Last.dtAlt := StrToDate('01/08/2023');
    ListI100.Last.codCCus := FCodCCus;
    ListI100.Last.cCus := 'Descrição do centro de custo ' + FCodCCus;
  end;
end;

constructor TJSEcdDAORegistroI100.Create;
begin

end;

destructor TJSEcdDAORegistroI100.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI100.List(
  CodCcus: TList<string>): TObjectList<TJSEcdModelRegistroI100>;
var
  nMax : Integer;
  FCodCCusto: string;
  Lista : TStringList;
begin
  nMax := 30;
  Result := TObjectList<TJSEcdModelRegistroI100>.Create;
  Lista := TStringList.Create;
  try
    for FCodCCusto in CodCcus do
    begin
      Lista.Add(FCodCCusto.Trim);
      if Lista.Count >= nMax then
      begin
        CarregaCcus(Lista.CommaText, Result);
        Lista.Clear;
      end;
    end;

    if Lista.Count > 0 then
      CarregaCcus(lista.CommaText, Result);

  finally
    Lista.Clear;
    FreeAndNil(Lista);
  end;
end;

class function TJSEcdDAORegistroI100.New: IJSEcdDAOI100;
begin
  Result := Self.Create;
end;

end.

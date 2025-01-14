unit JSEcd.DAO.RegistroI355;

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
  TJSEcdDAORegistroI355 = class(TInterfacedObject, IJSEcdDAOI355)
  private
//    FCds: TClientDataSet;
  public
    function List: TObjectList<TJSEcdModelRegistroI355>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI355;
  end;

implementation

{ TJSEcdDAORegistroI355 }

constructor TJSEcdDAORegistroI355.Create;
begin

end;

destructor TJSEcdDAORegistroI355.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI355.List: TObjectList<TJSEcdModelRegistroI355>;
begin
  Result := TObjectList<TJSEcdModelRegistroI355>.Create;

  Result.Add(TJSEcdModelRegistroI355.Create);
  Result.Last.codCta := '31101001';
  Result.Last.codCcus := '110100101';
  Result.Last.vlCta := 67459117.72;
  Result.Last.indDc := 'C';

  Result.Add(TJSEcdModelRegistroI355.Create);
  Result.Last.codCta := '31101003';
  Result.Last.codCcus := '110100101';
  Result.Last.vlCta := 1761150.54;
  Result.Last.indDc := 'C';

  Result.Add(TJSEcdModelRegistroI355.Create);
  Result.Last.codCta := '31101003';
  Result.Last.codCcus := '110130101';
  Result.Last.vlCta := 3.00;
  Result.Last.indDc := 'C';

  Result.Add(TJSEcdModelRegistroI355.Create);
  Result.Last.codCta := '31101004';
  Result.Last.codCcus := '110110201';
  Result.Last.vlCta := 380.00;
  Result.Last.indDc := 'D';

  Result.Add(TJSEcdModelRegistroI355.Create);
  Result.Last.codCta := '31101005';
  Result.Last.codCcus := '110120101';
  Result.Last.vlCta := 8380870.04;
  Result.Last.indDc := 'C';
end;

class function TJSEcdDAORegistroI355.New: IJSEcdDAOI355;
begin
  Result := Self.Create;
end;

end.

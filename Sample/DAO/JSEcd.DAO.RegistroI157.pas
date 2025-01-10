unit JSEcd.DAO.RegistroI157;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI157 = class(TInterfacedObject, IJSEcdDAOI157)
  private
//    FCds: TClientDataSet;
  public
    function List(RegI150: TJSEcdModelRegistroI150; RegI155: TJSEcdModelRegistroI155): TObjectList<TJSEcdModelRegistroI157>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI157;
end;

implementation

{ TJSEcdDAORegistroI157 }

constructor TJSEcdDAORegistroI157.Create;
begin

end;

destructor TJSEcdDAORegistroI157.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI157.List(RegI150: TJSEcdModelRegistroI150;
  RegI155: TJSEcdModelRegistroI155): TObjectList<TJSEcdModelRegistroI157>;
begin
  Result := TObjectList<TJSEcdModelRegistroI157>.Create;

  if (RegI150.dtIni = StrToDate('01/08/2023')) and (RegI155.codCta = '11101001') then
  begin
    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004005';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 4230;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004045';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004057';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004058';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004059';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004060';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';

    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025005040';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 57871.86;
    Result.Last.indDcIni := 'D';
  end;

  if (RegI150.dtIni = StrToDate('01/08/2023')) and (RegI155.codCta = '11101002') then
  begin
    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004020';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
  end;

  if (RegI150.dtIni = StrToDate('01/08/2023')) and (RegI155.codCta = '11101007') then
  begin
    Result.Add(TJSEcdModelRegistroI157.Create);
    Result.Last.codCta := '000025004050';
    Result.Last.codCcus := '0205';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
  end;
end;

class function TJSEcdDAORegistroI157.New: IJSEcdDAOI157;
begin
  Result := Self.Create;
end;

end.

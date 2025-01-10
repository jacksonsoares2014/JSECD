unit JSEcd.DAO.RegistroI155;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI155 = class(TInterfacedObject, IJSEcdDAOI155)
  private
//    FCds: TClientDataSet;
  public
    function List(RegI150: TJSEcdModelRegistroI150): TObjectList<TJSEcdModelRegistroI155>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI155;
end;

implementation

{ TJSEcdDAORegistroI155 }

constructor TJSEcdDAORegistroI155.Create;
begin

end;

destructor TJSEcdDAORegistroI155.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI155.List(RegI150: TJSEcdModelRegistroI150): TObjectList<TJSEcdModelRegistroI155>;
begin
  Result := TObjectList<TJSEcdModelRegistroI155>.Create;

  if RegI150.dtIni = StrToDate('01/08/2023') then
  begin
    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101001';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 66401.86;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 1000.00;
    Result.Last.vlSldFin := 65401.86;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101002';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101007';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 400;
    Result.Last.indDcFin := 'D';
    Result.Add(TJSEcdModelRegistroI155.Create);

    Result.Last.codCta := '11101008';
    Result.Last.codCcus := '110110303';
    Result.Last.vlSldIni := 0;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 16651.30;
    Result.Last.vlCred := 75460.05;
    Result.Last.vlSldFin := 58808.75;
    Result.Last.indDcFin := 'C';
  end;

  if RegI150.dtIni = StrToDate('01/09/2023') then
  begin
    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101001';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 65401.86;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 64401.86;
    Result.Last.vlSldFin := 1000.00;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101002';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101005';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 0;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 300;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101007';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 400;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101008';
    Result.Last.codCcus := '110110303';
    Result.Last.vlSldIni := 58808.75;
    Result.Last.indDcIni := 'C';
    Result.Last.vlDeb := 123812.69;
    Result.Last.vlCred := 20117.33;
    Result.Last.vlSldFin := 44886.61;
    Result.Last.indDcFin := 'D';
  end;

  if RegI150.dtIni = StrToDate('01/10/2023') then
  begin
    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101002';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101005';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101007';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 400;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101008';
    Result.Last.codCcus := '110110303';
    Result.Last.vlSldIni := 44886.61;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 31102.37;
    Result.Last.vlCred := 12570.53;
    Result.Last.vlSldFin := 63418.45;
    Result.Last.indDcFin := 'D';
  end;

  if RegI150.dtIni = StrToDate('01/11/2023') then
  begin
    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101001';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 1000;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101002';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101005';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101007';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 400;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101008';
    Result.Last.codCcus := '110110303';
    Result.Last.vlSldIni := 63418.45;
    Result.Last.indDcIni := '';
    Result.Last.vlDeb := 55572.83;
    Result.Last.vlCred := 12546.06;
    Result.Last.vlSldFin := 106445.22;
    Result.Last.indDcFin := 'D';
  end;

  if RegI150.dtIni = StrToDate('01/12/2023') then
  begin
    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101001';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 1000;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 1000;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101002';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101005';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 300;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 300;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101007';
    Result.Last.codCcus := '';
    Result.Last.vlSldIni := 400;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 0;
    Result.Last.vlCred := 0;
    Result.Last.vlSldFin := 400;
    Result.Last.indDcFin := 'D';

    Result.Add(TJSEcdModelRegistroI155.Create);
    Result.Last.codCta := '11101008';
    Result.Last.codCcus := '110110303';
    Result.Last.vlSldIni := 106445.22;
    Result.Last.indDcIni := 'D';
    Result.Last.vlDeb := 50524.44;
    Result.Last.vlCred := 111763.80;
    Result.Last.vlSldFin := 45205.86;
    Result.Last.indDcFin := 'D';
  end;
end;

class function TJSEcdDAORegistroI155.New: IJSEcdDAOI155;
begin
  Result := Self.Create;
end;

end.

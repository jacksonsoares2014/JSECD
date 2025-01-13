unit JSEcd.DAO.RegistroI250;

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
  TJSEcdDAORegistroI250 = class(TInterfacedObject, IJSEcdDAOI250)
  private
//    FCds: TClientDataSet;
  public
    function List(RegI200: TJSEcdModelRegistroI200): TObjectList<TJSEcdModelRegistroI250>;

    constructor Create; reintroduce;
    destructor Destroy; override;
    class function New: IJSEcdDAOI250;
  end;

implementation

{ TJSEcdDAORegistroI250 }

constructor TJSEcdDAORegistroI250.Create;
begin

end;

destructor TJSEcdDAORegistroI250.Destroy;
begin

  inherited;
end;

function TJSEcdDAORegistroI250.List(
  RegI200: TJSEcdModelRegistroI200): TObjectList<TJSEcdModelRegistroI250>;
begin
  Result := TObjectList<TJSEcdModelRegistroI250>.Create;

  if RegI200.numLcto = '41319' then
  begin
    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '32299001';
    Result.Last.codCcus := '120100201';
    Result.Last.vlDc := 2508.44;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '178/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21101001';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 2508.44;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '178/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '32299002';
    Result.Last.codCcus := '120100201';
    Result.Last.vlDc := 40678.41;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '178/2';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21101001';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 40678.41;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '178/2';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '32299006';
    Result.Last.codCcus := '120100201';
    Result.Last.vlDc := 1871.63;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '178/3';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21101001';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 1871.63;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '178/3';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '32299005';
    Result.Last.codCcus := '120100201';
    Result.Last.vlDc := 247.27;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '178/4';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21101001';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 247.27;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '178/4';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'LANC. DOC. 062023/REC C E C CASAECONSTRUCAO LTDA VENCIMENTO: 03/08/2023';
    Result.Last.codPart := '';
  end;

  if RegI200.numLcto = '42529' then
  begin
    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11201007';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 5826.75;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '1023/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BAIXA POR MڔUO';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11201999';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 5826.75;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '1023/2';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BAIXA POR MڔUO';
    Result.Last.codPart := '';
  end;

  if RegI200.numLcto = '42553' then
  begin
    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11102002';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 15736.81;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '25/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21503999';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 15736.81;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '25/2';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29 Ref. RecebimentoDoc. 641982 0 RCA OPERADORA TURISTICALTDA Mutuo da Empresa 3 - RCA OPERADORATURISTICA LTDA';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11102002';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 12092.67;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '25/3';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21503999';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 12092.67;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '25/4';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29 Ref. RecebimentoDoc. 641980 0 BESTBUYHOTEL VIAGENS ETURISMO LTDA Mutuo da Empresa 3 -BESTBUYHOTEL VIAGENS E TURISMO LTDA';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11102002';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 8535.8;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '25/5';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '21503999';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 8535.8;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '25/6';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'BOLETO BANCARIO Nº 29 Ref. RecebimentoDoc. 641986 0 LH - LANCE HOTEIS LTDAMutuo da Empresa 3 - LH - LANCE HOTEISLTDA';
    Result.Last.codPart := '';
  end;

  if RegI200.numLcto = '42601' then
  begin
    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11202003';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 1349.77;
    Result.Last.indDc := 'D';
    Result.Last.numArq := '1090/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'CONTESTACAO MASTER DOC. 132625439 053REDECARD ELO CREDITO - PARCELADO 7 A 10X CONTESTAǃO NSU 379152307650485******5818';
    Result.Last.codPart := '';

    Result.Add(TJSEcdModelRegistroI250.Create);
    Result.Last.codCta := '11201001';
    Result.Last.codCcus := '';
    Result.Last.vlDc := 1349.77;
    Result.Last.indDc := 'C';
    Result.Last.numArq := '1090/1';
    Result.Last.codHistPad := '';
    Result.Last.Hist := 'CONTESTACAO MASTER DOC. 132625439 053REDECARD ELO CREDITO - PARCELADO 7 A 10X CONTESTAǃO NSU 379152307650485******5818';
    Result.Last.codPart := '';
  end;

end;

class function TJSEcdDAORegistroI250.New: IJSEcdDAOI250;
begin
  Result := Self.Create;
end;

end.

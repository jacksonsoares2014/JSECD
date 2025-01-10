unit JSEcd.Service.BlocoI.Parte2;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.Generics.Collections,
  System.Generics.Defaults,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte2 = class(TInterfacedObject, IJSEcdServiceBlocoIParte2)
  private
    [Weak]
    FEcdService: IJSEcdService;

    [Weak]
    FBlocoIParte1: IJSEcdServiceBlocoIParte1;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FCodCcus: TList<string>;

    function MontaLinhaEcd(ARegistro: TJSEcdModelRegistro): string;
    procedure AdicionaLinhaEcd(ALista: TStringList); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro; ALista: TStringList); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro); overload;
    procedure GerarI100(AListI100: TStringList);
    procedure GerarI150(AListI150: TStringList);
    procedure GerarI155(RegI150: TJSEcdModelRegistroI150; AListI150: TStringList);
    procedure GerarI157(RegI150: TJSEcdModelRegistroI150; RegI155: TJSEcdModelRegistroI155; AListI150: TStringList);

  public
    function ServiceBlocoIParte1(Value: IJSEcdServiceBlocoIParte1): IJSEcdServiceBlocoIParte2;
    function AddCodCcus(Value: String): IJSEcdServiceBlocoIParte2;
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte2;
  end;

implementation

{ TJSEcdServiceBlocoIParte2 }

function TJSEcdServiceBlocoIParte2.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

function TJSEcdServiceBlocoIParte2.AddCodCcus(
  Value: String): IJSEcdServiceBlocoIParte2;
begin
  Result := Self;
  if not Assigned(FCodCcus) then
    FCodCcus := TList<string>.Create;

  if not Value.IsEmpty and not FCodCcus.Contains(Value) then
    FCodCcus.Add(Value);
end;

procedure TJSEcdServiceBlocoIParte2.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  FArquivo.Add(MontaLinhaEcd(ARegistro));
end;

procedure TJSEcdServiceBlocoIParte2.AdicionaLinhaEcd(ALista: TStringList);
var
  I: Integer;
begin
  for I := 0 to Pred(ALista.Count) do
    FArquivo.Add(ALista.Strings[I]);
end;

procedure TJSEcdServiceBlocoIParte2.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro; ALista: TStringList);
begin
  ALista.Add(MontaLinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte2.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte2.Destroy;
begin
  FCodCcus.Free;
  inherited;
end;

function TJSEcdServiceBlocoIParte2.Execute: TStringList;
var
  ListI100: TStringList;
  ListI150: TStringList;
begin
  ListI100 := TStringList.Create;
  ListI150 := TStringList.Create;
  try
    try
      GerarI150(ListI150);
      GerarI100(ListI100);

      AdicionaLinhaEcd(ListI100);
      AdicionaLinhaEcd(ListI150);
      Result := FArquivo;
    except
      on e: Exception Do
      begin
        FArquivo.Free;
//        OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
        Raise;
      end;
    end;
  finally
    ListI100.Free;
    ListI150.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte2.GerarI100(AListI100: TStringList);
var
  RegI100: TJSEcdModelRegistroI100;
  DAO: IJSEcdDAOI100;
  FListRegI100: TObjectList<TJSEcdModelRegistroI100>;
  Comparer: IComparer<TJSEcdModelRegistroI100>;
begin
  DAO := FEcdService.DAO.BlocoIParte2.DAOI100;
  if not Assigned(DAO) or not Assigned(FCodCcus) then
    Exit;

  FListRegI100 := DAO.List(FCodCcus);
  Comparer := TJSEcdModelRegistroI100.getComparer;
  FListRegI100.Sort(Comparer);

  try
    for RegI100 in FListRegI100 do
    begin
      AdicionaLinhaEcd(RegI100, AListI100);
    end;

  finally
    FListRegI100.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte2.GerarI150(AListI150: TStringList);
var
  RegI150: TJSEcdModelRegistroI150;
  DAO: IJSEcdDAOI150;
  FListRegI150: TObjectList<TJSEcdModelRegistroI150>;
begin
  DAO := FEcdService.DAO.BlocoIParte2.DAOI150;
  if not Assigned(DAO) then
    Exit;

  FListRegI150 := DAO.List;
  try
    for RegI150 in FListRegI150 do
    begin
      AdicionaLinhaEcd(RegI150, AListI150);
      GerarI155(RegI150, AListI150);
    end;

  finally
    FListRegI150.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte2.GerarI155(RegI150: TJSEcdModelRegistroI150;
  AListI150: TStringList);
var
  RegI155: TJSEcdModelRegistroI155;
  DAO: IJSEcdDAOI155;
  FListRegI155: TObjectList<TJSEcdModelRegistroI155>;
begin
  DAO := FEcdService.DAO.BlocoIParte2.DAOI155;
  if not Assigned(DAO) then
    Exit;

  FListRegI155 := DAO.List(RegI150) ;
  try
    for RegI155 in FListRegI155 do
    begin
      AdicionaLinhaEcd(RegI155, AListI150);
      AddCodCcus(RegI155.codCcus);
      //TODO: Veificar se o I050 é pra ter todo o plano de contas
      //ou se é pra ter somente as contas usadas?
      //FBlocoIParte1.AddCta(RegI155.codCta);
      GerarI157(RegI150, RegI155, AListI150);
    end;

  finally
    FListRegI155.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte2.GerarI157(RegI150: TJSEcdModelRegistroI150;
  RegI155: TJSEcdModelRegistroI155;
  AListI150: TStringList);
var
  RegI157: TJSEcdModelRegistroI157;
  DAO: IJSEcdDAOI157;
  FListRegI157: TObjectList<TJSEcdModelRegistroI157>;
begin
  DAO := FEcdService.DAO.BlocoIParte2.DAOI157;
  if not Assigned(DAO) then
    Exit;

  FListRegI157 := DAO.List(RegI150, RegI155);
  try
    for RegI157 in FListRegI157 do
    begin
      AdicionaLinhaEcd(RegI157, AListI150);
      //TODO: Veificar se o centro de custo e conta contábil são pra ter no I100 e I050.
      //FBlocoIParte1.AddCta(RegI157.codCta);
      //AddCodCcus(RegI157.codCcus);
    end;

  finally
    FListRegI157.Free;
  end;
end;

function TJSEcdServiceBlocoIParte2.MontaLinhaEcd(
  ARegistro: TJSEcdModelRegistro): string;
begin
  Counter.AddCounter(ARegistro);
  Result := FacadeExport.LinhaEcd(ARegistro);
end;

class function TJSEcdServiceBlocoIParte2.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte2;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoIParte2.ServiceBlocoIParte1(
  Value: IJSEcdServiceBlocoIParte1): IJSEcdServiceBlocoIParte2;
begin
  Result := Self;
  FBlocoIParte1 := Value;
end;

end.

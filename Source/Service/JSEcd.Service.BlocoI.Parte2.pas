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

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FCodCcus: TList<string>;

    function MontaLinhaEcd(ARegistro: TJSEcdModelRegistro): string;
    procedure AdicionaLinhaEcd(ALista: TStringList); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro; ALista: TStringList); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro); overload;
    procedure GerarI100(AListI100: TStringList);
  public
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
begin
  ListI100 := TStringList.Create;
  try
    try
      GerarI100(ListI100);
      AdicionaLinhaEcd(ListI100);
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

end.

unit JSEcd.Service.BlocoI.Parte3;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Generics.Collections,
  System.Generics.Defaults,
  System.DateUtils,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte3 = class(TInterfacedObject, IJSEcdServiceBlocoIParte3)
  private
    [Weak]
    FEcdService: IJSEcdService;

    [Weak]
    FBlocoIParte2: IJSEcdServiceBlocoIParte2;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FDataInicial, FDataFinal: TDateTime;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure GerarI200;
    procedure GerarI250(RegI200: TJSEcdModelRegistroI200);
  public
    function ServiceBlocoIParte2(Value: IJSEcdServiceBlocoIParte2): IJSEcdServiceBlocoIParte3;
    function Execute(Periodo: TJSEcdIndPeriodo): TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
  end;

implementation

{ TJSEcdServiceBlocoIParte3 }

function TJSEcdServiceBlocoIParte3.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte3.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte3.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte3.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte3.Execute(Periodo: TJSEcdIndPeriodo): TStringList;
begin
  try
    case Periodo of
      ipPrimeiroTrimestre:
        begin
          FDataInicial := EncodeDate(Yearof(FEcdService.Config.DataInicial), 1, 1);
          FDataFinal := EncodeDate(Yearof(FEcdService.Config.DataInicial), 3, 31);
        end;

      ipSegundoTrimestre:
        begin
          FDataInicial := EncodeDate(Yearof(FEcdService.Config.DataInicial), 4, 1);
          FDataFinal := EncodeDate(Yearof(FEcdService.Config.DataInicial), 6, 30);
        end;

      ipTerceiroTrimestre:
        begin
          FDataInicial := EncodeDate(Yearof(FEcdService.Config.DataInicial), 7, 1);
          FDataFinal := EncodeDate(Yearof(FEcdService.Config.DataInicial), 9, 30);
        end;

      ipQuartoTrimestre:
        begin
          FDataInicial := EncodeDate(Yearof(FEcdService.Config.DataInicial), 10, 1);
          FDataFinal := EncodeDate(Yearof(FEcdService.Config.DataInicial), 12, 31);
        end;
    end;

    GerarI200;

    Result := FArquivo;
  except
    on e: Exception do
    begin
      FreeAndNil(FArquivo);
//      OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
      Raise;
    end;
  end;
end;

procedure TJSEcdServiceBlocoIParte3.GerarI200;
var
  RegI200: TJSEcdModelRegistroI200;
  DAO: IJSEcdDAOI200;
  FListRegI200: TObjectList<TJSEcdModelRegistroI200>;
begin
  DAO := FEcdService.DAO.BlocoIParte3.DAOI200;
  if not Assigned(DAO) then
    Exit;

  FListRegI200 := DAO.List(FDataInicial, FDataFinal);
  try
    for RegI200 in FListRegI200 do
    begin
      AdicionaLinhaEcd(RegI200);
      GerarI250(RegI200);
    end;

  finally
    FListRegI200.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte3.GerarI250(RegI200: TJSEcdModelRegistroI200);
var
  RegI250: TJSEcdModelRegistroI250;
  DAO: IJSEcdDAOI250;
  FListRegI250: TObjectList<TJSEcdModelRegistroI250>;
begin
  DAO := FEcdService.DAO.BlocoIParte3.DAOI250;
  if not Assigned(DAO) then
    Exit;

  FListRegI250 := DAO.List(RegI200);
  try
    for RegI250 in FListRegI250 do
    begin
      AdicionaLinhaEcd(RegI250);
      FBlocoIParte2.AddCodCcus(RegI250.codCcus);
    end;

  finally
    FListRegI250.Free;
  end;
end;

class function TJSEcdServiceBlocoIParte3.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoIParte3.ServiceBlocoIParte2(
  Value: IJSEcdServiceBlocoIParte2): IJSEcdServiceBlocoIParte3;
begin
  result  := Self;
  FBlocoIParte2 := Value;
end;

end.

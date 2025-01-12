unit JSEcd.Service.BlocoI.Parte3;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Model.Types,
  System.DateUtils,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte3 = class(TInterfacedObject, IJSEcdServiceBlocoIParte3)
  private
    [Weak]
    FEcdService: IJSEcdService;

    [Weak]
    FBloco0: IJSEcdServiceBloco0;

    FArquivo: TStringList;
    FDataInicial, FDataFinal: TDateTime;
  public
    function ServiceBloco0(Value: IJSEcdServiceBloco0): IJSEcdServiceBlocoIParte3;
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

constructor TJSEcdServiceBlocoIParte3.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
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

class function TJSEcdServiceBlocoIParte3.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoIParte3.ServiceBloco0(
  Value: IJSEcdServiceBloco0): IJSEcdServiceBlocoIParte3;
begin
  result  := Self;
  FBloco0 := Value;
end;

end.

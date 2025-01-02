unit JSEcd.Service.Base;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Config,
  JSEcd.Service.Collection,
  System.Classes,
  System.SysUtils;

type
  TJSEcdService = class(TInterfacedObject, IJSEcdService)
  private
    //FBloco0: IJSEcdServiceBloco0;
    FConfig: IJSEcdServiceConfig<IJSEcdService>;
    FJSDAOCollection: IJSEcdDAOCollection;
  public
    function Config: IJSEcdServiceConfig<IJSEcdService>;
    function DAO: IJSEcdDAOCollection;
    function Execute: IJSEcdService;

    constructor Create;
    destructor Destroy; override;
    class function New: IJSEcdService;
  end;

implementation

{ TJSEcdService }

function TJSEcdService.Config: IJSEcdServiceConfig<IJSEcdService>;
begin
  if not Assigned(FConfig) then
    FConfig := TJSEcdServiceConfig<IJSEcdService>.New(Self);
  result := FConfig;
end;

constructor TJSEcdService.Create;
begin
  //FBloco0 := TJSEcdServiceBloco0.New(Self);
end;

function TJSEcdService.DAO: IJSEcdDAOCollection;
begin
  if not Assigned(FJSDAOCollection) then
    FJSDAOCollection := TJSEcdServiceDAOCollection.New(Self);
  result := FJSDAOCollection;
end;

destructor TJSEcdService.Destroy;
begin

  inherited;
end;

function TJSEcdService.Execute: IJSEcdService;
var
  bloco0: TStringList;
begin
  Result := Self;
  FConfig.NomeChave := FloatToStr(FConfig.Empresa) + FormatDateTime('DDMMYYYY',Date) + FormatDateTime('HHMMSS',Time);

  bloco0 := nil;
  try

  finally
    bloco0.Free;
  end;

//  FConfig.NomeArquivoParte1 := Format('%s\%s.Parte1.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoParte2 := Format('%s\%s.Parte2.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoParte3 := Format('%s\%s.Parte3.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoParte4 := Format('%s\%s.Parte4.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoI200_1Tri := Format('%s\%s.I200_1Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoI200_2Tri := Format('%s\%s.I200_2Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoI200_3Tri := Format('%s\%s.I200_3Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
//  FConfig.NomeArquivoI200_4Tri := Format('%s\%s.I200_4Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]);
end;

class function TJSEcdService.New: IJSEcdService;
begin
  Result := Self.Create;
end;

end.

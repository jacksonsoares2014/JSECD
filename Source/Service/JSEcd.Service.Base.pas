unit JSEcd.Service.Base;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Config,
  JSEcd.Service.DAO.Collection,
  JSEcd.Service.Counter,
  System.Classes,
  System.SysUtils;

type
  TJSEcdService = class(TInterfacedObject, IJSEcdService)
  private
    FBloco0: IJSEcdServiceBloco0;
    FBloco9: IJSEcdServiceBloco9;
    FConfig: IJSEcdServiceConfig<IJSEcdService>;
    FJSDAOCollection: IJSEcdServiceDAOCollection;
    FArquivoEcd: TFileStream;

    procedure NomeiaArquivos;
    procedure MergeArquivos; overload;
    procedure MergeArquivos(Arquivo: string); overload;

    procedure GerarBlocoIParte1;
  public
    function Config: IJSEcdServiceConfig<IJSEcdService>;
    function DAO: IJSEcdServiceDAOCollection;
    function Execute: IJSEcdService;

    constructor Create;
    destructor Destroy; override;
    class function New: IJSEcdService;
  end;

implementation

uses
  JSEcd.Service.Bloco0,
  JSEcd.Service.BlocoI.Parte1,
  JSEcd.Service.BlocoI.Parte2,
  JSEcd.Service.BlocoI.Parte3,
  JSEcd.Service.BlocoI.Parte4,
  JSEcd.Service.BlocoI.Parte5,
  JSEcd.Service.BlocoJ,
  JSEcd.Service.BlocoK,
  JSEcd.Service.Bloco9;

{ TJSEcdService }

function TJSEcdService.Config: IJSEcdServiceConfig<IJSEcdService>;
begin
  if not Assigned(FConfig) then
    FConfig := TJSEcdServiceConfig<IJSEcdService>.New(Self);
  Result := FConfig;
end;

constructor TJSEcdService.Create;
begin
  FBloco0 := TJSEcdServiceBloco0.New(Self);
  FBloco9 := TJSEcdServiceBloco9.New(Self);
end;

function TJSEcdService.DAO: IJSEcdServiceDAOCollection;
begin
  if not Assigned(FJSDAOCollection) then
    FJSDAOCollection := TJSEcdServiceDAOCollection.New(Self);
  Result := FJSDAOCollection;
end;

destructor TJSEcdService.Destroy;
begin

  inherited;
end;

function TJSEcdService.Execute: IJSEcdService;
begin
  Result := Self;
  NomeiaArquivos;

  FArquivoEcd := TFileStream.Create(FConfig.NomeArquivo, fmCreate or fmShareExclusive) ;
  try
    GerarBlocoIParte1;

    FBloco0.Execute;
    FBloco9.Execute;
    MergeArquivos;
  finally
    FreeAndNil(FArquivoEcd);
    Counter.ClearCounter;
  end;
end;

procedure TJSEcdService.GerarBlocoIParte1;
var
  BlocoIParte1: IJSEcdServiceBlocoIParte1;
begin
  BlocoIParte1 := TJSEcdServiceBlocoIParte1.New(Self);
//  BlocoIParte1
//    .ServiceBloco0(FBloco0);

  BlocoIParte1.Execute;
end;

procedure TJSEcdService.MergeArquivos;
begin
  MergeArquivos(FConfig.NomeArquivoBloco0);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte1);
  MergeArquivos(FConfig.NomeArquivoBloco9);
end;

procedure TJSEcdService.MergeArquivos(Arquivo: string);
var
   FParteArquivo: TFileStream;
   wideChars: array[0..11] of WideChar;
begin
   try
     FParteArquivo := TFileStream.Create(Arquivo, fmOpenRead or fmShareDenyWrite) ;
     try
        FArquivoEcd.CopyFrom(FParteArquivo, 0) ;
     finally
        FreeandNil(FParteArquivo);
     end;

     if FileExists(Arquivo) then
       DeleteFile(Arquivo);
   except
      on E: Exception do
        //Raise
   end;
end;

class function TJSEcdService.New: IJSEcdService;
begin
  Result := Self.Create;
end;

procedure TJSEcdService.NomeiaArquivos;
begin
  FConfig.NomeChave(FloatToStr(FConfig.Empresa) + FormatDateTime('DDMMYYYY',Date) + FormatDateTime('HHMMSS',Time));
  FConfig.NomeArquivoBloco0(Format('%s\%s.Bloco0.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte1(Format('%s\%s.BlocoI.Parte1.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte2(Format('%s\%s.BlocoI.Parte2.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte3_1Tri(Format('%s\%s.BlocoI.Parte3.1Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte3_2Tri(Format('%s\%s.BlocoI.Parte3.2Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte3_3Tri(Format('%s\%s.BlocoI.Parte3.3Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte3_4Tri(Format('%s\%s.BlocoI.Parte3.4Tri.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoK(Format('%s\%s.BlocoK.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBloco9(Format('%s\%s.Bloco9.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
end;

end.

unit JSEcd.Service.Base;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Config,
  JSEcd.Service.DAO.Collection,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Classes,
  System.SysUtils;

type
  TJSEcdService = class(TInterfacedObject, IJSEcdService)
  private
    FBloco0: IJSEcdServiceBloco0;
    FBlocoIParte1: IJSEcdServiceBlocoIParte1;
    FBlocoIParte2: IJSEcdServiceBlocoIParte2;
    FBlocoIParte3: IJSEcdServiceBlocoIParte3;
    FBlocoIParte4: IJSEcdServiceBlocoIParte4;
    FBlocoIParte5: IJSEcdServiceBlocoIParte5;
    FBloco9: IJSEcdServiceBloco9;

    FConfig: IJSEcdServiceConfig<IJSEcdService>;
    FJSDAOCollection: IJSEcdServiceDAOCollection;
    FacadeExport: IJSEcdExportFacade;
    FArquivoEcd: TFileStream;

    FI001: TJSEcdModelRegistroI001;
    FI990: TJSEcdModelRegistroI990;

    procedure NomeiaArquivos;
    procedure MergeArquivos; overload;
    procedure MergeArquivos(Arquivo: string); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);

    procedure GerarBlocoI;
    procedure GerarBlocoIParte1;
    procedure GerarBlocoIParte2;
    procedure GerarBlocoIParte3;
    procedure GerarBlocoIParte4;
    procedure GerarBlocoIParte5;
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

procedure TJSEcdService.AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
var
  LLinha: TStringList;
  LStream: TMemoryStream;
begin
  LLinha := TStringList.Create;
  LStream := TMemoryStream.Create;
  try
    LLinha.Add(FacadeExport.LinhaEcd(ARegistro));
    LLinha.SaveToStream(LStream);
    FArquivoEcd.CopyFrom(LStream, 0);
  finally
    FreeAndNil(LLinha);
    FreeAndNil(LStream);
  end;
end;

function TJSEcdService.Config: IJSEcdServiceConfig<IJSEcdService>;
begin
  if not Assigned(FConfig) then
    FConfig := TJSEcdServiceConfig<IJSEcdService>.New(Self);
  Result := FConfig;
end;

constructor TJSEcdService.Create;
begin
  FBloco0 := TJSEcdServiceBloco0.New(Self);
  FBlocoIParte1 := TJSEcdServiceBlocoIParte1.New(Self);
  FBlocoIParte2 := TJSEcdServiceBlocoIParte2.New(Self);
  FBlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
  FBlocoIParte4 := TJSEcdServiceBlocoIParte4.New(Self);
  FBlocoIParte5 := TJSEcdServiceBlocoIParte5.New(Self);
  FBloco9 := TJSEcdServiceBloco9.New(Self);
  FI001 := TJSEcdModelRegistroI001.create;
  FI990 := TJSEcdModelRegistroI990.create;;
end;

function TJSEcdService.DAO: IJSEcdServiceDAOCollection;
begin
  if not Assigned(FJSDAOCollection) then
    FJSDAOCollection := TJSEcdServiceDAOCollection.New(Self);
  Result := FJSDAOCollection;
end;

destructor TJSEcdService.Destroy;
begin
  FreeAndNil(FI001);
  FreeAndNil(FI990);
  inherited;
end;

function TJSEcdService.Execute: IJSEcdService;
begin
  Result := Self;
  FacadeExport := JSEcd.Export.Interfaces.FacadeExport(FConfig);
  NomeiaArquivos;

  FArquivoEcd := TFileStream.Create(FConfig.NomeArquivo, fmCreate or fmShareExclusive) ;
  try
    GerarBlocoI;

    FBloco0.Execute;
    FBloco9.Execute;
    MergeArquivos;
  finally
    FreeAndNil(FArquivoEcd);
    Counter.ClearCounter;
  end;
end;

procedure TJSEcdService.GerarBlocoI;
var
  registros: TArray<String>;
  reg: string;
  I: Integer;
begin
  GerarBlocoIParte1;
  GerarBlocoIParte2;
  GerarBlocoIParte3;
  GerarBlocoIParte4;
  GerarBlocoIParte5;

  if not Counter.IsEmpty then
  begin
    registros := Counter.GetCounter.Keys.ToArray;
    for I := 0 to Pred(Length(registros)) do
    begin
      reg := registros[i];
      if Copy(Reg, 1, 1) = 'I' then
        FI990.qtdLinI := FI990.qtdLinI + 1;
    end;
  end;

  if FI990.qtdLinI > 0 then
    FI001.indDad := imComDadosInformados;

  FI990.qtdLinI := FI990.qtdLinI + 2;
  Counter.AddCounter(FI001);
  Counter.AddCounter(FI990);
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

procedure TJSEcdService.GerarBlocoIParte2;
var
  BlocoIParte2: IJSEcdServiceBlocoIParte2;
begin
  BlocoIParte2 := TJSEcdServiceBlocoIParte2.New(Self);
//  BlocoIParte2
//    .ServiceBloco0(FBloco0);

  BlocoIParte2.Execute;
end;

procedure TJSEcdService.GerarBlocoIParte3;
var
  BlocoIParte3: IJSEcdServiceBlocoIParte3;
begin
//TODO: Dividir por Trimestre
//  BlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
//  BlocoIParte3
//    .ServiceBloco0(FBloco0);

//  BlocoIParte3.Execute;
end;

procedure TJSEcdService.GerarBlocoIParte4;
var
  BlocoIParte4: IJSEcdServiceBlocoIParte4;
begin
  BlocoIParte4 := TJSEcdServiceBlocoIParte4.New(Self);
//  BlocoIParte4
//    .ServiceBloco0(FBloco0);

  BlocoIParte4.Execute;
end;

procedure TJSEcdService.GerarBlocoIParte5;
var
  BlocoIParte5: IJSEcdServiceBlocoIParte5;
begin
  BlocoIParte5 := TJSEcdServiceBlocoIParte5.New(Self);
//  BlocoIParte5
//    .ServiceBloco0(FBloco0);

  BlocoIParte5.Execute;
end;

procedure TJSEcdService.MergeArquivos;
begin
  MergeArquivos(FConfig.NomeArquivoBloco0);
  AdicionaLinhaEcd(FI001);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte1);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte2);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte4);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte5);
  AdicionaLinhaEcd(FI990);
  MergeArquivos(FConfig.NomeArquivoBloco9);
end;

procedure TJSEcdService.MergeArquivos(Arquivo: string);
var
   FParteArquivo: TFileStream;
   wideChars: array[0..11] of WideChar;
begin
  if not FileExists(Arquivo) then
    Exit;

  try
    FParteArquivo := TFileStream.Create(Arquivo, fmOpenRead or fmShareDenyWrite) ;
    try
      FArquivoEcd.CopyFrom(FParteArquivo, 0) ;
    finally
      FreeandNil(FParteArquivo);
    end;
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
  FConfig.NomeArquivoBlocoIParte4(Format('%s\%s.BlocoI.Parte4.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoIParte5(Format('%s\%s.BlocoI.Parte5.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoK(Format('%s\%s.BlocoK.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBloco9(Format('%s\%s.Bloco9.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
end;

end.

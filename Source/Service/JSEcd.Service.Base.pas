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
  System.SysUtils,
  System.Threading;

type
  TJSEcdService = class(TInterfacedObject, IJSEcdService)
  private
    FBloco0: IJSEcdServiceBloco0;
    FBlocoIParte1: IJSEcdServiceBlocoIParte1;
    FBlocoIParte2: IJSEcdServiceBlocoIParte2;
    FBlocoJ: IJSEcdServiceBlocoJ;
    FBloco9: IJSEcdServiceBloco9;

    FConfig: IJSEcdServiceConfig<IJSEcdService>;
    FJSDAOCollection: IJSEcdServiceDAOCollection;
    FacadeExport: IJSEcdExportFacade;
    FArquivoEcd: TFileStream;

    FI001: TJSEcdModelRegistroI001;
    FI990: TJSEcdModelRegistroI990;

    FListBlocoIParte1: TStringList;
    FListBlocoJ: TStringList;

    procedure NomeiaArquivos;
    procedure MergeArquivos; overload;
    procedure MergeArquivos(Arquivo: string); overload;
    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure SaveToFile(AArquivo: TStringList; ANomeArquivo: String);
    procedure TotalizaLivro;

    procedure GerarBlocoI;
    procedure GerarBlocoIParte1;
    procedure GerarBlocoIParte2;
    procedure GerarBlocoIParte3;
    procedure GerarBlocoIParte3_1Tri;
    procedure GerarBlocoIParte3_2Tri;
    procedure GerarBlocoIParte3_3Tri;
    procedure GerarBlocoIParte3_4Tri;
    procedure GerarBlocoIParte4;
    procedure GerarBlocoIParte5;
    procedure GerarBlocoJ;
    procedure GerarBloco0;
    procedure GerarBloco9;
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
  FBlocoJ := TJSEcdServiceBlocoJ.New(Self);
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
    GerarBlocoJ;
    GerarBloco0;
    GerarBloco9;
    TotalizaLivro;
    SaveToFile(FListBlocoIParte1, FConfig.NomeArquivoBlocoIParte1);
    SaveToFile(FListBlocoJ, FConfig.NomeArquivoBlocoJ);
    MergeArquivos;
  finally
    FreeAndNil(FListBlocoIParte1);
    FreeAndNil(FListBlocoJ);
    FreeAndNil(FArquivoEcd);
    Counter.ClearCounter;
  end;
end;

procedure TJSEcdService.GerarBloco0;
var
  FListBloco0: TStringList;
begin
  try
    FListBloco0 := FBloco0.Execute;
    SaveToFile(FListBloco0, FConfig.NomeArquivoBloco0);
  finally
    FreeAndNil(FListBloco0);
  end;
end;

procedure TJSEcdService.GerarBloco9;
var
  FListBloco9: TStringList;
begin
  FBloco9 := TJSEcdServiceBloco9.New(Self);
  try
    FListBloco9 := FBloco9.Execute;
    SaveToFile(FListBloco9, FConfig.NomeArquivoBloco9);
  finally
    FreeAndNil(FListBloco9);
  end;
end;

procedure TJSEcdService.GerarBlocoI;
var
  registros: TArray<String>;
  reg: string;
  I: Integer;
begin
  GerarBlocoIParte1;
  GerarBlocoIParte3;
  GerarBlocoIParte4;
  GerarBlocoIParte5;
  GerarBlocoIParte2;

  if not Counter.IsEmpty then
  begin
    registros := Counter.GetCounter.Keys.ToArray;
    for I := 0 to Pred(Length(registros)) do
    begin
      reg := registros[I];
      if Copy(Reg, 1, 1) = 'I' then
        FI990.qtdLinI := FI990.qtdLinI + Counter.GetCounter.Items[Reg];
    end;
  end;

  if FI990.qtdLinI > 0 then
    FI001.indDad := imComDadosInformados;

  FI990.qtdLinI := FI990.qtdLinI + 2;
  Counter.AddCounter(FI001);
  Counter.AddCounter(FI990);
end;

procedure TJSEcdService.GerarBlocoIParte1;
begin
  FBlocoIParte1
    .ServiceBlocoIParte2(FBlocoIParte2);

  FListBlocoIParte1 := FBlocoIParte1.Execute;
end;

procedure TJSEcdService.GerarBlocoIParte2;
var
  FListBlocoIParte2: TStringList;
begin
  try
    FListBlocoIParte2 := FBlocoIParte2.Execute;
    SaveToFile(FListBlocoIParte2, FConfig.NomeArquivoBlocoIParte2);
  finally
    FreeAndNil(FListBlocoIParte2);
  end;
end;

procedure TJSEcdService.GerarBlocoIParte3;
var
  Tasks: array[0..3] of ITask;
begin
  Tasks[0] := TTask.Create(GerarBlocoIParte3_1Tri);
  Tasks[0].Start;

  Tasks[1] := TTask.Create(GerarBlocoIParte3_2Tri);
  Tasks[1].Start;

  Tasks[2] := TTask.Create(GerarBlocoIParte3_3Tri);
  Tasks[2].Start;

  Tasks[3] := TTask.Create(GerarBlocoIParte3_4Tri);
  Tasks[3].Start;

  TTask.WaitForAll(Tasks);
end;

procedure TJSEcdService.GerarBlocoIParte3_1Tri;
var
  FListBlocoIParte3: TStringList;
  BlocoIParte3: IJSEcdServiceBlocoIParte3;
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      try
        BlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
        BlocoIParte3
          .ServiceBlocoIParte2(FBlocoIParte2);

        FListBlocoIParte3 := BlocoIParte3.Execute(ipPrimeiroTrimestre);
        SaveToFile(FListBlocoIParte3, FConfig.NomeArquivoBlocoIParte3_1Tri);
      finally
        FreeAndNil(FListBlocoIParte3);
      end;
    end);
end;

procedure TJSEcdService.GerarBlocoIParte3_2Tri;
var
  FListBlocoIParte3: TStringList;
  BlocoIParte3: IJSEcdServiceBlocoIParte3;
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      try
        BlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
        BlocoIParte3
          .ServiceBlocoIParte2(FBlocoIParte2);

        FListBlocoIParte3 := BlocoIParte3.Execute(ipSegundoTrimestre);
        SaveToFile(FListBlocoIParte3, FConfig.NomeArquivoBlocoIParte3_2Tri);
      finally
        FreeAndNil(FListBlocoIParte3);
      end;
    end);
end;

procedure TJSEcdService.GerarBlocoIParte3_3Tri;
var
  FListBlocoIParte3: TStringList;
  BlocoIParte3: IJSEcdServiceBlocoIParte3;
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      try
        BlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
        BlocoIParte3
          .ServiceBlocoIParte2(FBlocoIParte2);

        FListBlocoIParte3 := BlocoIParte3.Execute(ipTerceiroTrimestre);
        SaveToFile(FListBlocoIParte3, FConfig.NomeArquivoBlocoIParte3_3Tri);
      finally
        FreeAndNil(FListBlocoIParte3);
      end;
    end);
end;

procedure TJSEcdService.GerarBlocoIParte3_4Tri;
var
  FListBlocoIParte3: TStringList;
  BlocoIParte3: IJSEcdServiceBlocoIParte3;
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      try
        BlocoIParte3 := TJSEcdServiceBlocoIParte3.New(Self);
        BlocoIParte3
          .ServiceBlocoIParte2(FBlocoIParte2);

        FListBlocoIParte3 := BlocoIParte3.Execute(ipQuartoTrimestre);
        SaveToFile(FListBlocoIParte3, FConfig.NomeArquivoBlocoIParte3_4Tri);
      finally
        FreeAndNil(FListBlocoIParte3);
      end;
    end);
end;

procedure TJSEcdService.GerarBlocoIParte4;
var
  BlocoIParte4: IJSEcdServiceBlocoIParte4;
  FListBlocoIParte4: TStringList;
begin
  try
    BlocoIParte4 := TJSEcdServiceBlocoIParte4.New(Self);
    BlocoIParte4
      .ServiceBlocoIParte2(FBlocoIParte2);

    FListBlocoIParte4 := BlocoIParte4.Execute;
    SaveToFile(FListBlocoIParte4, FConfig.NomeArquivoBlocoIParte4);
  finally
    FreeAndNil(FListBlocoIParte4);
  end;
end;

procedure TJSEcdService.GerarBlocoIParte5;
var
  BlocoIParte5: IJSEcdServiceBlocoIParte5;
  FListBlocoIParte5: TStringList;
begin
  try
    BlocoIParte5 := TJSEcdServiceBlocoIParte5.New(Self);
    FListBlocoIParte5 := BlocoIParte5.Execute;
    SaveToFile(FListBlocoIParte5, FConfig.NomeArquivoBlocoIParte5);
  finally
    FreeAndNil(FListBlocoIParte5);
  end;
end;

procedure TJSEcdService.GerarBlocoJ;
begin
  FListBlocoJ := FBlocoJ.Execute;
end;

procedure TJSEcdService.MergeArquivos;
begin
  MergeArquivos(FConfig.NomeArquivoBloco0);
  AdicionaLinhaEcd(FI001);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte1);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte2);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte3_1Tri);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte3_2Tri);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte3_3Tri);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte3_4Tri);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte4);
  MergeArquivos(FConfig.NomeArquivoBlocoIParte5);
  AdicionaLinhaEcd(FI990);
  MergeArquivos(FConfig.NomeArquivoBlocoJ);
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
  FConfig.NomeArquivoBlocoJ(Format('%s\%s.BlocoJ.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBlocoK(Format('%s\%s.BlocoK.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
  FConfig.NomeArquivoBloco9(Format('%s\%s.Bloco9.txt', [FConfig.NomeDiretorio, FConfig.NomeChave]));
end;

procedure TJSEcdService.SaveToFile(AArquivo: TStringList; ANomeArquivo: String);
begin
  try
    AArquivo.SaveToFile(ANomeArquivo);
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na gravação do arquivo em disco: ' + e.Message);
      raise;
    end;
  end;
end;

procedure TJSEcdService.TotalizaLivro;
var
  I: Integer;
  Linha: string;
begin
  I := FBlocoIParte1.IndexOfI030;
  if I >= 0 then
  begin
    Linha := FListBlocoIParte1.Strings[I];
    FListBlocoIParte1.Strings[I] := Linha.Replace('-1', IntToStr(FBloco9.TotalRegistroArquivo));
  end;

  I := FBlocoJ.IndexOfJ900;
  if I >= 0 then
  begin
    Linha := FListBlocoJ.Strings[I];
    FListBlocoJ.Strings[I] := Linha.Replace('-1', IntToStr(FBloco9.TotalRegistroArquivo));
  end;
end;

end.

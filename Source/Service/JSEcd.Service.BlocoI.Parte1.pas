unit JSEcd.Service.BlocoI.Parte1;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
//  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte1 = class(TInterfacedObject, IJSEcdServiceBlocoIParte1)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FI001: TJSEcdModelRegistroI001;
    FI990: TJSEcdModelRegistroI990;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure SaveToFile;
    procedure GerarI010;
    procedure GerarI012;
    procedure GerarI015;
    procedure GerarI020;
    procedure GerarI030;
    procedure GerarI050;
    procedure GerarI051;
    procedure GerarI052;
    procedure GerarI053;
    procedure GerarI075;
  public
    function Execute: IJSEcdServiceBlocoIParte1;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
  end;

implementation

{ TJSEcdServiceBlocoIParte1 }

function TJSEcdServiceBlocoIParte1.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte1.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  if (FI990.qtdLinI = 0) then
  begin
    FI990.qtdLinI := FI990.qtdLinI + 1;
    if (ARegistro.reg <> FI990.reg) then
      FI001.indDad := imComDadosInformados;

    FArquivo.Add(FacadeExport.LinhaEcd(FI001));
    Counter.AddCounter(FI001);
  end;

  FI990.qtdLinI := FI990.qtdLinI + 1;
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte1.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);

  FI001 := TJSEcdModelRegistroI001.create;
  FI990 := TJSEcdModelRegistroI990.create;
end;

destructor TJSEcdServiceBlocoIParte1.Destroy;
begin
  FreeAndNil(FI001);
  FreeAndNil(FI990);
  inherited;
end;

function TJSEcdServiceBlocoIParte1.Execute: IJSEcdServiceBlocoIParte1;
begin
  Result := Self;
  FArquivo := TStringList.Create;
  try
    try
//      GerarI010;
      AdicionaLinhaEcd(FI990);
    except
      on e: Exception do
      begin
//        OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
        Raise;
      end;
    end;
  finally
    SaveToFile;
    FreeAndNil(FArquivo);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI010;
begin
  GerarI012;
  GerarI020;
  GerarI030;
  GerarI050;
  GerarI075;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI012;
begin
  GerarI015;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI015;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI020;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI030;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI050;
begin
  GerarI051;
  GerarI052;
  GerarI053;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI051;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI052;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI053;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI075;
begin

end;

class function TJSEcdServiceBlocoIParte1.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
begin
  Result := Self.Create(Parent);
end;

procedure TJSEcdServiceBlocoIParte1.SaveToFile;
begin
  try
    FArquivo.SaveToFile(FEcdService.Config.NomeArquivoBlocoIParte1);
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na gravação do arquivo em disco: ' + e.Message);
      raise;
    end;
  end;
end;

end.

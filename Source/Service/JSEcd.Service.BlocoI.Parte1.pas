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
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte1.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte1.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte1.Execute: IJSEcdServiceBlocoIParte1;
begin
  Result := Self;
  FArquivo := TStringList.Create;
  try
    try
      GerarI010;
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
var
  RegI010: TJSEcdModelRegistroI010;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI010 := TJSEcdModelRegistroI010.create;
  try
    RegI010.indEsc.FromString(FEcdService.Config.Geral.IndicadorFinalidadeEscrturacao);
    RegI010.codVerLc := '9.00';
    AdicionaLinhaEcd(RegI010);

    GerarI012;
    GerarI020;
    GerarI030;
    GerarI050;
    GerarI075;
  finally
    FreeAndNil(RegI010);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI012;
var
  RegI012: TJSEcdModelRegistroI012;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI012 := TJSEcdModelRegistroI012.create;
  try
    RegI012.numOrd := 1;
    RegI012.natLivr := 'Teste';
    RegI012.tipo := tlaDigital;
    AdicionaLinhaEcd(RegI012);
    GerarI015;
  finally
    FreeAndNil(RegI012);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI015;
var
  RegI015: TJSEcdModelRegistroI015;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI015 := TJSEcdModelRegistroI015.create;
  try
    RegI015.codCtaRes := '1.1.1';
    AdicionaLinhaEcd(RegI015);
  finally
    FreeAndNil(RegI015);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI020;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI030;
var
  RegI030: TJSEcdModelRegistroI030;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI030 := TJSEcdModelRegistroI030.create;
  try
    RegI030.dnrcAbert := 'Teste';
    AdicionaLinhaEcd(RegI030);
  finally
    FreeAndNil(RegI030);
  end;
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

unit JSEcd.Service.BlocoJ;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoJ = class(TInterfacedObject, IJSEcdServiceBlocoJ)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FJ001: TJSEcdModelRegistroJ001;
    FJ990: TJSEcdModelRegistroJ990;
    FIndexOfJ900: Integer;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure GerarJ005;
    procedure GerarJ100;
    procedure GerarJ150;
    procedure GerarJ900;
    procedure GerarJ930;
  public
    function IndexOfJ900: Integer;
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
  end;

implementation

{ TJSEcdServiceBlocoJ }

function TJSEcdServiceBlocoJ.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoJ.AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
begin
  if (FJ990.qtdLinJ = 0) then
  begin
    FJ990.qtdLinJ := FJ990.qtdLinJ + 1;
    if (ARegistro.reg <> FJ990.reg) then
      FJ001.indDad := imComDadosInformados;

    Counter.AddCounter(FJ001);
    FArquivo.Add(FacadeExport.LinhaEcd(FJ001));
  end;

  FJ990.qtdLinJ := FJ990.qtdLinJ + 1;
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoJ.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
  FJ001 := TJSEcdModelRegistroJ001.create;
  FJ990 := TJSEcdModelRegistroJ990.create;
end;

destructor TJSEcdServiceBlocoJ.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoJ.Execute: TStringList;
begin
  try
    FIndexOfJ900 := -1;
    GerarJ005;
    GerarJ900;

    AdicionaLinhaEcd(FJ990);
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

procedure TJSEcdServiceBlocoJ.GerarJ005;
var
  RegJ005: TJSEcdModelRegistroJ005;
begin
  RegJ005 := TJSEcdModelRegistroJ005.Create;
  try
    RegJ005.dtIni := FEcdService.Config.DataInicial;
    RegJ005.dtFin := FEcdService.Config.DataFinal;

    //TODO: Por tipo enumerado
    if FEcdService.Config.Geral.IndicaContabCentralizada = '0' then
      RegJ005.idDem := 1
    else
      RegJ005.idDem := 2;

    RegJ005.cadDem := FEcdService.Config.Geral.Consolidado;
    AdicionaLinhaEcd(RegJ005);

    GerarJ100;
    GerarJ150;
  finally
    FreeAndNil(RegJ005);
  end;
end;

procedure TJSEcdServiceBlocoJ.GerarJ100;
var
  RegJ100: TJSEcdModelRegistroJ100;
  ListJ100: TObjectList<TJSEcdModelRegistroJ100>;
begin
  //TODO: Abaixo é só teste. Verificar os parâmetros da List;
  ListJ100 := FEcdService.DAO.BlocoJ.DAOJ100.List;
  try
    for RegJ100 in ListJ100 do
    begin
      AdicionaLinhaEcd(RegJ100);
    end;
  finally
    FreeAndNil(ListJ100);
  end;
end;

procedure TJSEcdServiceBlocoJ.GerarJ150;
var
  RegJ150: TJSEcdModelRegistroJ150;
  ListJ150: TObjectList<TJSEcdModelRegistroJ150>;
begin
  //TODO: Abaixo é só teste. Verificar os parâmetros da List;
  ListJ150 := FEcdService.DAO.BlocoJ.DAOJ150.List;
  try
    for RegJ150 in ListJ150 do
    begin
      AdicionaLinhaEcd(RegJ150);
    end;
  finally
    FreeAndNil(ListJ150);
  end;
end;

procedure TJSEcdServiceBlocoJ.GerarJ900;
begin
  GerarJ930;
end;

procedure TJSEcdServiceBlocoJ.GerarJ930;
begin

end;

function TJSEcdServiceBlocoJ.IndexOfJ900: Integer;
begin
  Result := FIndexOfJ900;
end;

class function TJSEcdServiceBlocoJ.New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
begin
  Result := Self.Create(Parent);
end;

end.

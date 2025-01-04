unit JSEcd.Service.Bloco0;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBloco0 = class(TInterfacedObject, IJSEcdServiceBloco0)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    F0990: TJSEcdModelRegistro0990;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure SaveToFile;
    procedure gerar0000;
    procedure gerar0001;
    procedure gerar0007;
  public
    function Execute: IJSEcdServiceBloco0;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBloco0;
  end;

implementation

{ TJSEcdServiceBloco0 }

function TJSEcdServiceBloco0.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBloco0.AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
begin
  F0990.qtdLin0 := F0990.qtdLin0 + 1;
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBloco0.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);

  F0990 := TJSEcdModelRegistro0990.Create;
end;

destructor TJSEcdServiceBloco0.Destroy;
begin
  FreeAndNil(F0990);
  inherited;
end;

function TJSEcdServiceBloco0.Execute: IJSEcdServiceBloco0;
begin
  Result := Self;
  FArquivo := TStringList.Create;
  try
    try
      gerar0000;
      gerar0001;
      gerar0007;
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

procedure TJSEcdServiceBloco0.gerar0000;
var
  reg0000: TJSEcdModelRegistro0000;
begin
  reg0000 := FEcdService.DAO.Bloco0.DAO0000.Load(FEcdService.Config.Empresa);
  try
    reg0000.dtIni := FEcdService.Config.DataInicial;
    reg0000.dtFin := FEcdService.Config.DataFinal;
    reg0000.indSitEsp.FromString(FEcdService.Config.Geral.IndicadorSituacaoEspecial);
    reg0000.indSitIniPer.FromString(FEcdService.Config.Geral.IndicadorSituacaoIni);
    reg0000.indNire.FromString(FEcdService.Config.Geral.IndicadorExisteNIRE);
    reg0000.indFinEsc.FromString(FEcdService.Config.Geral.IndicadorFinalidadeEscrturacao);
    reg0000.codHashSub := FEcdService.Config.Geral.HashEscrituracaoSubstituida;
    //  fscbIdentifSocioOstenciva //TODO:
    reg0000.tipEcd.FromString(FEcdService.Config.Geral.TipoECD);
    reg0000.indGrandePorte.FromString(FEcdService.Config.Geral.IndicadorEmpresaGrandePorte);
    reg0000.codScp := '';
      reg0000.identMf := 'N'; //TODO: Fixo ?
      reg0000.indEscCons := 'N'; //TODO: Fixo ?
    reg0000.indCentralizada.FromString(FEcdService.Config.Geral.IndicaContabCentralizada);
      reg0000.indMudancPc := impHouveMudanca; //TODO: Preencher de outro registro
    reg0000.codPlanRef.FromString(FEcdService.Config.Geral.CodigoEntidadeResponsavelManutencaoPlanoContasReferencial);

    AdicionaLinhaEcd(reg0000);
  finally
    FreeAndNil(reg0000);
  end;
end;

procedure TJSEcdServiceBloco0.gerar0001;
var
  reg0001: TJSEcdModelRegistro0001;
begin
  reg0001 := TJSEcdModelRegistro0001.create;
  try
    reg0001.indDad := imComDadosInformados;
    AdicionaLinhaEcd(reg0001);
  finally
    FreeAndNil(reg0001);
  end;
end;

procedure TJSEcdServiceBloco0.gerar0007;
var
  List0007: TObjectList<TJSEcdModelRegistro0007>;
  Reg0007: TJSEcdModelRegistro0007;
begin
//  List0007 := FEcdService.DAO.Bloco0.DAO0007.List;
  List0007 := TObjectList<TJSEcdModelRegistro0007>.Create;
  try
    List0007.Add(TJSEcdModelRegistro0007.create);
    List0007.Last.codEntRef.FromString('BA');
    List0007.Last.codInscr := '0001';

    for Reg0007 in List0007 do
      AdicionaLinhaEcd(reg0007);
  finally
    FreeAndNil(List0007);
  end;
end;

class function TJSEcdServiceBloco0.New(Parent: IJSEcdService): IJSEcdServiceBloco0;
begin
  Result := Self.Create(Parent);
end;

procedure TJSEcdServiceBloco0.SaveToFile;
begin
  try
    FArquivo.SaveToFile(FEcdService.Config.NomeArquivoBloco0);
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na gravação do arquivo em disco: ' + e.Message);
      raise;
    end;
  end;
end;

end.

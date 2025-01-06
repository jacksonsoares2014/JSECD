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
    procedure Gerar0000;
    procedure Gerar0001;
    procedure Gerar0007;
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
      Gerar0000;
      Gerar0001;
      Gerar0007;
      AdicionaLinhaEcd(F0990);
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
  Reg0000: TJSEcdModelRegistro0000;
begin
  Reg0000 := FEcdService.DAO.Bloco0.DAO0000.Load(FEcdService.Config.Empresa);
  try
    Reg0000.dtIni := FEcdService.Config.DataInicial;
    Reg0000.dtFin := FEcdService.Config.DataFinal;
    Reg0000.indSitEsp.FromString(FEcdService.Config.Geral.IndicadorSituacaoEspecial);
    Reg0000.indSitIniPer.FromString(FEcdService.Config.Geral.IndicadorSituacaoIni);
    Reg0000.indNire.FromString(FEcdService.Config.Geral.IndicadorExisteNIRE);
    Reg0000.indFinEsc.FromString(FEcdService.Config.Geral.IndicadorFinalidadeEscrturacao);
    Reg0000.codHashSub := FEcdService.Config.Geral.HashEscrituracaoSubstituida;
    //  fscbIdentifSocioOstenciva //TODO:
    Reg0000.tipEcd.FromString(FEcdService.Config.Geral.TipoECD);
    Reg0000.indGrandePorte.FromString(FEcdService.Config.Geral.IndicadorEmpresaGrandePorte);
    Reg0000.codScp := '';
      Reg0000.identMf := 'N'; //TODO: Fixo ?
      Reg0000.indEscCons := 'N'; //TODO: Fixo ?
    Reg0000.indCentralizada.FromString(FEcdService.Config.Geral.IndicaContabCentralizada);
      Reg0000.indMudancPc := impHouveMudanca; //TODO: Preencher de outro registro
    Reg0000.codPlanRef.FromString(FEcdService.Config.Geral.CodigoEntidadeResponsavelManutencaoPlanoContasReferencial);

    AdicionaLinhaEcd(Reg0000);
  finally
    FreeAndNil(Reg0000);
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

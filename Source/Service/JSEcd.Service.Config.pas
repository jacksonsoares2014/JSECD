unit JSEcd.Service.Config;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.ConfigAssociacaoPlanoGoverno,
  JSEcd.Service.ConfigGeral,
  JSEcd.Service.ConfigFiscal,
  JSEcd.Service.ConfigSignatario,
  JSEcd.Service.ConfigDemonstracoesContabeis,
  JSEcd.Service.ConfigInfoFiliaisLivroAuxiliar,
  JSEcd.Service.ConfigInfoCadastroParticipante,
  JSEcd.Service.ConfigInfoPlanoAnteriorSaldos,
  JSEcd.Service.ConfigConglomeradoEconomicos;

type
  TJSEcdServiceConfig<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfig<I>)
  private
    [Weak]
    FParent: I;

    FEmpresa: Extended;
    FExercicio: Integer;
    FPeriodoInicial: Integer;
    FPeriodoFinal: Integer;
    FDataInicial: TDateTime;
    FDataFinal: TDateTime;
    FNomeDiretorio: string;
    FNomeChave: string;
    FNomeArquivo: string;
    FNomeArquivoBloco0: string;
    FNomeArquivoBlocoIParte1: string;
    FNomeArquivoBlocoIParte2: string;
    FNomeArquivoBlocoIParte3_1Tri: string;
    FNomeArquivoBlocoIParte3_2Tri: string;
    FNomeArquivoBlocoIParte3_3Tri: string;
    FNomeArquivoBlocoIParte3_4Tri: string;
    FNomeArquivoBlocoIParte4: string;
    FNomeArquivoBlocoIParte5: string;
    FNomeArquivoBlocoJ: string;
    FNomeArquivoBlocoK: string;
    FNomeArquivoBloco9: string;

    FAssociacaoPlanoGoverno: IJSEcdServiceConfigAssociacaoPlanoGoverno<IJSEcdServiceConfig<I>>;
    FGeral: IJSEcdServiceConfigGeral<IJSEcdServiceConfig<I>>;
    FFiscal: IJSEcdServiceConfigFiscal<IJSEcdServiceConfig<I>>;
    FSignatario: IJSEcdServiceConfigSignatario<IJSEcdServiceConfig<I>>;
    FDemonstracoesContabeis: IJSEcdServiceConfigDemonstracoesContabeis<IJSEcdServiceConfig<I>>;
    FInfoFiliaisLivroAuxiliar: IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<IJSEcdServiceConfig<I>>;
    FInfoCadastroParticipante: IJSEcdServiceConfigInfoCadastroParticipante<IJSEcdServiceConfig<I>>;
    FInfoPlanoAnteriorSaldos: IJSEcdServiceConfigInfoPlanoAnteriorSaldos<IJSEcdServiceConfig<I>>;
    FConglomeradoEconomicos: IJSEcdServiceConfigConglomeradoEconomicos<IJSEcdServiceConfig<I>>;
  public
    function Empresa(Value: Extended): IJSEcdServiceConfig<I>; overload;
    function Exercicio(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoInicial(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoFinal(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function DataInicial(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function DataFinal(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function NomeDiretorio(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeChave(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivo(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBloco0(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte1(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte2(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_1Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_2Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_3Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_4Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte4(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte5(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoJ(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoK(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBloco9(Value: string): IJSEcdServiceConfig<I>; overload;

    function Empresa: Extended; overload;
    function Exercicio: Integer; overload;
    function PeriodoInicial: Integer; overload;
    function PeriodoFinal: Integer; overload;
    function DataInicial: TDateTime; overload;
    function DataFinal: TDateTime; overload;
    function NomeDiretorio: string; overload;
    function NomeChave: string; overload;
    function NomeArquivo: string; overload;
    function NomeArquivoBloco0: string; overload;
    function NomeArquivoBlocoIParte1: string; overload;
    function NomeArquivoBlocoIParte2: string; overload;
    function NomeArquivoBlocoIParte3_1Tri: string; overload;
    function NomeArquivoBlocoIParte3_2Tri: string; overload;
    function NomeArquivoBlocoIParte3_3Tri: string; overload;
    function NomeArquivoBlocoIParte3_4Tri: string; overload;
    function NomeArquivoBlocoIParte4: string; overload;
    function NomeArquivoBlocoIParte5: string; overload;
    function NomeArquivoBlocoJ: string; overload;
    function NomeArquivoBlocoK: string; overload;
    function NomeArquivoBloco9: string; overload;

    function AssociacaoPlanoGoverno: IJSEcdServiceConfigAssociacaoPlanoGoverno<IJSEcdServiceConfig<I>>;
    function Geral: IJSEcdServiceConfigGeral<IJSEcdServiceConfig<I>>;
    function Fiscal: IJSEcdServiceConfigFiscal<IJSEcdServiceConfig<I>>;
    function Signatario: IJSEcdServiceConfigSignatario<IJSEcdServiceConfig<I>>;
    function DemonstracoesContabeis: IJSEcdServiceConfigDemonstracoesContabeis<IJSEcdServiceConfig<I>>;
    function InfoFiliaisLivroAuxiliar: IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<IJSEcdServiceConfig<I>>;
    function InfoCadastroParticipante: IJSEcdServiceConfigInfoCadastroParticipante<IJSEcdServiceConfig<I>>;
    function InfoPlanoAnteriorSaldos: IJSEcdServiceConfigInfoPlanoAnteriorSaldos<IJSEcdServiceConfig<I>>;
    function ConglomeradoEconomicos: IJSEcdServiceConfigConglomeradoEconomicos<IJSEcdServiceConfig<I>>;

    function &Begin: IJSEcdServiceConfig<I>;
    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfig<I>;
  end;

implementation

{ TJSEcdServiceConfig<I> }

function TJSEcdServiceConfig<I>.AssociacaoPlanoGoverno: IJSEcdServiceConfigAssociacaoPlanoGoverno<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FAssociacaoPlanoGoverno) then
    FAssociacaoPlanoGoverno := TJSEcdServiceConfigAssociacaoPlanoGoverno<IJSEcdServiceConfig<I>>.New(Self);
  Result := FAssociacaoPlanoGoverno;
end;

function TJSEcdServiceConfig<I>.&Begin: IJSEcdServiceConfig<I>;
begin
  Result := Self;
end;

function TJSEcdServiceConfig<I>.Empresa(
  Value: Extended): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FEmpresa := Value;
end;

function TJSEcdServiceConfig<I>.Empresa: Extended;
begin
  Result := FEmpresa;
end;

function TJSEcdServiceConfig<I>.&End: I;
begin
  Result := FParent;
end;

function TJSEcdServiceConfig<I>.ConglomeradoEconomicos: IJSEcdServiceConfigConglomeradoEconomicos<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FConglomeradoEconomicos) then
    FConglomeradoEconomicos := TJSEcdServiceConfigConglomeradoEconomicos<IJSEcdServiceConfig<I>>.New(Self);
  Result := FConglomeradoEconomicos;
end;

function TJSEcdServiceConfig<I>.Exercicio: Integer;
begin
  Result := FExercicio;
end;

function TJSEcdServiceConfig<I>.Exercicio(
  Value: Integer): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FExercicio := Value;
end;

function TJSEcdServiceConfig<I>.Fiscal: IJSEcdServiceConfigFiscal<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FFiscal) then
    FFiscal := TJSEcdServiceConfigFiscal<IJSEcdServiceConfig<I>>.New(Self);
  Result := FFiscal;
end;

function TJSEcdServiceConfig<I>.Geral: IJSEcdServiceConfigGeral<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FGeral) then
    FGeral := TJSEcdServiceConfigGeral<IJSEcdServiceConfig<I>>.New(Self);
  Result := FGeral;
end;

function TJSEcdServiceConfig<I>.InfoCadastroParticipante: IJSEcdServiceConfigInfoCadastroParticipante<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FInfoCadastroParticipante) then
    FInfoCadastroParticipante := TJSEcdServiceConfigInfoCadastroParticipante<IJSEcdServiceConfig<I>>.New(Self);
  Result := FInfoCadastroParticipante;
end;

function TJSEcdServiceConfig<I>.InfoFiliaisLivroAuxiliar: IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FInfoFiliaisLivroAuxiliar) then
    FInfoFiliaisLivroAuxiliar := TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<IJSEcdServiceConfig<I>>.New(Self);
  Result := FInfoFiliaisLivroAuxiliar;
end;

function TJSEcdServiceConfig<I>.InfoPlanoAnteriorSaldos: IJSEcdServiceConfigInfoPlanoAnteriorSaldos<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FInfoPlanoAnteriorSaldos) then
    FInfoPlanoAnteriorSaldos := TJSEcdServiceConfigInfoPlanoAnteriorSaldos<IJSEcdServiceConfig<I>>.New(Self);
  Result := FInfoPlanoAnteriorSaldos;
end;

constructor TJSEcdServiceConfig<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

function TJSEcdServiceConfig<I>.DataFinal: TDateTime;
begin
  Result := FDataFinal;
end;

function TJSEcdServiceConfig<I>.DataFinal(
  Value: TDateTime): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FDataFinal := Value;
end;

function TJSEcdServiceConfig<I>.DataInicial: TDateTime;
begin
  Result := FDataInicial;
end;

function TJSEcdServiceConfig<I>.DataInicial(
  Value: TDateTime): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FDataInicial := Value;
end;

function TJSEcdServiceConfig<I>.DemonstracoesContabeis: IJSEcdServiceConfigDemonstracoesContabeis<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FDemonstracoesContabeis) then
    FDemonstracoesContabeis := TJSEcdServiceConfigDemonstracoesContabeis<IJSEcdServiceConfig<I>>.New(Self);
  Result := FDemonstracoesContabeis;
end;

destructor TJSEcdServiceConfig<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfig<I>.New(Parent: I): IJSEcdServiceConfig<I>;
begin
  Result := Self.create(Parent);
end;

function TJSEcdServiceConfig<I>.NomeArquivo: string;
begin
  Result := FNomeArquivo;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBloco0(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBloco0 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBloco0: string;
begin
  Result := FNomeArquivoBloco0;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBloco9: string;
begin
  Result := FNomeArquivoBloco9;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBloco9(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBloco9 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte1(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte1 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte1: string;
begin
  Result := FNomeArquivoBlocoIParte1;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte2: string;
begin
  Result := FNomeArquivoBlocoIParte2;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte2(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte2 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_1Tri(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte3_1Tri := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_1Tri: string;
begin
  Result := FNomeArquivoBlocoIParte3_1Tri;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_2Tri(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte3_2Tri := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_2Tri: string;
begin
  Result := FNomeArquivoBlocoIParte3_2Tri;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_3Tri(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte3_3Tri := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_3Tri: string;
begin
  Result := FNomeArquivoBlocoIParte3_3Tri;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_4Tri(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte3_4Tri := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte3_4Tri: string;
begin
  Result := FNomeArquivoBlocoIParte3_4Tri;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte4(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte4 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte4: string;
begin
  Result := FNomeArquivoBlocoIParte4;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte5: string;
begin
  Result := FNomeArquivoBlocoIParte5;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoIParte5(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoIParte5 := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoJ(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoJ := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoJ: string;
begin
  Result := FNomeArquivoBlocoJ;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoK: string;
begin
  Result := FNomeArquivoBlocoK;
end;

function TJSEcdServiceConfig<I>.NomeArquivoBlocoK(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivoBlocoK := Value;
end;

function TJSEcdServiceConfig<I>.NomeArquivo(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeArquivo := Value;
end;

function TJSEcdServiceConfig<I>.NomeChave(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeChave := Value;
end;

function TJSEcdServiceConfig<I>.NomeChave: string;
begin
  Result := FNomeChave;
end;

function TJSEcdServiceConfig<I>.NomeDiretorio(
  Value: string): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FNomeDiretorio := Value;
end;

function TJSEcdServiceConfig<I>.NomeDiretorio: string;
begin
  Result := FNomeDiretorio;
end;

function TJSEcdServiceConfig<I>.PeriodoFinal: Integer;
begin
  Result := FPeriodoFinal;
end;

function TJSEcdServiceConfig<I>.PeriodoFinal(
  Value: Integer): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FPeriodoFinal := Value;
end;

function TJSEcdServiceConfig<I>.PeriodoInicial: Integer;
begin
  Result := FPeriodoInicial;
end;

function TJSEcdServiceConfig<I>.PeriodoInicial(
  Value: Integer): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FPeriodoInicial := Value;
end;

function TJSEcdServiceConfig<I>.Signatario: IJSEcdServiceConfigSignatario<IJSEcdServiceConfig<I>>;
begin
  if not Assigned(FSignatario) then
    FSignatario := TJSEcdServiceConfigSignatario<IJSEcdServiceConfig<I>>.New(Self);
  Result := FSignatario;
end;

end.

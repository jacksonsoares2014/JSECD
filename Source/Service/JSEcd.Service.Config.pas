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

    FEmpresa: Integer;
    FExercicio: Integer;
    FPeriodoInicial: Integer;
    FPeriodoFinal: Integer;
    FDataInicial: TDateTime;
    FDataFinal: TDateTime;

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
    function Empresa(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function Exercicio(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoInicial(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoFinal(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function DataInicial(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function DataFinal(Value: TDateTime): IJSEcdServiceConfig<I>; overload;

    function Empresa: Integer; overload;
    function Exercicio: Integer; overload;
    function PeriodoInicial: Integer; overload;
    function PeriodoFinal: Integer; overload;
    function DataInicial: TDateTime; overload;
    function DataFinal: TDateTime; overload;

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

function TJSEcdServiceConfig<I>.Empresa: Integer;
begin
  Result := FEmpresa;
end;

function TJSEcdServiceConfig<I>.Empresa(Value: Integer): IJSEcdServiceConfig<I>;
begin
  Result := Self;
  FEmpresa := Value;
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

unit JSEcd.Service.ConfigGeral;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigGeral<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigGeral<I>)
  private
    [Weak]
    FParent: I;

    FTipoEscrituracao: string;
    FIndicadorFinalidadeEscrturacao: string;
    FIndicadorSituacaoIni: string;
    FCodigoInstituicaoResponsavelAdministracaoCadastro: string;
    FIndicadorEmpresaGrandePorte: string;
    FTipoECD: string;
    FIndicadorSituacaoEspecial: string;
    FIndicadorExisteNIRE: string;
    FCodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string;
    FIndicaContabCentralizada: Integer;

    FIndicadorSubgrupo: string;
    FConsolidado: string;
    FConsolidadoSCP: string;
    FEmpresaMatriz: Integer;

    FHashEscrituracaoSubstituida: string;
    FNIREEscrituracaoSubst: string;
  public
    function TipoEscrituracao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorFinalidadeEscrturacao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoIni(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorEmpresaGrandePorte(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function TipoECD(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoEspecial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorExisteNIRE(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicaContabCentralizada(Value: Integer): IJSEcdServiceConfigGeral<I>; overload;

    function TipoEscrituracao: string; overload;
    function IndicadorFinalidadeEscrturacao: string; overload;
    function IndicadorSituacaoIni: string; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro: string; overload;
    function IndicadorEmpresaGrandePorte: string; overload;
    function TipoECD: string; overload;
    function IndicadorSituacaoEspecial: string; overload;
    function IndicadorExisteNIRE: string; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string; overload;
    function IndicaContabCentralizada: Integer; overload;

    function IndicadorSubgrupo(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function Consolidado(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function ConsolidadoSCP(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function EmpresaMatriz(Value: Integer): IJSEcdServiceConfigGeral<I>; overload;

    function IndicadorSubgrupo: string; overload;
    function Consolidado: string; overload;
    function ConsolidadoSCP: string; overload;
    function EmpresaMatriz: Integer; overload;

    function HashEscrituracaoSubstituida(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function NIREEscrituracaoSubst(Value: string): IJSEcdServiceConfigGeral<I>; overload;

    function HashEscrituracaoSubstituida: string; overload;
    function NIREEscrituracaoSubst: string; overload;

    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigGeral<I>;
  end;

implementation

{ TJSEcdServiceConfigGeral<I> }

function TJSEcdServiceConfigGeral<I>.EmpresaMatriz(
  Value: Integer): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FEmpresaMatriz := Value;
end;

function TJSEcdServiceConfigGeral<I>.EmpresaMatriz: Integer;
begin
  Result := FEmpresaMatriz;
end;

function TJSEcdServiceConfigGeral<I>.&End: I;
begin
  Result := FParent;
end;

function TJSEcdServiceConfigGeral<I>.CodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string;
begin
  Result := FCodigoEntidadeResponsavelManutencaoPlanoContasReferencial;
end;

function TJSEcdServiceConfigGeral<I>.CodigoEntidadeResponsavelManutencaoPlanoContasReferencial(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FCodigoEntidadeResponsavelManutencaoPlanoContasReferencial := Value;
end;

function TJSEcdServiceConfigGeral<I>.CodigoInstituicaoResponsavelAdministracaoCadastro: string;
begin
  Result := FCodigoInstituicaoResponsavelAdministracaoCadastro;
end;

function TJSEcdServiceConfigGeral<I>.CodigoInstituicaoResponsavelAdministracaoCadastro(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FCodigoInstituicaoResponsavelAdministracaoCadastro := Value;
end;

function TJSEcdServiceConfigGeral<I>.Consolidado: string;
begin
  Result := FConsolidado;
end;

function TJSEcdServiceConfigGeral<I>.Consolidado(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FConsolidado := Value;
end;

function TJSEcdServiceConfigGeral<I>.ConsolidadoSCP: string;
begin
  Result := FConsolidadoSCP;
end;

function TJSEcdServiceConfigGeral<I>.ConsolidadoSCP(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FConsolidadoSCP := Value;
end;

function TJSEcdServiceConfigGeral<I>.HashEscrituracaoSubstituida(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FHashEscrituracaoSubstituida := Value;
end;

function TJSEcdServiceConfigGeral<I>.HashEscrituracaoSubstituida: string;
begin
  Result := FHashEscrituracaoSubstituida;
end;

function TJSEcdServiceConfigGeral<I>.IndicaContabCentralizada: Integer;
begin
  Result := FIndicaContabCentralizada;
end;

function TJSEcdServiceConfigGeral<I>.IndicaContabCentralizada(
  Value: Integer): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicaContabCentralizada := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorEmpresaGrandePorte(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorEmpresaGrandePorte := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorEmpresaGrandePorte: string;
begin
  Result := FIndicadorEmpresaGrandePorte;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorExisteNIRE(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorExisteNIRE := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorExisteNIRE: string;
begin
  Result := FIndicadorExisteNIRE;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorFinalidadeEscrturacao: string;
begin
  Result := FIndicadorFinalidadeEscrturacao;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorFinalidadeEscrturacao(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorFinalidadeEscrturacao := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSituacaoEspecial(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorSituacaoEspecial := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSituacaoEspecial: string;
begin
  Result := FIndicadorSituacaoEspecial;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSituacaoIni: string;
begin
  Result := FIndicadorSituacaoIni;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSituacaoIni(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorSituacaoIni := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSubgrupo(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FIndicadorSubgrupo := Value;
end;

function TJSEcdServiceConfigGeral<I>.IndicadorSubgrupo: string;
begin
  Result := FIndicadorSubgrupo;
end;

constructor TJSEcdServiceConfigGeral<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

destructor TJSEcdServiceConfigGeral<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigGeral<I>.New(Parent: I): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self.create(Parent);
end;

function TJSEcdServiceConfigGeral<I>.NIREEscrituracaoSubst: string;
begin
  Result := FNIREEscrituracaoSubst;
end;

function TJSEcdServiceConfigGeral<I>.NIREEscrituracaoSubst(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FNIREEscrituracaoSubst := Value;
end;

function TJSEcdServiceConfigGeral<I>.TipoECD(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FTipoECD := Value;
end;

function TJSEcdServiceConfigGeral<I>.TipoECD: string;
begin
  Result := FTipoECD;
end;

function TJSEcdServiceConfigGeral<I>.TipoEscrituracao(
  Value: string): IJSEcdServiceConfigGeral<I>;
begin
  Result := Self;
  FTipoEscrituracao := Value;
end;

function TJSEcdServiceConfigGeral<I>.TipoEscrituracao: string;
begin
  Result := FTipoEscrituracao;
end;

end.

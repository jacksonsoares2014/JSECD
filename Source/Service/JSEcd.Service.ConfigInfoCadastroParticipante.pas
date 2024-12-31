unit JSEcd.Service.ConfigInfoCadastroParticipante;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigInfoCadastroParticipante<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigInfoCadastroParticipante<I>)
  private
    [Weak]
    FParent: I;

    FAtributoTipoRelacionamento: Integer;
    FAtributoDataInicioRelacionamento: Integer;
    FAtributoDataFimRelacionamento: Integer;
    FTipoDocSUFRAMA: Integer;
    FIdentificadorTrabalhador: Integer;
    FInscricaoEstadualContribuinteSubstituto: Integer;
  public
    function AtributoTipoRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataInicioRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataFimRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function TipoDocSUFRAMA(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function IdentificadorTrabalhador(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function InscricaoEstadualContribuinteSubstituto(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;

    function AtributoTipoRelacionamento: Integer; overload;
    function AtributoDataInicioRelacionamento: Integer; overload;
    function AtributoDataFimRelacionamento: Integer; overload;
    function TipoDocSUFRAMA: Integer; overload;
    function IdentificadorTrabalhador: Integer; overload;
    function InscricaoEstadualContribuinteSubstituto: Integer; overload;

    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigInfoCadastroParticipante<I>;
  end;

implementation

{ TJSEcdServiceConfigInfoCadastroParticipante }

function TJSEcdServiceConfigInfoCadastroParticipante<I>.&End: I;
begin
  Result := FParent;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoDataFimRelacionamento: Integer;
begin
  Result := FAtributoDataFimRelacionamento;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoDataFimRelacionamento(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FAtributoDataFimRelacionamento := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoDataInicioRelacionamento: Integer;
begin
  Result := FAtributoDataInicioRelacionamento;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoDataInicioRelacionamento(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FAtributoDataInicioRelacionamento := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoTipoRelacionamento(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FAtributoTipoRelacionamento := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.AtributoTipoRelacionamento: Integer;
begin
  Result := FAtributoTipoRelacionamento;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.IdentificadorTrabalhador(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FIdentificadorTrabalhador := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.IdentificadorTrabalhador: Integer;
begin
  Result := FIdentificadorTrabalhador;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.InscricaoEstadualContribuinteSubstituto(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FInscricaoEstadualContribuinteSubstituto := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.InscricaoEstadualContribuinteSubstituto: Integer;
begin
  Result := FInscricaoEstadualContribuinteSubstituto;
end;

constructor TJSEcdServiceConfigInfoCadastroParticipante<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

destructor TJSEcdServiceConfigInfoCadastroParticipante<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigInfoCadastroParticipante<I>.New(Parent: I): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self.create(Parent);
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.TipoDocSUFRAMA(
  Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>;
begin
  Result := Self;
  FTipoDocSUFRAMA := Value;
end;

function TJSEcdServiceConfigInfoCadastroParticipante<I>.TipoDocSUFRAMA: Integer;
begin
  Result := FTipoDocSUFRAMA;
end;

end.

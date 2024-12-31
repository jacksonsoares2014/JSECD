unit JSEcd.Service.ConfigSignatario;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigSignatario<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigSignatario<I>)
  private
    [Weak]
    FParent: I;

    FCodigoAssinanteContador: string;
    FNomeSignatarioContador: string;
    FCPFSignatarioContador: string;
    FEmailContador: string;
    FTelefoneContador: string;
    FCRCSignatarioContador: string;
    FEstadoCRCContador: string;
    FDataValidadeCRCContador: string;

    FCodigoAssinanteLegal: string;
    FNomeSignatarioLegal: string;
    FCPFSignatarioLegal: string;
    FEmailSignatarioLegal: string;
    FTelefoneSignatarioLegal: string;
    FCRCSignatarioLegal: string;
    FUFCRCSignatarioLegal: string;
    FDataValidadeCRCSignatarioLegal: string;

    FNomeAuditorIndependente: string;
    FRegistroAuditorIndependenteCVM: string;
    FDoc: string;

    FCodigoAssinanteCertificado: string;
    FNomeSignatarioCertificado: string;
    FCNPJSignatarioCertificado: string;
    FEmailSignatarioCertificado: string;
    FTelefoneSignatarioCertificado: string;
    FResponsavelLegalCertificado: string;
  public
    function CodigoAssinanteContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CPFSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CRCSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EstadoCRCContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function DataValidadeCRCContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteContador: string; overload;
    function NomeSignatarioContador: string; overload;
    function CPFSignatarioContador: string; overload;
    function EmailContador: string; overload;
    function TelefoneContador: string; overload;
    function CRCSignatarioContador: string; overload;
    function EstadoCRCContador: string; overload;
    function DataValidadeCRCContador: string; overload;

    function CodigoAssinanteLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CPFSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function UFCRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function DataValidadeCRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteLegal: string; overload;
    function NomeSignatarioLegal: string; overload;
    function CPFSignatarioLegal: string; overload;
    function EmailSignatarioLegal: string; overload;
    function TelefoneSignatarioLegal: string; overload;
    function CRCSignatarioLegal: string; overload;
    function UFCRCSignatarioLegal: string; overload;
    function DataValidadeCRCSignatarioLegal: string; overload;

    function NomeAuditorIndependente(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function RegistroAuditorIndependenteCVM(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function Doc(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function NomeAuditorIndependente: string; overload;
    function RegistroAuditorIndependenteCVM: string; overload;
    function Doc: string; overload;

    function CodigoAssinanteCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CNPJSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function ResponsavelLegalCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteCertificado: string; overload;
    function NomeSignatarioCertificado: string; overload;
    function CNPJSignatarioCertificado: string; overload;
    function EmailSignatarioCertificado: string; overload;
    function TelefoneSignatarioCertificado: string; overload;
    function ResponsavelLegalCertificado: string; overload;

    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigSignatario<I>;
  end;

implementation

{ TJSEcdServiceConfigSignatario<I> }

function TJSEcdServiceConfigSignatario<I>.EmailContador: string;
begin
  Result := FEmailContador;
end;

function TJSEcdServiceConfigSignatario<I>.EmailContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FEmailContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.EmailSignatarioCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FEmailSignatarioCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.EmailSignatarioCertificado: string;
begin
  Result := FEmailSignatarioCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.EmailSignatarioLegal: string;
begin
  Result := FEmailSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.EmailSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FEmailSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.&End: I;
begin
  Result := FParent;
end;

function TJSEcdServiceConfigSignatario<I>.CNPJSignatarioCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCNPJSignatarioCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CNPJSignatarioCertificado: string;
begin
  Result := FCNPJSignatarioCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteCertificado: string;
begin
  Result := FCodigoAssinanteCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCodigoAssinanteCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteContador: string;
begin
  Result := FCodigoAssinanteContador;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCodigoAssinanteContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteLegal: string;
begin
  Result := FCodigoAssinanteLegal;
end;

function TJSEcdServiceConfigSignatario<I>.CodigoAssinanteLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCodigoAssinanteLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CPFSignatarioContador: string;
begin
  Result := FCPFSignatarioContador;
end;

function TJSEcdServiceConfigSignatario<I>.CPFSignatarioContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCPFSignatarioContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CPFSignatarioLegal: string;
begin
  Result := FCPFSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.CPFSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCPFSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CRCSignatarioContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCRCSignatarioContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CRCSignatarioContador: string;
begin
  Result := FCRCSignatarioContador;
end;

function TJSEcdServiceConfigSignatario<I>.CRCSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FCRCSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.CRCSignatarioLegal: string;
begin
  Result := FCRCSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.EstadoCRCContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FEstadoCRCContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.EstadoCRCContador: string;
begin
  Result := FEstadoCRCContador;
end;

constructor TJSEcdServiceConfigSignatario<I>.Create;
begin
  FParent := Parent;
end;

function TJSEcdServiceConfigSignatario<I>.DataValidadeCRCContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FDataValidadeCRCContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.DataValidadeCRCContador: string;
begin
  Result := FDataValidadeCRCContador;
end;

function TJSEcdServiceConfigSignatario<I>.DataValidadeCRCSignatarioLegal: string;
begin
  Result := FDataValidadeCRCSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.DataValidadeCRCSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FDataValidadeCRCSignatarioLegal := Value;
end;

destructor TJSEcdServiceConfigSignatario<I>.Destroy;
begin

  inherited;
end;

function TJSEcdServiceConfigSignatario<I>.Doc(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FDoc := Value;
end;

function TJSEcdServiceConfigSignatario<I>.Doc: string;
begin
  Result := FDoc;
end;

class function TJSEcdServiceConfigSignatario<I>.New(Parent: I): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self.create(Parent);
end;

function TJSEcdServiceConfigSignatario<I>.NomeAuditorIndependente: string;
begin
  Result := FNomeAuditorIndependente;
end;

function TJSEcdServiceConfigSignatario<I>.NomeAuditorIndependente(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FNomeAuditorIndependente := Value;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FNomeSignatarioCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioCertificado: string;
begin
  Result := FNomeSignatarioCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioContador: string;
begin
  Result := FNomeSignatarioContador;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FNomeSignatarioContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioLegal: string;
begin
  Result := FNomeSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.NomeSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FNomeSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.RegistroAuditorIndependenteCVM(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FRegistroAuditorIndependenteCVM := Value;
end;

function TJSEcdServiceConfigSignatario<I>.RegistroAuditorIndependenteCVM: string;
begin
  Result := FRegistroAuditorIndependenteCVM;
end;

function TJSEcdServiceConfigSignatario<I>.ResponsavelLegalCertificado: string;
begin
  Result := FResponsavelLegalCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.ResponsavelLegalCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FResponsavelLegalCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneContador: string;
begin
  Result := FTelefoneContador;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneContador(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FTelefoneContador := Value;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneSignatarioCertificado: string;
begin
  Result := FTelefoneSignatarioCertificado;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneSignatarioCertificado(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FTelefoneSignatarioCertificado := Value;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneSignatarioLegal: string;
begin
  Result := FTelefoneSignatarioLegal;
end;

function TJSEcdServiceConfigSignatario<I>.TelefoneSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FTelefoneSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.UFCRCSignatarioLegal(
  Value: string): IJSEcdServiceConfigSignatario<I>;
begin
  Result := Self;
  FUFCRCSignatarioLegal := Value;
end;

function TJSEcdServiceConfigSignatario<I>.UFCRCSignatarioLegal: string;
begin
  Result := FUFCRCSignatarioLegal;
end;

end.

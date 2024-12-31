unit JSEcd.Service.ConfigFiscal;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigFiscal<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigFiscal<I>)
  private
    [Weak]
    FParent: I;

    FNumeroOrdemInstrumentoEscrituracao: string;
    FNaturezaLivro: string;
    FTipoDocNIRE: Integer;
    FDataArquivamentoAtosConstituitivos: string;
    FDataArquivamentoAtoConversao: string;
  public
    function NumeroOrdemInstrumentoEscrituracao(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function NaturezaLivro(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function TipoDocNIRE(Value:  Integer): IJSEcdServiceConfigFiscal<I>; overload;
    function DataArquivamentoAtosConstituitivos(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function DataArquivamentoAtoConversao(Value: string): IJSEcdServiceConfigFiscal<I>; overload;

    function NumeroOrdemInstrumentoEscrituracao: string; overload;
    function NaturezaLivro: string; overload;
    function TipoDocNIRE: Integer; overload;
    function DataArquivamentoAtosConstituitivos: string; overload;
    function DataArquivamentoAtoConversao: string; overload;

    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigFiscal<I>;
  end;

implementation

{ TJSEcdServiceConfigFiscal<I> }

function TJSEcdServiceConfigFiscal<I>.&End: I;
begin
  Result := FParent;
end;

constructor TJSEcdServiceConfigFiscal<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

function TJSEcdServiceConfigFiscal<I>.DataArquivamentoAtoConversao: string;
begin
  Result := FDataArquivamentoAtoConversao;
end;

function TJSEcdServiceConfigFiscal<I>.DataArquivamentoAtoConversao(
  Value: string): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self;
  FDataArquivamentoAtoConversao := Value;
end;

function TJSEcdServiceConfigFiscal<I>.DataArquivamentoAtosConstituitivos: string;
begin
  Result := FDataArquivamentoAtosConstituitivos;
end;

function TJSEcdServiceConfigFiscal<I>.DataArquivamentoAtosConstituitivos(
  Value: string): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self;
  FDataArquivamentoAtosConstituitivos := Value;
end;

destructor TJSEcdServiceConfigFiscal<I>.Destroy;
begin

  inherited;
end;

function TJSEcdServiceConfigFiscal<I>.NaturezaLivro: string;
begin
  Result := FNaturezaLivro;
end;

function TJSEcdServiceConfigFiscal<I>.NaturezaLivro(
  Value: string): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self;
  FNaturezaLivro := Value;
end;

class function TJSEcdServiceConfigFiscal<I>.New(Parent: I): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceConfigFiscal<I>.NumeroOrdemInstrumentoEscrituracao(
  Value: string): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self;
  FNumeroOrdemInstrumentoEscrituracao := Value;
end;

function TJSEcdServiceConfigFiscal<I>.NumeroOrdemInstrumentoEscrituracao: string;
begin
  Result := FNumeroOrdemInstrumentoEscrituracao;
end;

function TJSEcdServiceConfigFiscal<I>.TipoDocNIRE(
  Value: Integer): IJSEcdServiceConfigFiscal<I>;
begin
  Result := Self;
  FTipoDocNIRE := Value;
end;

function TJSEcdServiceConfigFiscal<I>.TipoDocNIRE: Integer;
begin
  Result := FTipoDocNIRE;
end;

end.

unit JSEcd.Service.ConfigDemonstracoesContabeis;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigDemonstracoesContabeis<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigDemonstracoesContabeis<I>)
  private
    [Weak]
    FParent: I;

    FDemonstrativoBaseBalancoDescr: string;
    FDemonstrativoBaseBalanco: Double;
    FDemonstrativoBaseDRE: Double;
    FDemonstrativoDLPA: Integer;
    FLancContabil: Boolean;
    FIndicaDLPADMPL: Integer;
    FDemonstrativoDFC: Integer;
    FDemonstrativoDVA: Integer;
  public
    function DemonstrativoBaseBalancoDescr(Value: string): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseBalanco(Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseDRE(Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDLPA(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function LancContabil(Value: Boolean): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function IndicaDLPADMPL(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDFC(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDVA(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;

    function DemonstrativoBaseBalancoDescr: string; overload;
    function DemonstrativoBaseBalanco: Double; overload;
    function DemonstrativoBaseDRE: Double; overload;
    function DemonstrativoDLPA: Integer; overload;
    function LancContabil: Boolean; overload;
    function IndicaDLPADMPL: Integer; overload;
    function DemonstrativoDFC: Integer; overload;
    function DemonstrativoDVA: Integer; overload;

    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigDemonstracoesContabeis<I>;
  end;

implementation

{ TJSEcdServiceConfigDemonstracoesContabeis<I> }

function TJSEcdServiceConfigDemonstracoesContabeis<I>.&End: I;
begin
  Result := FParent;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.IndicaDLPADMPL: Integer;
begin
  Result := FIndicaDLPADMPL;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.IndicaDLPADMPL(
  Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FIndicaDLPADMPL := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.LancContabil(
  Value: Boolean): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FLancContabil := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.LancContabil: Boolean;
begin
  Result := FLancContabil;
end;

constructor TJSEcdServiceConfigDemonstracoesContabeis<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseBalanco(
  Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoBaseBalanco := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseBalanco: Double;
begin
  Result := FDemonstrativoBaseBalanco;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseBalancoDescr: string;
begin
  Result := FDemonstrativoBaseBalancoDescr;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseBalancoDescr(
  Value: string): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoBaseBalancoDescr := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseDRE(
  Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoBaseDRE := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoBaseDRE: Double;
begin
  Result := FDemonstrativoBaseDRE;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDFC(
  Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoDFC := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDFC: Integer;
begin
  Result := FDemonstrativoDFC;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDLPA(
  Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoDLPA := Value;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDLPA: Integer;
begin
  Result := FDemonstrativoDLPA;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDVA: Integer;
begin
  Result := FDemonstrativoDVA;
end;

function TJSEcdServiceConfigDemonstracoesContabeis<I>.DemonstrativoDVA(
  Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self;
  FDemonstrativoDVA := Value;
end;

destructor TJSEcdServiceConfigDemonstracoesContabeis<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigDemonstracoesContabeis<I>.New(Parent: I): IJSEcdServiceConfigDemonstracoesContabeis<I>;
begin
  Result := Self.create(Parent);
end;

end.

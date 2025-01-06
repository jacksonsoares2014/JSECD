unit JSEcd.Model.Registro0150;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistro0150 = class(TJSEcdModelRegistro)
  private
    FcodMun: string;
    Fnit: string;
    Fcnpj: string;
    FieSt: string;
    Fim: string;
    Fuf: string;
    Fcpf: string;
    Fie: string;
    FcodPart: string;
    Fsuframa: string;
    FcodPais: string;
    Fnome: string;

  public
    property codPart: string read FcodPart write FcodPart;
    property nome: string read Fnome write Fnome;
    property codPais: string read FcodPais write FcodPais;
    property cnpj: string read Fcnpj write Fcnpj;
    property cpf: string read Fcpf write Fcpf;
    property nit: string read Fnit write Fnit;
    property uf: string read Fuf write Fuf;
    property ie: string read Fie write Fie;
    property ieSt: string read FieSt write FieSt;
    property codMun: string read FcodMun write FcodMun;
    property im: string read Fim write Fim;
    property suframa: string read Fsuframa write Fsuframa;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0150 }

constructor TJSEcdModelRegistro0150.Create;
begin
  inherited;
  reg := '0150';
end;

end.

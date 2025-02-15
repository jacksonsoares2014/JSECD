unit JSEcd.Model.Registro0020;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistro0020 = class(TJSEcdModelRegistro)
  private
    FcodMun: string;
    Fcnpj: string;
    Fim: string;
    Fuf: string;
    Fnire: string;
    Fie: string;
    FindDec: TJSEcdIndDec;

  public
    property indDec: TJSEcdIndDec read FindDec write FindDec;
    property cnpj: string read Fcnpj write Fcnpj;
    property uf: string read Fuf write Fuf;
    property ie: string read Fie write Fie;
    property codMun: string read FcodMun write FcodMun;
    property im: string read Fim write Fim;
    property nire: string read Fnire write Fnire;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistro0020 }

constructor TJSEcdModelRegistro0020.Create;
begin
  inherited;
  reg := '0020';
end;

end.

unit JSEcd.Model.RegistroI030;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI030 = class(TJSEcdModelRegistro)
  private
    FdnrcAbert: string;
    FnumOrd: Integer;
    FnatLivr: string;
    FqtdLin: Integer;
    Fnome: string;
    Fnire: string;
    Fcnpj: string;
    FdtArq: TDateTime;
    FdtArqConv: TDateTime;
    FdescMun: string;
    FdtExSocial: TDateTime;
  public
    property dnrcAbert: string read FdnrcAbert write FdnrcAbert;
    property numOrd: Integer read FnumOrd write FnumOrd;
    property natLivr: string read FnatLivr write FnatLivr;
    property qtdLin: Integer read FqtdLin write FqtdLin;
    property nome: string read Fnome write Fnome;
    property nire: string read Fnire write Fnire;
    property cnpj: string read Fcnpj write Fcnpj;
    property dtArq: TDateTime read FdtArq write FdtArq;
    property dtArqConv: TDateTime read FdtArqConv write FdtArqConv;
    property descMun: string read FdescMun write FdescMun;
    property dtExSocial: TDateTime read FdtExSocial write FdtExSocial;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI030 }

constructor TJSEcdModelRegistroI030.Create;
begin
  inherited;
  reg := 'I030';
end;

end.

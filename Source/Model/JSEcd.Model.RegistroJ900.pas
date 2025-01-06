unit JSEcd.Model.RegistroJ900;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ900 = class(TJSEcdModelRegistro)
  private
    FdnrcEncer: string;
    FnumOrd: Integer;
    FnatLivro: string;
    Fnome: string;
    FqtdLin: Integer;
    FdtIniEscr: TDateTime;
    FdtFinEscr: TDateTime;
  public
    property dnrcEncer: string read FdnrcEncer write FdnrcEncer;
    property numOrd: Integer read FnumOrd write FnumOrd;
    property natLivro: string read FnatLivro write FnatLivro;
    property nome: string read Fnome write Fnome;
    property qtdLin: Integer read FqtdLin write FqtdLin;
    property dtIniEscr: TDateTime read FdtIniEscr write FdtIniEscr;
    property dtFinEscr: TDateTime read FdtFinEscr write FdtFinEscr;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ900 }

constructor TJSEcdModelRegistroJ900.Create;
begin
  inherited;
  reg := 'J900';
end;

end.

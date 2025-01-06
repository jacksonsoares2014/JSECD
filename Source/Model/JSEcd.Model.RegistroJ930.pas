unit JSEcd.Model.RegistroJ930;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ930 = class(TJSEcdModelRegistro)
  private
    FidentNom: string;
    FidentCpfCnpj: string;
    FidentQualif: string;
    FcodAssin: string;
    FindCrc: string;
    Femail: string;
    Ffone: string;
    FufCrc: string;
    FnumSeqCrc: string;
    FdtCrc: TDateTime;
    FindRespLegal: string;
  public
    property identNom: string read FidentNom write FidentNom;
    property identCpfCnpj: string read FidentCpfCnpj write FidentCpfCnpj;
    property identQualif: string read FidentQualif write FidentQualif;
    property codAssin: string read FcodAssin write FcodAssin;
    property indCrc: string read FindCrc write FindCrc;
    property email: string read Femail write Femail;
    property fone: string read Ffone write Ffone;
    property ufCrc: string read FufCrc write FufCrc;
    property numSeqCrc: string read FnumSeqCrc write FnumSeqCrc;
    property dtCrc: TDateTime read FdtCrc write FdtCrc;
    property indRespLegal: string read FindRespLegal write FindRespLegal;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ930 }

constructor TJSEcdModelRegistroJ930.Create;
begin
  inherited;
  reg := 'J930';
end;

end.

unit JSEcd.Model.RegistroJ935;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroJ935 = class(TJSEcdModelRegistro)
  private
    FniCpfCnpj: string;
    FnomeAuditorFirma: string;
    FcodCvmAuditor: string;
  public
    property niCpfCnpj: string read FniCpfCnpj write FniCpfCnpj;
    property nomeAuditorFirma: string read FnomeAuditorFirma write FnomeAuditorFirma;
    property codCvmAuditor: string read FcodCvmAuditor write FcodCvmAuditor;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ935 }

constructor TJSEcdModelRegistroJ935.Create;
begin
  inherited;
  reg := 'J935';
end;

end.

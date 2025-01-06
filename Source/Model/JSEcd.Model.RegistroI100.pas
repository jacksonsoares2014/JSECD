unit JSEcd.Model.RegistroI100;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI100 = class(TJSEcdModelRegistro)
  private
    Fccus: string;
    FdtAlt: TDateTime;
    FcodCcus: string;
  public
    property dtAlt: TDateTime read FdtAlt write FdtAlt;
    property codCcus: string read FcodCcus write FcodCcus;
    property ccus: string read Fccus write Fccus;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI100 }

constructor TJSEcdModelRegistroI100.Create;
begin
  inherited;
  reg := 'I100';
end;

end.

unit JSEcd.Model.RegistroI052;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI052 = class(TJSEcdModelRegistro)
  private
    FcodCcus: string;
    FcodAgl: string;
  public
    property codCcus: string read FcodCcus write FcodCcus;
    property codAgl: string read FcodAgl write FcodAgl;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI052 }

constructor TJSEcdModelRegistroI052.Create;
begin
  inherited;
  reg := 'I052';
end;

end.

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

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI052 }

constructor TJSEcdModelRegistroI052.create;
begin
  inherited;
  reg := 'I052';
end;

end.

unit JSEcd.Model.RegistroI075;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI075 = class(TJSEcdModelRegistro)
  private
    FcodHist: string;
    FdescrHist: string;
  public
    property codHist: string read FcodHist write FcodHist;
    property descrHist: string read FdescrHist write FdescrHist;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroI075 }

constructor TJSEcdModelRegistroI075.Create;
begin
  inherited;
  reg := 'I075';
end;

end.

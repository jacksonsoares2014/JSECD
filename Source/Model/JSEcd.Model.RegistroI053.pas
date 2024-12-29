unit JSEcd.Model.RegistroI053;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI053 = class(TJSEcdModelRegistro)
  private
    FcodIdt: string;
    FcodCntCorr: string;
    FnatSubCnt: string;
  public
    property codIdt: string read FcodIdt write FcodIdt;
    property codCntCorr: string read FcodCntCorr write FcodCntCorr;
    property natSubCnt: string read FnatSubCnt write FnatSubCnt;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI053 }

constructor TJSEcdModelRegistroI053.create;
begin
  inherited;
  reg := 'I053';
end;

end.

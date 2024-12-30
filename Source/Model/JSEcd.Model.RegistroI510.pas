unit JSEcd.Model.RegistroI510;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroI510 = class(TJSEcdModelRegistro)
  private
    FtamCampo: Integer;
    FcolCampo: Integer;
    FdescCampo: string;
    FtipoCampo: string;
    FdecCampo: Integer;
    FnmCampo: string;
  public
    property nmCampo: string read FnmCampo write FnmCampo;
    property descCampo: string read FdescCampo write FdescCampo;
    property tipoCampo: string read FtipoCampo write FtipoCampo;
    property tamCampo: Integer read FtamCampo write FtamCampo;
    property decCampo: Integer read FdecCampo write FdecCampo;
    property colCampo: Integer read FcolCampo write FcolCampo;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistroI510 }

constructor TJSEcdModelRegistroI510.create;
begin
  inherited;
  reg := 'I510';
end;

end.

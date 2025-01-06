unit JSEcd.Model.RegistroJ800;

interface

uses
  JSEcd.Model.Registro,
  JSEcd.Model.Types;

type
  TJSEcdModelRegistroJ800 = class(TJSEcdModelRegistro)
  private
    FtipoDoc: TJSEcdTipoDoc;
    FdescRtf: string;
    FhashRtf: string;
    FarqRtf: string;
    FindFimRtf: string;
  public
    property tipoDoc: TJSEcdTipoDoc read FtipoDoc write FtipoDoc;
    property descRtf: string read FdescRtf write FdescRtf;
    property hashRtf: string read FhashRtf write FhashRtf;
    property arqRtf: string read FarqRtf write FarqRtf;
    property indFimRtf: string read FindFimRtf write FindFimRtf;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroJ800 }

constructor TJSEcdModelRegistroJ800.Create;
begin
  inherited;
  reg := 'J800';
  indFimRtf := 'J800FIM';
end;

end.

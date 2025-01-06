unit JSEcd.Model.RegistroK100;

interface

uses
  JSEcd.Model.Registro;

type
  TJSEcdModelRegistroK100 = class(TJSEcdModelRegistro)
  private
    FcodPais: string;
    FempCod: string;
    FCnpj: string;
    Fnome: string;
    FperPart: Double;
    Fevento: string;
    FperCons: Double;
    FdataIniEmp: TDateTime;
    FdataFinEmp: TDateTime;
  public
    property codPais: string read FcodPais write FcodPais;
    property empCod: string read FempCod write FempCod;
    property Cnpj: string read FCnpj write FCnpj;
    property nome: string read Fnome write Fnome;
    property perPart: Double read FperPart write FperPart;
    property evento: string read Fevento write Fevento;
    property perCons: Double read FperCons write FperCons;
    property dataIniEmp: TDateTime read FdataIniEmp write FdataIniEmp;
    property dataFinEmp: TDateTime read FdataFinEmp write FdataFinEmp;

    constructor Create; override;
  end;

implementation

{ TJSEcdModelRegistroK100 }

constructor TJSEcdModelRegistroK100.Create;
begin
  inherited;
  reg := 'K100';
end;

end.

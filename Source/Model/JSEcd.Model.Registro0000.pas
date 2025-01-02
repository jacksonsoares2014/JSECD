unit JSEcd.Model.Registro0000;

interface

uses
  JSEcd.Model.Registro,
  JSECD.Model.Types;

type
  TJSEcdModelRegistro0000 = class(TJSEcdModelRegistro)
  private
    FindCentralizada: TJSEcdIndCentralizada;
    FcodMun: string;
    Fcnpj: string;
    FindEscCons: string;
    FindSitEsp: TJSEcdIndSitEsp;
    Fim: string;
    Flecd: string;
    Fuf: string;
    FidentMf: string;
    FindSitIniPer: TJSEcdIndSitIniPer;
    FindFinEsc: TJSEcdIndFinEsc;
    Fie: string;
    FdtIni: TDateTime;
    FcodScp: string;
    FcodPlanRef: TJSEcdCodPlanRef;
    FindMudancPc: TJSEcdIndMudancPc;
    FcodHashSub: string;
    FdtFin: TDateTime;
    FtipEcd: TJSEcdTipEcd;
    Fnome: string;
    FindGrandePorte: TJSEcdIndGrandePorte;
    FindNire: TJSEcdIndNire;
  public
    property lecd: string read Flecd write Flecd;
    property dtIni: TDateTime read FdtIni write FdtIni;
    property dtFin: TDateTime read FdtFin write FdtFin;
    property nome: string read Fnome write Fnome;
    property cnpj: string read Fcnpj write Fcnpj;
    property uf: string read Fuf write Fuf;
    property ie: string read Fie write Fie;
    property codMun: string read FcodMun write FcodMun;
    property im: string read Fim write Fim;
    property indSitEsp: TJSEcdIndSitEsp read FindSitEsp write FindSitEsp;
    property indSitIniPer: TJSEcdIndSitIniPer read FindSitIniPer write FindSitIniPer;
    property indNire: TJSEcdIndNire read FindNire write FindNire;
    property indFinEsc: TJSEcdIndFinEsc read FindFinEsc write FindFinEsc;
    property codHashSub: string read FcodHashSub write FcodHashSub;
    property indGrandePorte: TJSEcdIndGrandePorte read FindGrandePorte write FindGrandePorte;
    property tipEcd: TJSEcdTipEcd read FtipEcd write FtipEcd;
    property codScp: string read FcodScp write FcodScp;
    property identMf: string read FidentMf write FidentMf;
    property indEscCons: string read FindEscCons write FindEscCons;
    property indCentralizada: TJSEcdIndCentralizada read FindCentralizada write FindCentralizada;
    property indMudancPc: TJSEcdIndMudancPc read FindMudancPc write FindMudancPc;
    property codPlanRef: TJSEcdCodPlanRef read FcodPlanRef write FcodPlanRef;

    constructor create; override;
  end;

implementation

{ TJSEcdModelRegistro0000 }

constructor TJSEcdModelRegistro0000.create;
begin
  inherited;
  reg := '0000';
  lecd := 'LECD';
end;

end.

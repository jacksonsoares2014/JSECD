unit JSEcd.Model.Types;

interface

type
  TJSEcdIndCentralizada = (icCentralizada, icDescentralizada);

  TJSEcdIndSitEsp = (iseVazio, iseCisao, iseFusao, iseIncorporacao, iseExtincao);

  TJSEcdIndSitIniPer = (isipNormal, isipAbertura, isipCisaoFusao, isipObrigatorio);

  TJSEcdIndFinEsc = (ifeOriginal, ifeSubstituta);

  TJSEcdCodPlanRef = (cprVazio,
                      cprPJLucroReal,
                      cprPJLucroPresumido,
                      cprFinanceirasLucroReal,
                      cprSeguradorasLucroReal,
                      cprImunes,
                      cprImunesFinanceiras,
                      cprImunesSeguradoras,
                      cprEntidadesPrevidenciaComplementar,
                      cprPartidosPoliticos,
                      cprFinanceirasLucroPresumido);

  TJSEcdIndMudancPc = (impNaoHouveMudanca, impHouveMudanca);

  TJSEcdTipEcd = (tpeEmpresaNaoParticipanteSCP, tpeEmpresaParticipanteSCP, tpeSCP);

  TJSEcdIndGrandePorte = (igpNao, igpSim);

  TJSEcdIndNire = (inNaoPossuiNIRE, inPossuiNIRE);

  TJSEcdsCodRel = (crMatrizExterior,
                   crFilialExterior,
                   crColigada,
                   crControladora,
                   crControlada,
                   crSubsidiariaIntegral,
                   crControladaEmConjunto,
                   crEntidadePropositoEspecifico,
                   crConglomerado,
                   crVinculada,
                   crrLocalizadaPaisTribFavorecido);

  TJSEcdIndDec = (idEscritruracaoMatriz, idEscritruracaoFilial);

  TJSEcdCodEntRef = (cerNenhuma, cerBCB, cerSusep, cerCVM, cerANTT, cerTSE,
                     cerSEFAZAC, cerSEFAZAL, cerSEFAZAM, cerSEFAZAP,
                     cerSEFAZBA, cerSEFAZDF, cerSEFAZCE, cerSEFAZES,
                     cerSEFAZGO, cerSEFAZMA, cerSEFAZMT, cerSEFAZMS,
                     cerSEFAZMG, cerSEFAZPA, cerSEFAZPB, cerSEFAZPE,
                     cerSEFAZPR, cerSEFAZPI, cerSEFAZRJ, cerSEFAZRN,
                     cerSEFAZRS, cerSEFAZRR, cerSEFAZRO, cerSEFAZSC,
                     cerSEFAZSP, cerSEFAZSE, cerSEFAZTO);

  TJSEcdIndicadorMovimento = (imComDadosInformados, imSemDadosInformados);

  TJSEcdIndEsc = (ieLivroDiarioCompleto,
                  ieLivroDiarioResumido,
                  ieLivroDiarioAuxiliar,
                  ieLivroBalancetesDiariosBalancos,
                  ieRazaoAuxiliar);

  TJSEcdTipoLivroAssoc = (tlaDigital, tlaOutros);

  TJSEcdTipoDoc = (tdDemonstracaoResultadoAbrangentePeriodo,
                   tdDemonstracaoFluxosCaixa,
                   tdDemonstracaoValorAdicionado,
                   tdNotasExplicativas,
                   tdRelatorioAdministracao,
                   tdParecerAuditores,
                   tdOutros);

  TJSEcdIndLcto = (ilNormal, ilEncerramento, ilExtemporaneo);

  TJSEcdIndCta = (icSintetica, icAnalitica);

  TJSEcdCodNat = (cnAtivo, cnPassivo, cnPatrimonioLiquido, cnResultado, cnCompensacao, cnOutras);

  TJSEcdIndCentralizadaHelper = record helper for TJSEcdIndCentralizada
  public
    function ToString: string;
    procedure FromString(Value: string);
//    function Caption: string;
  end;

  TJSEcdIndSitEspHelper = record helper for TJSEcdIndSitEsp
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndSitIniPerHelper = record helper for TJSEcdIndSitIniPer
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndFinEscHelper = record helper for TJSEcdIndFinEsc
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdCodPlanRefHelper = record helper for TJSEcdCodPlanRef
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndMudancPcHelper = record helper for TJSEcdIndMudancPc
    public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdTipEcdHelper = record helper for TJSEcdTipEcd
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndGrandePorteHelper = record helper for TJSEcdIndGrandePorte
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndNireHelper = record helper for TJSEcdIndNire
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdsCodRelHelper = record helper for TJSEcdsCodRel
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndDecHelper = record helper for TJSEcdIndDec
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdCodEntRefHelper = record helper for TJSEcdCodEntRef
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndicadorMovimentoHelper = record helper for TJSEcdIndicadorMovimento
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndEscHelper = record helper for TJSEcdIndEsc
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdTipoLivroAssocHelper = record helper for TJSEcdTipoLivroAssoc
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdTipoDocHelper = record helper for TJSEcdTipoDoc
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndLctoHelper = record helper for TJSEcdIndLcto
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdIndCtaHelper = record helper for TJSEcdIndCta
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

  TJSEcdCodNatHelper = record helper for TJSEcdCodNat
  public
    function ToString: string;
    procedure FromString(Value: string);
  end;

implementation

uses
  System.SysUtils;

var
  aStrCodEntRef: array of string = ['00','01','02','03','04','05','AC','AL',
                                    'AM','AP','BA','DF','CE','ES','GO','MA',
                                    'MT','MS','MG','PA','PB','PE','PR','PI',
                                    'RJ','RN','RS','RR','RO','SC','SP','SE','TO'];

  aStrCodRel: array of string = ['01','02','03','04','05','06','07','08','09','10','11'];

  aStrIndEsc: array of string = ['G','R','A','B','Z'];

  aStrTipoDoc: array of string = ['001','002','003','010','011','012','099'];

  aStrIndLcto: array of string = ['N','E','X'];

  aStrCodNat: array of string = ['01','02','03','04','05','06','07','08','09','10','11'];

{ TJSEcdIndSitEspHelper }

procedure TJSEcdIndSitEspHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := iseVazio;
  for I := 1 to 4 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndSitEsp(I);
end;

function TJSEcdIndSitEspHelper.ToString: string;
begin
  case Self of
    iseCisao: Result := '1';
    iseFusao: Result := '2';
    iseIncorporacao: Result := '3';
    iseExtincao: Result := '4';
  else
    Result := EmptyStr;
  end;
end;

{ TJSEcdIndSitIniPerHelper }

procedure TJSEcdIndSitIniPerHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := isipNormal;
  for I := 0 to 3 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndSitIniPer(I);
end;

function TJSEcdIndSitIniPerHelper.ToString: string;
begin
  case Self of
    isipNormal: Result := '0';
    isipAbertura: Result := '1';
    isipCisaoFusao: Result := '2';
    isipObrigatorio: Result := '3';
  end;
end;

{ TJSEcdIndCentralizadaHelper }

procedure TJSEcdIndCentralizadaHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := icCentralizada;
  for I := 0 to 1 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndCentralizada(I);
end;

function TJSEcdIndCentralizadaHelper.ToString: string;
begin
  case Self of
    icCentralizada: Result := '0';
    icDescentralizada: Result := '1';
  end;
end;

{ TJSEcdIndFinEscHelper }

procedure TJSEcdIndFinEscHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := ifeOriginal;
  for I := 0 to 1 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndFinEsc(I);
end;

function TJSEcdIndFinEscHelper.ToString: string;
begin
  case Self of
    ifeOriginal: Result := '0';
    ifeSubstituta: Result := '1';
  end;
end;

{ TJSEcdCodPlanRefHelper }

procedure TJSEcdCodPlanRefHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := cprVazio;
  for I := 1 to 10 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdCodPlanRef(I);
end;

function TJSEcdCodPlanRefHelper.ToString: string;
begin
  case Self of
    cprVazio: Result := EmptyStr;
    cprPJLucroReal: Result := '1';
    cprPJLucroPresumido: Result := '2';
    cprFinanceirasLucroReal: Result := '3';
    cprSeguradorasLucroReal: Result := '4';
    cprImunes: Result := '5';
    cprImunesFinanceiras: Result := '6';
    cprImunesSeguradoras: Result := '7';
    cprEntidadesPrevidenciaComplementar: Result := '8';
    cprPartidosPoliticos: Result := '9';
    cprFinanceirasLucroPresumido: Result := '10';
  end;
end;

{ TJSEcdIndMudancPcHelper }

procedure TJSEcdIndMudancPcHelper.FromString(Value: string);
begin
  Self := impNaoHouveMudanca;
  if AnsiSameText(Value, '1') then
    Self := impHouveMudanca;
end;

function TJSEcdIndMudancPcHelper.ToString: string;
begin
  case Self of
    impNaoHouveMudanca: Result := '0';
    impHouveMudanca: Result := '1';
  end;
end;

{ TJSEcdCodEntRefHelper }

procedure TJSEcdCodEntRefHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := cerNenhuma;
  for I := Low(aStrCodEntRef) to High(aStrCodEntRef) do
    if AnsiSameText(Value, aStrCodEntRef[I]) then
      Self := TJSEcdCodEntRef(I);
end;

function TJSEcdCodEntRefHelper.ToString: string;
begin
  case Self of
    cerNenhuma: Result := '00';
    cerBCB: Result := '01';
    cerSusep: Result := '02';
    cerCVM: Result := '03';
    cerANTT: Result := '04';
    cerTSE: Result := '05';
    cerSEFAZAC: Result := 'AC';
    cerSEFAZAL: Result := 'AL';
    cerSEFAZAM: Result := 'AM';
    cerSEFAZAP: Result := 'AP';
    cerSEFAZBA: Result := 'BA';
    cerSEFAZDF: Result := 'DF';
    cerSEFAZCE: Result := 'CE';
    cerSEFAZES: Result := 'ES';
    cerSEFAZGO: Result := 'GO';
    cerSEFAZMA: Result := 'MA';
    cerSEFAZMT: Result := 'MT';
    cerSEFAZMS: Result := 'MS';
    cerSEFAZMG: Result := 'MG';
    cerSEFAZPA: Result := 'PA';
    cerSEFAZPB: Result := 'PB';
    cerSEFAZPE: Result := 'PE';
    cerSEFAZPR: Result := 'PR';
    cerSEFAZPI: Result := 'PI';
    cerSEFAZRJ: Result := 'RJ';
    cerSEFAZRN: Result := 'RN';
    cerSEFAZRS: Result := 'RS';
    cerSEFAZRR: Result := 'RR';
    cerSEFAZRO: Result := 'RO';
    cerSEFAZSC: Result := 'SC';
    cerSEFAZSP: Result := 'SP';
    cerSEFAZSE: Result := 'SE';
    cerSEFAZTO: Result := 'TO';
  end;
end;

{ TJSEcdTipEcdHelper }

procedure TJSEcdTipEcdHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := tpeEmpresaNaoParticipanteSCP;
  for I := 0 to 2 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdTipEcd(I);
end;

function TJSEcdTipEcdHelper.ToString: string;
begin
  case Self of
    tpeEmpresaNaoParticipanteSCP: Result := '0';
    tpeEmpresaParticipanteSCP: Result := '1';
    tpeSCP: Result := '2';
  end;
end;

{ TJSEcdIndGrandePorteHelper }

procedure TJSEcdIndGrandePorteHelper.FromString(Value: string);
begin
  Self := igpNao;
  if AnsiSameText(Value, '1') then
    Self := igpSim;
end;

function TJSEcdIndGrandePorteHelper.ToString: string;
begin
  case Self of
    igpNao: Result := '0';
    igpSim: Result := '1';
  end;
end;

{ TJSEcdIndNireHelper }

procedure TJSEcdIndNireHelper.FromString(Value: string);
begin
  Self := inNaoPossuiNIRE;
  if AnsiSameText(Value, '1') then
    Self := inPossuiNIRE;
end;

function TJSEcdIndNireHelper.ToString: string;
begin
  case Self of
    inNaoPossuiNIRE: Result := '0';
    inPossuiNIRE: Result := '1';
  end;
end;

{ TJSEcdsCodRelHelper }

procedure TJSEcdsCodRelHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := crMatrizExterior;
  for I := Low(aStrCodRel) to High(aStrCodRel) do
    if AnsiSameText(Value, aStrCodRel[I]) then
      Self := TJSEcdsCodRel(I);
end;

function TJSEcdsCodRelHelper.ToString: string;
begin
  case Self of
    crMatrizExterior: Result := '01';
    crFilialExterior: Result := '02';
    crColigada: Result := '03';
    crControladora: Result := '04';
    crControlada: Result := '05';
    crSubsidiariaIntegral: Result := '06';
    crControladaEmConjunto: Result := '07';
    crEntidadePropositoEspecifico: Result := '08';
    crConglomerado: Result := '09';
    crVinculada: Result := '10';
    crrLocalizadaPaisTribFavorecido: Result := '11';
  end;
end;

{ TJSEcdIndDecHelper }

procedure TJSEcdIndDecHelper.FromString(Value: string);
begin
  Self := idEscritruracaoMatriz;
  if AnsiSameText(Value, '1') then
    Self := idEscritruracaoFilial;
end;

function TJSEcdIndDecHelper.ToString: string;
begin
  case Self of
    idEscritruracaoMatriz: Result := '0';
    idEscritruracaoFilial: Result := '1';
  end;
end;

{ TJSEcdIndicadorMovimentoHelper }

procedure TJSEcdIndicadorMovimentoHelper.FromString(Value: string);
begin
  Self := imComDadosInformados;
  if AnsiSameText(Value, '1') then
    Self := imSemDadosInformados;
end;

function TJSEcdIndicadorMovimentoHelper.ToString: string;
begin
  case Self of
    imComDadosInformados: Result := '0';
    imSemDadosInformados: Result := '1';
  end;
end;

{ TJSEcdIndEscHelper }

procedure TJSEcdIndEscHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := ieLivroDiarioCompleto;
  for I := Low(aStrIndEsc) to High(aStrIndEsc) do
    if AnsiSameText(Value, aStrIndEsc[I]) then
      Self := TJSEcdIndEsc(I);
end;

function TJSEcdIndEscHelper.ToString: string;
begin
  case Self of
    ieLivroDiarioCompleto: Result := 'G';
    ieLivroDiarioResumido: Result := 'R';
    ieLivroDiarioAuxiliar: Result := 'A';
    ieLivroBalancetesDiariosBalancos: Result := 'B';
    ieRazaoAuxiliar: Result := 'Z';
  end;
end;

{ TJSEcdTipoLivroAssocHelper }

procedure TJSEcdTipoLivroAssocHelper.FromString(Value: string);
begin
  Self := tlaDigital;
  if AnsiSameText(Value, '1') then
    Self := tlaOutros;
end;

function TJSEcdTipoLivroAssocHelper.ToString: string;
begin
  case Self of
    tlaDigital: Result := '0';
    tlaOutros: Result := '1';
  end;
end;

{ TJSEcdTipoDocHelper }

procedure TJSEcdTipoDocHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := tdDemonstracaoResultadoAbrangentePeriodo;
  for I := Low(aStrTipoDoc) to High(aStrTipoDoc) do
    if AnsiSameText(Value, aStrTipoDoc[I]) then
      Self := TJSEcdTipoDoc(I);
end;

function TJSEcdTipoDocHelper.ToString: string;
begin
  case Self of
    tdDemonstracaoResultadoAbrangentePeriodo: Result := '001';
    tdDemonstracaoFluxosCaixa: Result := '002';
    tdDemonstracaoValorAdicionado: Result := '003';
    tdNotasExplicativas: Result := '010';
    tdRelatorioAdministracao: Result := '011';
    tdParecerAuditores: Result := '012';
    tdOutros: Result := '099';
  end;
end;

{ TJSEcdIndLctoHelper }

procedure TJSEcdIndLctoHelper.FromString(Value: string);
var
  I: Integer;
begin
  Self := ilNormal;
  for I := Low(aStrIndLcto) to High(aStrIndLcto) do
    if AnsiSameText(Value, aStrIndLcto[I]) then
      Self := TJSEcdIndLcto(I);
end;

function TJSEcdIndLctoHelper.ToString: string;
begin
  case Self of
    ilNormal: Result := 'N';
    ilEncerramento: Result := 'E';
    ilExtemporaneo: Result := 'X';
  end;
end;

{ TJSEcdIndCtaHelper }

procedure TJSEcdIndCtaHelper.FromString(Value: string);
begin
  if AnsiSameText(Value, 'S') then
    Self := icSintetica
  else
    if AnsiSameText(Value, 'A') then
      Self := icAnalitica;
end;

function TJSEcdIndCtaHelper.ToString: string;
begin
  case Self of
    icSintetica: Result := 'S';
    icAnalitica: Result := 'A';
  end;
end;

{ TJSEcdCodNatHelper }

procedure TJSEcdCodNatHelper.FromString(Value: string);
var
  I: Integer;
begin
  for I := Low(aStrCodNat) to High(aStrCodNat) do
    if AnsiSameText(Value, aStrCodNat[I]) then
      Self := TJSEcdCodNat(I);
end;

function TJSEcdCodNatHelper.ToString: string;
begin
  case Self of
    cnAtivo: Result := '01';
    cnPassivo: Result := '02';
    cnPatrimonioLiquido: Result := '03';
    cnResultado: Result := '04';
    cnCompensacao: Result := '05';
    cnOutras: Result := '09';
  end;
end;

end.

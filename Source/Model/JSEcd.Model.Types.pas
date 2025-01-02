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

  TJSEcdIndRec = (irEscritruracaoMatriz, irEscritruracaoFilial);

  TJSEcdCodEntRef = (cerNenhuma, cerBCB, cerSusep, cerCVM, cerANTT, cerTSE,
                     cerSEFAZAC, cerSEFAZAL, cerSEFAZAM, cerSEFAZAP,
                     cerSEFAZBA, cerSEFAZDF, cerSEFAZCE, cerSEFAZES,
                     cerSEFAZGO, cerSEFAZMA, cerSEFAZMT, cerSEFAZMS,
                     cerSEFAZMG, cerSEFAZPA, cerSEFAZPB, cerSEFAZPE,
                     cerSEFAZPR, cerSEFAZPI, cerSEFAZRJ, cerSEFAZRN,
                     cerSEFAZRS, cerSEFAZRR, cerSEFAZRO, cerSEFAZSC,
                     cerSEFAZSP, cerSEFAZSE, cerSEFAZTO);

  TJSEcdIndicadorMovimento = (imComDadosInformados, imSemDadosInformados);

  TJSEcdIndEsc = (ieLivroDiarioCompleto, //G
                  ieLivroDiarioResumido, //R
                  ieLivroDiarioAuxiliar, //A
                  ieLivroBalancetesDiariosBalancos, //B
                  ieRazaoAuxiliar); //Z

  TJSEcdTipoLivroAssoc = (tlaDigital, tlaOutros);

  TJSEcdTipoDoc = (tdDemonstracaoResultadoAbrangentePeriodo,
                   tdDemonstracaoFluxosCaixa,
                   tdDemonstracaoValorAdicionado,
                   tdNotasExplicativas,
                   tdRelatorioAdministracao,
                   tdParecerAuditores,
                   tdOutros);

  TJSEcdIndCentralizadaHelper = record helper for TJSEcdIndCentralizada
  public
    function toString: string;
    procedure fromString(Value: string);
//    function Caption: string;
  end;

  TJSEcdIndSitEspHelper = record helper for TJSEcdIndSitEsp
  public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdIndSitIniPerHelper = record helper for TJSEcdIndSitIniPer
  public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdIndFinEscHelper = record helper for TJSEcdIndFinEsc
  public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdCodPlanRefHelper = record helper for TJSEcdCodPlanRef
  public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdIndMudancPcHelper = record helper for TJSEcdIndMudancPc
    public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdTipEcdHelper = record helper for TJSEcdTipEcd
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//  = (tpeEmpresaNaoParticipanteSCP, tpeEmpresaParticipanteSCP, tpeSCP);

  TJSEcdIndGrandePorteHelper = record helper for TJSEcdIndGrandePorte
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (igpNao, igpSim);

  TJSEcdIndNireHelper = record helper for TJSEcdIndNire
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (inNaoPossuiNIRE, inPossuiNIRE);

  TJSEcdsCodRelHelper = record helper for TJSEcdsCodRel
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (crMatrizExterior,
//                   crFilialExterior,
//                   crColigada,
//                   crControladora,
//                   crControlada,
//                   crSubsidiariaIntegral,
//                   crControladaEmConjunto,
//                   crEntidadePropositoEspecifico,
//                   crConglomerado,
//                   crVinculada,
//                   crrLocalizadaPaisTribFavorecido);

  TJSEcdIndRecHelper = record helper for TJSEcdIndRec
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (irEscritruracaoMatriz, irEscritruracaoFilial);

  TJSEcdCodEntRefHelper = record helper for TJSEcdCodEntRef
  public
    function toString: string;
    procedure fromString(Value: string);
  end;

  TJSEcdIndicadorMovimentoHelper = record helper for TJSEcdIndicadorMovimento
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (imComDadosInformados, imSemDadosInformados);

  TJSEcdIndEscHelper = record helper for TJSEcdIndEsc
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (ieLivroDiarioCompleto, //G
//                  ieLivroDiarioResumido, //R
//                  ieLivroDiarioAuxiliar, //A
//                  ieLivroBalancetesDiariosBalancos, //B
//                  ieRazaoAuxiliar); //Z

  TJSEcdTipoLivroAssocHelper = record helper for TJSEcdTipoLivroAssoc
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (tlaDigital, tlaOutros);

  TJSEcdTipoDocHelper = record helper for TJSEcdTipoDoc
  public
    function toString: string;
    procedure fromString(Value: string);
  end;
//   = (tdDemonstracaoResultadoAbrangentePeriodo,
//                   tdDemonstracaoFluxosCaixa,
//                   tdDemonstracaoValorAdicionado,
//                   tdNotasExplicativas,
//                   tdRelatorioAdministracao,
//                   tdParecerAuditores,
//                   tdOutros);


implementation

uses
  System.SysUtils;

var
  aStrCodEntRef: array of string = ['00','01','02','03','04','05','AC','AL',
                                    'AM','AP','BA','DF','CE','ES','GO','MA',
                                    'MT','MS','MG','PA','PB','PE','PR','PI',
                                    'RJ','RN','RS','RR','RO','SC','SP','SE','TO'];

{ TJSEcdIndSitEspHelper }

procedure TJSEcdIndSitEspHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := iseVazio;
  for I := 1 to 4 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndSitEsp(I);
end;

function TJSEcdIndSitEspHelper.toString: string;
begin
  case self of
    iseCisao: Result := '1';
    iseFusao: Result := '2';
    iseIncorporacao: Result := '3';
    iseExtincao: Result := '4';
  else
    Result := EmptyStr;
  end;
end;

{ TJSEcdIndSitIniPerHelper }

procedure TJSEcdIndSitIniPerHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := isipNormal;
  for I := 0 to 3 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndSitIniPer(I);
end;

function TJSEcdIndSitIniPerHelper.toString: string;
begin
  case self of
    isipNormal: Result := '0';
    isipAbertura: Result := '1';
    isipCisaoFusao: Result := '2';
    isipObrigatorio: Result := '3';
  end;
end;

{ TJSEcdIndCentralizadaHelper }

procedure TJSEcdIndCentralizadaHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := icCentralizada;
  for I := 0 to 1 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndCentralizada(I);
end;

function TJSEcdIndCentralizadaHelper.toString: string;
begin
  case self of
    icCentralizada: Result := '0';
    icDescentralizada: Result := '1';
  end;
end;

{ TJSEcdIndFinEscHelper }

procedure TJSEcdIndFinEscHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := ifeOriginal;
  for I := 0 to 1 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdIndFinEsc(I);
end;

function TJSEcdIndFinEscHelper.toString: string;
begin
  case self of
    ifeOriginal: Result := '0';
    ifeSubstituta: Result := '1';
  end;
end;

{ TJSEcdCodPlanRefHelper }

procedure TJSEcdCodPlanRefHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := cprVazio;
  for I := 1 to 10 do
    if AnsiSameText(Value, IntToStr(I)) then
      Self := TJSEcdCodPlanRef(I);
end;

function TJSEcdCodPlanRefHelper.toString: string;
begin
  case self of
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

procedure TJSEcdIndMudancPcHelper.fromString(Value: string);
begin
  Self := impNaoHouveMudanca;
  if AnsiSameText(Value, '1') then
    Self := impHouveMudanca;
end;

function TJSEcdIndMudancPcHelper.toString: string;
begin
  case self of
    impNaoHouveMudanca: Result := '0';
    impHouveMudanca: Result := '1';
  end;
end;

{ TJSEcdCodEntRefHelper }

procedure TJSEcdCodEntRefHelper.fromString(Value: string);
var
  I: Integer;
begin
  Self := cerNenhuma;
  for I := 1 to 33 do
    if AnsiSameText(Value, aStrCodEntRef(I)) then
      Self := TJSEcdCodEntRef(I);
end;

function TJSEcdCodEntRefHelper.toString: string;
begin
  case self of
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

end.

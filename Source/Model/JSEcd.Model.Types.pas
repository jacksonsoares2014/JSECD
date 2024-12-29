unit JSEcd.Model.Types;

interface

type
  TJSEcdIndCentralizada = (icCentralizada, icDescentralizada);

  TJSEcdIndSitEsp = (iseCisao, iseFusao, iseIncorporacao, iseExtincao);

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


//  TJSEcdIndCentralizadaHelper = record helper for TJSEcdIndCentralizada
//  public
//    function toString: string;
//    procedure fromString(s: string);
//    function Caption: string;
//  end;

implementation

end.

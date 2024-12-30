unit JSEcd.Service.Interfaces;

interface

type
  IJSEcdConfig<I: IInterface> = interface;
  IJSEcdConfigAssociacaoPlanoGoverno<I: IInterface> = interface;
  IJSEcdConfigGeral<I: IInterface> = interface;
  IJSEcdConfigFiscal<I: IInterface> = interface;
  IJSEcdConfigSignatario<I: IInterface> = interface;
  IJSEcdConfigDemonstracoesContabeis<I: IInterface> = interface;
  IJSEcdConfigInfoFiliaisLivroAuxiliar<I: IInterface> = interface;
  IJSEcdConfigInfoCadastroParticipante<I: IInterface> = interface;
  IJSEcdConfigInfoPlanoAnteriorSaldos<I: IInterface> = interface;
  IJSEcdConfigConglomeradoEconomicos<I: IInterface> = interface;

  IJSEcdService = interface
    ['{EADF2DEB-7ED2-4BB9-9AC0-BD8EE28703EA}']
    function Config: IJSEcdConfig<IJSEcdService>;
    function Execute: IJSEcdService;
  end;

  IJSEcdConfig<I: IInterface> = interface
    ['{2EF6489D-FBDD-4B86-82F2-EC8FE0B9D75D}']
    function Exercicio(Value: Integer): IJSEcdConfig<I>; overload;
    function PeriodoInicial(Value: Integer): IJSEcdConfig<I>; overload;
    function PeriodoFinal(Value: Integer): IJSEcdConfig<I>; overload;
    function DataInicial(Value: TDateTime): IJSEcdConfig<I>; overload;
    function DataFinal(Value: TDateTime): IJSEcdConfig<I>; overload;

    function Exercicio: Integer; overload;
    function PeriodoInicial: Integer; overload;
    function PeriodoFinal: Integer; overload;
    function DataInicial: TDateTime; overload;
    function DataFinal: TDateTime; overload;

    function AssociacaoPlanoGoverno: IJSEcdConfigAssociacaoPlanoGoverno<IJSEcdConfig<I>>;
    function Geral: IJSEcdConfigGeral<IJSEcdConfig<I>>;
    function Fiscal: IJSEcdConfigFiscal<IJSEcdConfig<I>>;
    function Signatario: IJSEcdConfigSignatario<IJSEcdConfig<I>>;
    function DemonstracoesContabeis: IJSEcdConfigDemonstracoesContabeis<IJSEcdConfig<I>>;
    function InfoFiliaisLivroAuxiliar: IJSEcdConfigInfoFiliaisLivroAuxiliar<IJSEcdConfig<I>>;
    function InfoCadastroParticipante: IJSEcdConfigInfoCadastroParticipante<IJSEcdConfig<I>>;
    function InfoPlanoAnteriorSaldos: IJSEcdConfigInfoPlanoAnteriorSaldos<IJSEcdConfig<I>>;
    function ConglomeradoEconomicos: IJSEcdConfigConglomeradoEconomicos<IJSEcdConfig<I>>;

    function &Begin: IJSEcdConfig<I>;
    function &End: I;
  end;


//    property cdsRegistroI157: TClientDataSet read FcdsRegistroI157 write SetcdsRegistroI157;
//    property CdsDemonstrativo: TClientDataSet read FCdsDemonstrativo write SetCdsDemonstrativo;
//    property GeraFCont: boolean read FGeraFCont write SetGeraFCont;
//ok    property dtInicial: String read FdtInicial write SetdtInicial;
//ok    property dtFinal: String read FdtFinal write SetdtFinal;
//ok    property IndicadorSituacaoEspecial: String read FIndicadorSituacaoEspecial write SetIndicadorSituacaoEspecial;
//ok    property sIndicadorSubgrupo: String read FsIndicadorSubgrupo write SetsIndicadorSubgrupo;
//ok    property nExercicio : Extended read FnExercicio write SetnExercicio;
//ok    property iPeriodoIni : Integer read FiPeriodoIni write SetiPeriodoIni;
//ok    property iPeriodoFim : Integer read FiPeriodoFim write SetiPeriodoFim;
//ok    property iTipoDocNIRE : Integer read FiTipoDocNIRE write SetiTipoDocNIRE;
//    property cds : TClientDataSet read Fcds write Setcds;
//ok    property sCodigoInstituicaoResponsavelAdministracaoCadastro : String read FsCodigoInstituicaoResponsavelAdministracaoCadastro write SetsCodigoInstituicaoResponsavelAdministracaoCadastro;
//ok    property sTipoEscrituracao : string read FsTipoEscrituracao write SetsTipoEscrituracao;
//    property cdsListaMatrizFilial : TClientDataSet read FcdsListaMatrizFilial write SetcdsListaMatrizFilial;
//ok    property iAtributoTipoRelacionamento : Integer read FiAtributoTipoRelacionamento write SetiAtributoTipoRelacionamento;
//ok    property iInscricaoEstadualContribuinteSubstituto : Integer read FiInscricaoEstadualContribuinteSubstituto write SetiInscricaoEstadualContribuinteSubstituto;
//ok    property iIdentificadorTrabalhador : Integer read FiIdentificadorTrabalhador write SetiIdentificadorTrabalhador;
//ok    property iTipoDocSUFRAMA : Integer read FiTipoDocSUFRAMA write SetiTipoDocSUFRAMA;
//ok    property iAtributoDataInicioRelacionamento : Integer read FiAtributoDataInicioRelacionamento write SetiAtributoDataInicioRelacionamento;
//ok    property iAtributoDataFimRelacionamento : Integer read FiAtributoDataFimRelacionamento write SetiAtributoDataFimRelacionamento;
//    property iTipoEscrituracao : Integer read FiTipoEscrituracao write SetiTipoEscrituracao;
//ok    property sNumeroOrdemInstrumentoEscrituracao : string read FsNumeroOrdemInstrumentoEscrituracao write SetsNumeroOrdemInstrumentoEscrituracao;
//ok    property sNaturezaLivro : string read FsNaturezaLivro write SetsNaturezaLivro;
//    property sPeriodoIni : String read FsPeriodoIni write SetsPeriodoIni;
//    property sPeriodoFim : String read FsPeriodoFim write SetsPeriodoFim;
//ok    property sDataArquivamentoAtosConstituitivos : String read FsDataArquivamentoAtosConstituitivos write SetsDataArquivamentoAtosConstituitivos;
//ok    property sDataArquivamentoAtoConversao : String read FsDataArquivamentoAtoConversao write SetsDataArquivamentoAtoConversao;
//ok    property sCodigoEntidadeResponsavelManutencaoPlanoContasReferencial : String read FsCodigoEntidadeResponsavelManutencaoPlanoContasReferencial write SetsCodigoEntidadeResponsavelManutencaoPlanoContasReferencial;
//ok    property iDemonstrativoBaseBalanco : Double read FiDemonstrativoBaseBalanco write SetiDemonstrativoBaseBalanco;
//ok    property iDemonstrativoBaseDRE : Double read FiDemonstrativoBaseDRE write SetiDemonstrativoBaseDRE;
//ok    property iDemonstrativoDLPA  : Integer read FiDemonstrativoDLPA write SetiDemonstrativoDLPA;
//ok    property iIndicaDLPADMPL  : Integer read FiIndicaDLPADMPL write SetiIndicaDLPADMPL;
//ok    property iDemonstrativoDFC   : Integer read FiDemonstrativoDFC write SetiDemonstrativoDFC;
//ok    property iDemonstrativoDVA   : Integer read FiDemonstrativoDVA write SetiDemonstrativoDVA;
//ok    property sPeriodoApuracao : String read FsPeriodoApuracao write SetsPeriodoApuracao;
//    property CdsSaldoContasAntesResultado : TClientDataSet read FCdsSaldoContasAntesResultado write SetCdsSaldoContasAntesResultado;
//ok    property sDemonstrativoBaseBalanco : String read FsDemonstrativoBaseBalanco write SetsDemonstrativoBaseBalanco;
//ok    property sConsolidado: String read FsConsolidado write SetsConsolidado;
//
//ok    property sNomeAuditorIndependente : String read FsNomeAuditorIndependente write SetsNomeAuditorIndependente;
//ok    property sRegistroAuditorIndependenteCVM  : String read FsRegistroAuditorIndependenteCVM write SetsRegistroAuditorIndependenteCVM;
//ok    property sDoc  : String read FsDoc write SetsDoc;
//
//ok    property sNomeSignatarioContador : String read FsNomeSignatarioContador write SetsNomeSignatarioContador;
//ok    property sCPFSignatarioContador : String read FsCPFSignatarioContador write SetsCPFSignatarioContador;
//ok    property sCodigoAssinanteContador: String read FsCodigoAssinanteContador write SetsCodigoAssinanteContador;
//ok    property sCRCSignatarioContador : String read FsCRCSignatarioContador write SetsCRCSignatarioContador;
//ok    property sEmailContador           : String read FsEmailContador write SetsEmailContador;
//ok    property sEstadoCRCContador       : String read FsEstadoCRCContador write SetsEstadoCRCContador;
//ok    property sDataValidadeCRCContador : String read FsDataValidadeCRCContador write SetsDataValidadeCRCContador;
//ok    property sTelefoneContador        : String read FsTelefoneContador write SetsTelefoneContador;
//ok    property sNomeSignatarioLegal : String read FsNomeSignatarioLegal write SetsNomeSignatarioLegal;
//ok    property sCPFSignatarioLegal : String read FsCPFSignatarioLegal write SetsCPFSignatarioLegal;
//ok    property sCodigoAssinanteLegal : String read FsCodigoAssinanteLegal write SetsCodigoAssinanteLegal;
//ok    property sCRCSignatarioLegal : String read FsCRCSignatarioLegal write SetsCRCSignatarioLegal;
//ok    property seMailSignatarioLegal            : String read FseMailSignatarioLegal write SetseMailSignatarioLegal;
//ok    property sUFCRCSignatarioLegal            : String read FsUFCRCSignatarioLegal write SetsUFCRCSignatarioLegal;
//ok    property sDataValidadeCRCSignatarioLegal  : String read FsDataValidadeCRCSignatarioLegal write SetsDataValidadeCRCSignatarioLegal;
//ok    property sTelefoneSignatarioLegal         : String read FsTelefoneSignatarioLegal write SetsTelefoneSignatarioLegal;
//ok    property sQualificacaoPessoaJuridica : String read FsQualificacaoPessoaJuridica write SetsQualificacaoPessoaJuridica;
//    property iPeriodoApuracao : Integer read FiPeriodoApuracao write SetiPeriodoApuracao;
//ok    property sFormaTributacao : String read FsFormaTributacao write SetsFormaTributacao;
//    property iFormaTributacao : Integer read FiFormaTributacao write SetiFormaTributacao;
//    property nResultadoPeriodo1Trimestre  : Extended read FnResultadoPeriodo1Trimestre write SetnResultadoPeriodo1Trimestre;
//    property sSituacaoResultado1Trimestre : String read FsSituacaoResultado1Trimestre write SetsSituacaoResultado1Trimestre;
//    property nResultadoPeriodo2Trimestre  : Extended read FnResultadoPeriodo2Trimestre write SetnResultadoPeriodo2Trimestre;
//    property sSituacaoResultado2Trimestre : String read FsSituacaoResultado2Trimestre write SetsSituacaoResultado2Trimestre;
//    property nResultadoPeriodo3Trimestre  : Extended read FnResultadoPeriodo3Trimestre write SetnResultadoPeriodo3Trimestre;
//    property sSituacaoResultado3Trimestre : String read FsSituacaoResultado3Trimestre write SetsSituacaoResultado3Trimestre;
//    property nResultadoPeriodo4Trimestre  : Extended read FnResultadoPeriodo4Trimestre write SetnResultadoPeriodo4Trimestre;
//    property sSituacaoResultado4Trimestre : String read FsSituacaoResultado4Trimestre write SetsSituacaoResultado4Trimestre;
//ok    property IndicadorSituacaoIni  : String read FIndicadorSituacaoIni write SetIndicadorSituacaoIni;
//ok    property IndicadorExisteNIRE   : String read FIndicadorExisteNIRE write SetIndicadorExisteNIRE;
//ok    property IndicadorFinalidadeEscrturacao : String read FIndicadorFinalidadeEscrturacao write SetIndicadorFinalidadeEscrturacao;
//ok    property HashEscrituracaoSubstituida : String read FHashEscrituracaoSubstituida write SetHashEscrituracaoSubstituida;
//ok    property NIREEscrituracaoSubst : String read FNIREEscrituracaoSubst write SetNIREEscrituracaoSubst;
//ok    property IndicadorEmpresaGrandePorte : String read FIndicadorEmpresaGrandePorte write SetIndicadorEmpresaGrandePorte;
//    property sCodigoAssinanteContador2 : String read FsCodigoAssinanteContador2 write SetsCodigoAssinanteContador2;
//    property sCodigoAssinanteLegal2 : String read FsCodigoAssinanteLegal2 write SetsCodigoAssinanteLegal2;
//    property MemLog1 : TStrings read FMemLog1 write SetMemLog1;
//    property MemLog2 : TStrings read FMemLog2 write SetMemLog2;
//
//    property MemLogI200_1Tri : TStrings read FMemLogI200_1Tri write SetMemLogI200_1Tri;
//    property MemLogI200_2Tri : TStrings read FMemLogI200_2Tri write SetMemLogI200_2Tri;
//    property MemLogI200_3Tri : TStrings read FMemLogI200_3Tri write SetMemLogI200_3Tri;
//    property MemLogI200_4Tri : TStrings read FMemLogI200_4Tri write SetMemLogI200_4Tri;
//    property MemLog4 : TStrings read FMemLog4 write SetMemLog4;
//    property MemLog3 : TStrings read FMemLog3 write SetMemLog3;
//    property sNomeArquivo : String read FsNomeArquivo write SetsNomeArquivo;
//    property DriverOracle : Boolean read FDriverOracle write SetDriverOracle;
//ok    property iIndicaContabCentralizada  : Integer read FIndicaContabCentralizada write SetIndicaContabCentralizada;
//
//
//    property sNomeDiretorio : String read FsNomeDiretorio write SetsNomeDiretorio;
//    property sNomeChave : String read FsNomeChave write SetsNomeChave;
//
//
//ok    property TipoECD   : String read FTipoECD write SetTipoECD;
//
//ok    property sConsolidadoSCP   : String read FsConsolidadoSCP write SetsConsolidadoSCP;
//
//    property scbIdentifSocioOstenciva   : String read FscbIdentifSocioOstenciva write SetscbIdentifSocioOstenciva;
//    property IdEmpresaSocioOstenciva   : Integer read FIdEmpresaSocioOstenciva write SetIdEmpresaSocioOstenciva;
//    property IdentifacaoSCP   : String read FIdentifacaoSCP write SetIdentifacaoSCP;
//
//    property sMoeda   : String read FsMoeda write SetsMoeda;
//    property sIdMoeda   : String read FsIdMoeda write SetsIdMoeda;
//
//    property CdsMoedaFuncional : TClientDataSet read FCdsMoedaFuncional write SetCdsMoedaFuncional;
//ok    property iEmpresaMatriz: Integer read FiEmpresaMatriz write SetIEmpresaMatriz;
//
//ok    property NomeSignatarioCertificado: String read FsNomeSignatarioCertificado write SetsNomeSignatarioCertificado;
//ok    property CNPJSignatarioCertificado: String read FsCNPJSignatarioCertificado write SetsCNPJSignatarioCertificado;
//ok    property EmailSignatarioCertificado: String read FsEmailSignatarioCertificado write SetEmailSignatarioCertificado;
//ok    property TelefoneSignatarioCertificado: String read FsTelefoneSignatarioCertificado write SetTelefoneSignatarioCertificado;
//ok    property CodigoAssinanteCertificado: String read FsCodigoAssinanteCertificado write SetCodigoAssinanteCertificado;
//ok    property ResponsavelLegalCertificado: String read FsResponsavelLegalCertificado write SetResponsavelLegalCertificado;
//    property iGeraDREJ100: Boolean read FiGeraDREJ100 write SetiGeraDREJ100;
//ok    property bLancContabil: Boolean read FbLancContabil write SetibLancContabil;
//
//    property bchAtivaThread: Boolean read FbchAtivaThread write SetbchAtivaThread;
//    property sqlDiarioAuxiliar_I200: TCMSqlParams read FsqlDiarioAuxiliar_I200 write SetsqlDiarioAuxiliar_I200;
//    property sqlDiarioAuxiliar_I250: TCMSqlParams read FsqlDiarioAuxiliar_I250 write SetsqlDiarioAuxiliar_I250;
//    property cdsEmpresasSelecionadas : TClientDataSet read FcdsEmpresasSelecionadas write SetcdsEmpresasSelecionadas;
//
//    property ovData1 : TClientDataSet read FovData1 write SetovData1;
//    property ovData2 : TClientDataSet read FovData2 write SetovData2;
//    property ovData3 : TClientDataSet read FovData3 write SetovData3;
//    property ovData4 : TClientDataSet read FovData4 write SetovData4;
//
//
//    property bAbort : Boolean read FbAbort write SetbAbort;
//    property dPlanoRefAtivo: Double read FdPlanoRefAtivo write SetdPlanoRefAtivo;
//    property CdsCompConsolEmp: TClientDataSet read FCdsCompConsolEmp write FCdsCompConsolEmp;
//    property CdsConglomeradoEconomico: TClientDataSet read FCdsConglomeradoEconomico write FCdsConglomeradoEconomico;
//    property Empresa: Extended read FEmpresa write SetEmpresa;


  IJSEcdConfigAssociacaoPlanoGoverno<I: IInterface> = interface
    ['{E392A08B-64B3-4898-849E-D01D6D4E4C08}']
  end;

  IJSEcdConfigGeral<I: IInterface> = interface
    ['{E39B7745-F32A-43E7-9D2D-46629F20BE27}']
    function TipoEscrituracao(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicadorFinalidadeEscrturacao(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicadorSituacaoIni(Value: string): IJSEcdConfigGeral<I>; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicadorEmpresaGrandePorte(Value: string): IJSEcdConfigGeral<I>; overload;
    function TipoECD(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicadorSituacaoEspecial(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicadorExisteNIRE(Value: string): IJSEcdConfigGeral<I>; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial(Value: string): IJSEcdConfigGeral<I>; overload;
    function IndicaContabCentralizada(Value: Integer): IJSEcdConfigGeral<I>; overload;

    function TipoEscrituracao: string; overload;
    function IndicadorFinalidadeEscrturacao: string; overload;
    function IndicadorSituacaoIni: string; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro: string; overload;
    function IndicadorEmpresaGrandePorteValue: string; overload;
    function TipoECD: string; overload;
    function IndicadorSituacaoEspecial: string; overload;
    function IndicadorExisteNIRE: string; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string; overload;
    function IndicaContabCentralizada: Integer; overload;

    function IndicadorSubgrupo(Value: string): IJSEcdConfigGeral<I>; overload;
    function Consolidado(Value: string): IJSEcdConfigGeral<I>; overload;
    function ConsolidadoSCP(Value: string): IJSEcdConfigGeral<I>; overload;
    function EmpresaMatriz(Value: Integer): IJSEcdConfigGeral<I>; overload;

    function IndicadorSubgrupo: string; overload;
    function Consolidado: string; overload;
    function ConsolidadoSCP: string; overload;
    function EmpresaMatriz: Integer; overload;

    function HashEscrituracaoSubstituida(Value: string): IJSEcdConfigGeral<I>; overload;
    function NIREEscrituracaoSubst(Value: string): IJSEcdConfigGeral<I>; overload;

    function HashEscrituracaoSubstituida: string; overload;
    function NIREEscrituracaoSubst: string; overload;
  end;

  IJSEcdConfigFiscal<I: IInterface> = interface
    ['{AD910218-D340-4B33-ACF9-8E11F9809CB1}']
    function NumeroOrdemInstrumentoEscrituracao(Value: string): IJSEcdConfigFiscal<I>; overload;
    function NaturezaLivro(Value: string): IJSEcdConfigFiscal<I>; overload;
    function TipoDocNIRE(Value:  Integer): IJSEcdConfigFiscal<I>; overload;
    function DataArquivamentoAtosConstituitivos(Value: string): IJSEcdConfigFiscal<I>; overload;
    function DataArquivamentoAtoConversao(Value: string): IJSEcdConfigFiscal<I>; overload;

    function NumeroOrdemInstrumentoEscrituracao: string; overload;
    function NaturezaLivro: string; overload;
    function TipoDocNIRE: Integer; overload;
    function DataArquivamentoAtosConstituitivos: string; overload;
    function DataArquivamentoAtoConversao: string; overload;
  end;

  IJSEcdConfigSignatario<I: IInterface> = interface
    ['{DB15EF59-2846-405B-9622-E08D2B85A885}']
    function CodigoAssinanteContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function NomeSignatarioContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function CPFSignatarioContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function EmailContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function TelefoneContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function CRCSignatarioContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function EstadoCRCContador(Value: string): IJSEcdConfigSignatario<I>; overload;
    function DataValidadeCRCContador(Value: string): IJSEcdConfigSignatario<I>; overload;

    function CodigoAssinanteContador: string; overload;
    function NomeSignatarioContador: string; overload;
    function CPFSignatarioContador: string; overload;
    function EmailContador: string; overload;
    function TelefoneContador: string; overload;
    function CRCSignatarioContador: string; overload;
    function EstadoCRCContador: string; overload;
    function DataValidadeCRCContador: string; overload;

    function CodigoAssinanteLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function NomeSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function CPFSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function EmailSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function TelefoneSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function CRCSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function UFCRCSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;
    function DataValidadeCRCSignatarioLegal(Value: string): IJSEcdConfigSignatario<I>; overload;

    function CodigoAssinanteLegal: string; overload;
    function NomeSignatarioLegal: string; overload;
    function CPFSignatarioLegal: string; overload;
    function EmailSignatarioLegal: string; overload;
    function TelefoneSignatarioLegal: string; overload;
    function CRCSignatarioLegal: string; overload;
    function UFCRCSignatarioLegal: string; overload;
    function DataValidadeCRCSignatarioLegal: string; overload;

    function NomeAuditorIndependente(Value: string): IJSEcdConfigSignatario<I>; overload;
    function RegistroAuditorIndependenteCVM(Value: string): IJSEcdConfigSignatario<I>; overload;
    function Doc(Value: string): IJSEcdConfigSignatario<I>; overload;

    function NomeAuditorIndependente: string; overload;
    function RegistroAuditorIndependenteCVM: string; overload;
    function Doc: string; overload;

    function CodigoAssinanteCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;
    function NomeSignatarioCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;
    function CNPJSignatarioCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;
    function EmailSignatarioCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;
    function TelefoneSignatarioCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;
    function ResponsavelLegalCertificado(Value: string): IJSEcdConfigSignatario<I>; overload;

    function CodigoAssinanteCertificado: string; overload;
    function NomeSignatarioCertificado: string; overload;
    function CNPJSignatarioCertificado: string; overload;
    function EmailSignatarioCertificado: string; overload;
    function TelefoneSignatarioCertificado: string; overload;
    function ResponsavelLegalCertificado: string; overload;
  end;

  IJSEcdConfigDemonstracoesContabeis<I: IInterface> = interface
    ['{376B6010-06DE-42F8-9C3F-AD3BC4C02BE9}']
    function DemonstrativoBaseBalancoDescr(Value: string): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseBalanco(Value: Double): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseDRE(Value: Double): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDLPA(Value: Integer): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function LancContabil(Value: Boolean): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function IndicaDLPADMPL(Value: Integer): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDFC(Value: Integer): IJSEcdConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDVA(Value: Integer): IJSEcdConfigDemonstracoesContabeis<I>; overload;

    function DemonstrativoBaseBalancoDescr: string; overload;
    function DemonstrativoBaseBalanco: Double; overload;
    function DemonstrativoBaseDRE: Double; overload;
    function DemonstrativoDLPA: Integer; overload;
    function LancContabil: Boolean; overload;
    function IndicaDLPADMPL: Integer; overload;
    function DemonstrativoDFC: Integer; overload;
    function DemonstrativoDVA: Integer; overload;
  end;

  IJSEcdConfigInfoFiliaisLivroAuxiliar<I: IInterface> = interface
    ['{4E4B2F47-BE4C-480B-9D8B-848FD0D10C55}']
  end;

  IJSEcdConfigInfoCadastroParticipante<I: IInterface> = interface
    ['{B255B5FE-194E-4408-95E7-F0B7306C53BF}']
    function AtributoTipoRelacionamento(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataInicioRelacionamento(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataFimRelacionamento(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;
    function TipoDocSUFRAMA(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;
    function IdentificadorTrabalhador(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;
    function InscricaoEstadualContribuinteSubstituto(Value: Integer): IJSEcdConfigInfoCadastroParticipante<I>; overload;

    function AtributoTipoRelacionamento: Integer; overload;
    function AtributoDataInicioRelacionamento: Integer; overload;
    function AtributoDataFimRelacionamento: Integer; overload;
    function TipoDocSUFRAMA: Integer; overload;
    function IdentificadorTrabalhador: Integer; overload;
    function InscricaoEstadualContribuinteSubstituto: Integer; overload;
  end;

//FCont ?????
//    property sQualificacaoPessoaJuridica : String read FsQualificacaoPessoaJuridica write SetsQualificacaoPessoaJuridica;
//    property sPeriodoApuracao : String read FsPeriodoApuracao write SetsPeriodoApuracao;
//    property sFormaTributacao : String read FsFormaTributacao write SetsFormaTributacao;

  IJSEcdConfigInfoPlanoAnteriorSaldos<I: IInterface> = interface
    ['{396079DD-4A94-448C-A593-62B8FAC0A712}']
  end;

  IJSEcdConfigConglomeradoEconomicos<I: IInterface> = interface
    ['{34ECFAC7-753F-464B-8934-1B6641A5CF72}']
  end;

implementation

end.

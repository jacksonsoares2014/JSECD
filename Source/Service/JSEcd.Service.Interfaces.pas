unit JSEcd.Service.Interfaces;

interface

uses
  JSEcd.DAO.Interfaces;


type
  IJSEcdServiceConfig<I: IInterface> = interface;
  IJSEcdServiceConfigAssociacaoPlanoGoverno<I: IInterface> = interface;
  IJSEcdServiceConfigGeral<I: IInterface> = interface;
  IJSEcdServiceConfigFiscal<I: IInterface> = interface;
  IJSEcdServiceConfigSignatario<I: IInterface> = interface;
  IJSEcdServiceConfigDemonstracoesContabeis<I: IInterface> = interface;
  IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I: IInterface> = interface;
  IJSEcdServiceConfigInfoCadastroParticipante<I: IInterface> = interface;
  IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I: IInterface> = interface;
  IJSEcdServiceConfigConglomeradoEconomicos<I: IInterface> = interface;
  IJSEcdDAOCollection = interface;
  IJSEcdDAOCollectionBloco0 = interface;
  IJSEcdDAOCollectionBlocoIParte1 = interface;
  IJSEcdDAOCollectionBlocoIParte2 = interface;
  IJSEcdDAOCollectionBlocoIParte3 = interface;
  IJSEcdDAOCollectionBlocoIParte4 = interface;
  IJSEcdDAOCollectionBlocoIParte5 = interface;
  IJSEcdDAOCollectionBlocoJ = interface;
  IJSEcdDAOCollectionBlocoK = interface;

  IJSEcdService = interface
    ['{EADF2DEB-7ED2-4BB9-9AC0-BD8EE28703EA}']
    function Config: IJSEcdServiceConfig<IJSEcdService>;
    function DAO: IJSEcdDAOCollection;
    function Execute: IJSEcdService;
  end;

  IJSEcdServiceFactory = interface
    ['{13841F67-3824-42BE-A546-0973908A63A0}']
    function createService: IJSEcdService;
  end;

  IJSEcdServiceConfig<I: IInterface> = interface
    ['{2EF6489D-FBDD-4B86-82F2-EC8FE0B9D75D}']
    function Empresa(Value: Extended): IJSEcdServiceConfig<I>; overload;
    function Exercicio(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoInicial(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoFinal(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function DataInicial(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function DataFinal(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function NomeDiretorio(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeChave(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivo(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoParte1(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoParte2(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoParte3(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoParte4(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoI200_1Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoI200_2Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoI200_3Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoI200_4Tri(Value: string): IJSEcdServiceConfig<I>; overload;

    function Empresa: Extended; overload;
    function Exercicio: Integer; overload;
    function PeriodoInicial: Integer; overload;
    function PeriodoFinal: Integer; overload;
    function DataInicial: TDateTime; overload;
    function DataFinal: TDateTime; overload;
    function NomeDiretorio: string; overload;
    function NomeChave: string; overload;
    function NomeArquivo: string; overload;
    function NomeArquivoParte1: string; overload;
    function NomeArquivoParte2: string; overload;
    function NomeArquivoParte3: string; overload;
    function NomeArquivoParte4: string; overload;
    function NomeArquivoI200_1Tri: string; overload;
    function NomeArquivoI200_2Tri: string; overload;
    function NomeArquivoI200_3Tri: string; overload;
    function NomeArquivoI200_4Tri: string; overload;

    function AssociacaoPlanoGoverno: IJSEcdServiceConfigAssociacaoPlanoGoverno<IJSEcdServiceConfig<I>>;
    function Geral: IJSEcdServiceConfigGeral<IJSEcdServiceConfig<I>>;
    function Fiscal: IJSEcdServiceConfigFiscal<IJSEcdServiceConfig<I>>;
    function Signatario: IJSEcdServiceConfigSignatario<IJSEcdServiceConfig<I>>;
    function DemonstracoesContabeis: IJSEcdServiceConfigDemonstracoesContabeis<IJSEcdServiceConfig<I>>;
    function InfoFiliaisLivroAuxiliar: IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<IJSEcdServiceConfig<I>>;
    function InfoCadastroParticipante: IJSEcdServiceConfigInfoCadastroParticipante<IJSEcdServiceConfig<I>>;
    function InfoPlanoAnteriorSaldos: IJSEcdServiceConfigInfoPlanoAnteriorSaldos<IJSEcdServiceConfig<I>>;
    function ConglomeradoEconomicos: IJSEcdServiceConfigConglomeradoEconomicos<IJSEcdServiceConfig<I>>;

    function &Begin: IJSEcdServiceConfig<I>;
    function &End: I;
  end;


//    property cdsRegistroI157: TClientDataSet read FcdsRegistroI157 write SetcdsRegistroI157;
//    property CdsDemonstrativo: TClientDataSet read FCdsDemonstrativo write SetCdsDemonstrativo;
//    property GeraFCont: boolean read FGeraFCont write SetGeraFCont;
//    property cds : TClientDataSet read Fcds write Setcds;
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
//ok    property sPeriodoIni : String read FsPeriodoIni write SetsPeriodoIni;
//ok    property sPeriodoFim : String read FsPeriodoFim write SetsPeriodoFim;
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
//of    property sNomeArquivo : String read FsNomeArquivo write SetsNomeArquivo;
//    property DriverOracle : Boolean read FDriverOracle write SetDriverOracle;
//ok    property iIndicaContabCentralizada  : Integer read FIndicaContabCentralizada write SetIndicaContabCentralizada;
//
//
//ok    property sNomeDiretorio : String read FsNomeDiretorio write SetsNomeDiretorio;
//ok    property sNomeChave : String read FsNomeChave write SetsNomeChave;
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
//ok    property Empresa: Extended read FEmpresa write SetEmpresa;


  IJSEcdServiceConfigAssociacaoPlanoGoverno<I: IInterface> = interface
    ['{E392A08B-64B3-4898-849E-D01D6D4E4C08}']

    function &End: I;
  end;

  IJSEcdServiceConfigGeral<I: IInterface> = interface
    ['{E39B7745-F32A-43E7-9D2D-46629F20BE27}']
    function TipoEscrituracao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorFinalidadeEscrturacao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoIni(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorEmpresaGrandePorte(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function TipoECD(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoEspecial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorExisteNIRE(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicaContabCentralizada(Value: Integer): IJSEcdServiceConfigGeral<I>; overload;

    function TipoEscrituracao: string; overload;
    function IndicadorFinalidadeEscrturacao: string; overload;
    function IndicadorSituacaoIni: string; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro: string; overload;
    function IndicadorEmpresaGrandePorte: string; overload;
    function TipoECD: string; overload;
    function IndicadorSituacaoEspecial: string; overload;
    function IndicadorExisteNIRE: string; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string; overload;
    function IndicaContabCentralizada: Integer; overload;

    function IndicadorSubgrupo(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function Consolidado(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function ConsolidadoSCP(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function EmpresaMatriz(Value: Integer): IJSEcdServiceConfigGeral<I>; overload;

    function IndicadorSubgrupo: string; overload;
    function Consolidado: string; overload;
    function ConsolidadoSCP: string; overload;
    function EmpresaMatriz: Integer; overload;

    function HashEscrituracaoSubstituida(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function NIREEscrituracaoSubst(Value: string): IJSEcdServiceConfigGeral<I>; overload;

    function HashEscrituracaoSubstituida: string; overload;
    function NIREEscrituracaoSubst: string; overload;

    function &End: I;
  end;

  IJSEcdServiceConfigFiscal<I: IInterface> = interface
    ['{AD910218-D340-4B33-ACF9-8E11F9809CB1}']
    function NumeroOrdemInstrumentoEscrituracao(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function NaturezaLivro(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function TipoDocNIRE(Value:  Integer): IJSEcdServiceConfigFiscal<I>; overload;
    function DataArquivamentoAtosConstituitivos(Value: string): IJSEcdServiceConfigFiscal<I>; overload;
    function DataArquivamentoAtoConversao(Value: string): IJSEcdServiceConfigFiscal<I>; overload;

    function NumeroOrdemInstrumentoEscrituracao: string; overload;
    function NaturezaLivro: string; overload;
    function TipoDocNIRE: Integer; overload;
    function DataArquivamentoAtosConstituitivos: string; overload;
    function DataArquivamentoAtoConversao: string; overload;

    function &End: I;
  end;

  IJSEcdServiceConfigSignatario<I: IInterface> = interface
    ['{DB15EF59-2846-405B-9622-E08D2B85A885}']
    function CodigoAssinanteContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CPFSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CRCSignatarioContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EstadoCRCContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function DataValidadeCRCContador(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteContador: string; overload;
    function NomeSignatarioContador: string; overload;
    function CPFSignatarioContador: string; overload;
    function EmailContador: string; overload;
    function TelefoneContador: string; overload;
    function CRCSignatarioContador: string; overload;
    function EstadoCRCContador: string; overload;
    function DataValidadeCRCContador: string; overload;

    function CodigoAssinanteLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CPFSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function UFCRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function DataValidadeCRCSignatarioLegal(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteLegal: string; overload;
    function NomeSignatarioLegal: string; overload;
    function CPFSignatarioLegal: string; overload;
    function EmailSignatarioLegal: string; overload;
    function TelefoneSignatarioLegal: string; overload;
    function CRCSignatarioLegal: string; overload;
    function UFCRCSignatarioLegal: string; overload;
    function DataValidadeCRCSignatarioLegal: string; overload;

    function NomeAuditorIndependente(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function RegistroAuditorIndependenteCVM(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function Doc(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function NomeAuditorIndependente: string; overload;
    function RegistroAuditorIndependenteCVM: string; overload;
    function Doc: string; overload;

    function CodigoAssinanteCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function NomeSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function CNPJSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function EmailSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function TelefoneSignatarioCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;
    function ResponsavelLegalCertificado(Value: string): IJSEcdServiceConfigSignatario<I>; overload;

    function CodigoAssinanteCertificado: string; overload;
    function NomeSignatarioCertificado: string; overload;
    function CNPJSignatarioCertificado: string; overload;
    function EmailSignatarioCertificado: string; overload;
    function TelefoneSignatarioCertificado: string; overload;
    function ResponsavelLegalCertificado: string; overload;

    function &End: I;
  end;

  IJSEcdServiceConfigDemonstracoesContabeis<I: IInterface> = interface
    ['{376B6010-06DE-42F8-9C3F-AD3BC4C02BE9}']
    function DemonstrativoBaseBalancoDescr(Value: string): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseBalanco(Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoBaseDRE(Value: Double): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDLPA(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function LancContabil(Value: Boolean): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function IndicaDLPADMPL(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDFC(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;
    function DemonstrativoDVA(Value: Integer): IJSEcdServiceConfigDemonstracoesContabeis<I>; overload;

    function DemonstrativoBaseBalancoDescr: string; overload;
    function DemonstrativoBaseBalanco: Double; overload;
    function DemonstrativoBaseDRE: Double; overload;
    function DemonstrativoDLPA: Integer; overload;
    function LancContabil: Boolean; overload;
    function IndicaDLPADMPL: Integer; overload;
    function DemonstrativoDFC: Integer; overload;
    function DemonstrativoDVA: Integer; overload;

    function &End: I;
  end;

  IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I: IInterface> = interface
    ['{4E4B2F47-BE4C-480B-9D8B-848FD0D10C55}']

    function &End: I;
  end;

  IJSEcdServiceConfigInfoCadastroParticipante<I: IInterface> = interface
    ['{B255B5FE-194E-4408-95E7-F0B7306C53BF}']
    function AtributoTipoRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataInicioRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function AtributoDataFimRelacionamento(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function TipoDocSUFRAMA(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function IdentificadorTrabalhador(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;
    function InscricaoEstadualContribuinteSubstituto(Value: Integer): IJSEcdServiceConfigInfoCadastroParticipante<I>; overload;

    function AtributoTipoRelacionamento: Integer; overload;
    function AtributoDataInicioRelacionamento: Integer; overload;
    function AtributoDataFimRelacionamento: Integer; overload;
    function TipoDocSUFRAMA: Integer; overload;
    function IdentificadorTrabalhador: Integer; overload;
    function InscricaoEstadualContribuinteSubstituto: Integer; overload;

    function &End: I;
  end;

//FCont ?????
//    property sQualificacaoPessoaJuridica : String read FsQualificacaoPessoaJuridica write SetsQualificacaoPessoaJuridica;
//    property sPeriodoApuracao : String read FsPeriodoApuracao write SetsPeriodoApuracao;
//    property sFormaTributacao : String read FsFormaTributacao write SetsFormaTributacao;

  IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I: IInterface> = interface
    ['{396079DD-4A94-448C-A593-62B8FAC0A712}']

    function &End: I;
  end;

  IJSEcdServiceConfigConglomeradoEconomicos<I: IInterface> = interface
    ['{34ECFAC7-753F-464B-8934-1B6641A5CF72}']

    function &End: I;
  end;

  IJSEcdDAOCollection = interface
    ['{9AE74B34-03FC-4B41-B870-7F3F895F0DD3}']
    function Bloco0: IJSEcdDAOCollectionBloco0;
    function BlocoIParte1: IJSEcdDAOCollectionBlocoIParte1; //I001, I010, I030, I050, I051, I052, I075
    function BlocoIParte2: IJSEcdDAOCollectionBlocoIParte2; //I100, I150, I155, I157
    function BlocoIParte3: IJSEcdDAOCollectionBlocoIParte3; //I200, I250
    function BlocoIParte4: IJSEcdDAOCollectionBlocoIParte4; //I300, I350, I355,
    function BlocoIParte5: IJSEcdDAOCollectionBlocoIParte5; //I500, I510, I555, I990
    function BlocoJ: IJSEcdDAOCollectionBlocoJ;
    function BlocoK: IJSEcdDAOCollectionBlocoK;

    function &Begin: IJSEcdDAOCollection;
    function &End: IJSEcdService;
  end;

  IJSEcdDAOCollectionBloco0 = interface
    ['{CD680FDF-0F05-45FD-826A-6E7FC4EB43FA}']
    function Add0000(Value: IJSEcdDAO0000): IJSEcdDAOCollectionBloco0;
    function Add0007(Value: IJSEcdDAO0007): IJSEcdDAOCollectionBloco0;
    function Add0020(Value: IJSEcdDAO0020): IJSEcdDAOCollectionBloco0;
    function Add0035(Value: IJSEcdDAO0035): IJSEcdDAOCollectionBloco0;
    function Add0150(Value: IJSEcdDAO0150): IJSEcdDAOCollectionBloco0;
    function Add0180(Value: IJSEcdDAO0180): IJSEcdDAOCollectionBloco0;

    function DAO0000: IJSEcdDAO0000;
    function DAO0007: IJSEcdDAO0007;
    function DAO0020: IJSEcdDAO0020;
    function DAO0035: IJSEcdDAO0035;
    function DAO0150: IJSEcdDAO0150;
    function DAO0180: IJSEcdDAO0180;

    function &Begin: IJSEcdDAOCollectionBloco0;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoIParte1 = interface
    ['{4AA323A8-A6C8-44C7-9859-5E459C28B96D}']
    function AddI010(Value: IJSEcdDAOI010): IJSEcdDAOCollectionBlocoIParte1;
    function AddI012(Value: IJSEcdDAOI012): IJSEcdDAOCollectionBlocoIParte1;
    function AddI015(Value: IJSEcdDAOI015): IJSEcdDAOCollectionBlocoIParte1;
    function AddI030(Value: IJSEcdDAOI030): IJSEcdDAOCollectionBlocoIParte1;
    function AddI050(Value: IJSEcdDAOI050): IJSEcdDAOCollectionBlocoIParte1;
    function AddI051(Value: IJSEcdDAOI051): IJSEcdDAOCollectionBlocoIParte1;
    function AddI052(Value: IJSEcdDAOI052): IJSEcdDAOCollectionBlocoIParte1;
    function AddI053(Value: IJSEcdDAOI053): IJSEcdDAOCollectionBlocoIParte1;
    function AddI075(Value: IJSEcdDAOI075): IJSEcdDAOCollectionBlocoIParte1;

    function DAOI010: IJSEcdDAOI010;
    function DAOI012: IJSEcdDAOI012;
    function DAOI015: IJSEcdDAOI015;
    function DAOI030: IJSEcdDAOI030;
    function DAOI050: IJSEcdDAOI050;
    function DAOI051: IJSEcdDAOI051;
    function DAOI052: IJSEcdDAOI052;
    function DAOI053: IJSEcdDAOI053;
    function DAOI075: IJSEcdDAOI075;

    function &Begin: IJSEcdDAOCollectionBlocoIParte1;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoIParte2 = interface
    ['{16D8CC12-1843-41F3-82B4-E916F5F35D43}']
    function AddI100(Value: IJSEcdDAOI100): IJSEcdDAOCollectionBlocoIParte2;
    function AddI150(Value: IJSEcdDAOI150): IJSEcdDAOCollectionBlocoIParte2;
    function AddI155(Value: IJSEcdDAOI155): IJSEcdDAOCollectionBlocoIParte2;
    function AddI157(Value: IJSEcdDAOI157): IJSEcdDAOCollectionBlocoIParte2;

    function DAOI100: IJSEcdDAOI100;
    function DAOI150: IJSEcdDAOI150;
    function DAOI155: IJSEcdDAOI155;
    function DAOI157: IJSEcdDAOI157;

    function &Begin: IJSEcdDAOCollectionBlocoIParte2;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoIParte3 = interface
    ['{7E0D1B5F-39FC-4471-A42C-79A406F5417E}']
    function AddI200(Value: IJSEcdDAOI200): IJSEcdDAOCollectionBlocoIParte3;
    function AddI250(Value: IJSEcdDAOI250): IJSEcdDAOCollectionBlocoIParte3;

    function DAOI200: IJSEcdDAOI200;
    function DAOI250: IJSEcdDAOI250;

    function &Begin: IJSEcdDAOCollectionBlocoIParte3;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoIParte4 = interface
    ['{6F3C1EDD-50FC-4FAA-B464-BB19D15943BE}']
    function AddI350(Value: IJSEcdDAOI350): IJSEcdDAOCollectionBlocoIParte4;
    function AddI355(Value: IJSEcdDAOI355): IJSEcdDAOCollectionBlocoIParte4;

    function DAOI350: IJSEcdDAOI350;
    function DAOI355: IJSEcdDAOI355;

    function &Begin: IJSEcdDAOCollectionBlocoIParte4;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoIParte5 = interface
    ['{DEE0FC97-12E5-49E7-BC1A-9FFD201BCA99}']
    function AddI500(Value: IJSEcdDAOI500): IJSEcdDAOCollectionBlocoIParte5;
    function AddI510(Value: IJSEcdDAOI510): IJSEcdDAOCollectionBlocoIParte5;
    function AddI550(Value: IJSEcdDAOI550): IJSEcdDAOCollectionBlocoIParte5;
    function AddI555(Value: IJSEcdDAOI555): IJSEcdDAOCollectionBlocoIParte5;

    function DAOI500: IJSEcdDAOI500;
    function DAOI510: IJSEcdDAOI510;
    function DAOI550: IJSEcdDAOI550;
    function DAOI555: IJSEcdDAOI555;

    function &Begin: IJSEcdDAOCollectionBlocoIParte5;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoJ = interface
    ['{94B262D7-99F8-4E7F-AC90-A673E7623A6E}']
    function AddJ005(Value: IJSEcdDAOJ005): IJSEcdDAOCollectionBlocoJ;
    function AddJ100(Value: IJSEcdDAOJ100): IJSEcdDAOCollectionBlocoJ;
    function AddJ150(Value: IJSEcdDAOJ150): IJSEcdDAOCollectionBlocoJ;
    function AddJ210(Value: IJSEcdDAOJ210): IJSEcdDAOCollectionBlocoJ;
    function AddJ215(Value: IJSEcdDAOJ215): IJSEcdDAOCollectionBlocoJ;
    function AddJ800(Value: IJSEcdDAOJ800): IJSEcdDAOCollectionBlocoJ;
    function AddJ900(Value: IJSEcdDAOJ900): IJSEcdDAOCollectionBlocoJ;
    function AddJ930(Value: IJSEcdDAOJ930): IJSEcdDAOCollectionBlocoJ;
    function AddJ935(Value: IJSEcdDAOJ935): IJSEcdDAOCollectionBlocoJ;

    function DAOJ005: IJSEcdDAOJ005;
    function DAOJ100: IJSEcdDAOJ100;
    function DAOJ150: IJSEcdDAOJ150;
    function DAOJ210: IJSEcdDAOJ210;
    function DAOJ215: IJSEcdDAOJ215;
    function DAOJ800: IJSEcdDAOJ800;
    function DAOJ900: IJSEcdDAOJ900;
    function DAOJ930: IJSEcdDAOJ930;
    function DAOJ935: IJSEcdDAOJ935;

    function &Begin: IJSEcdDAOCollectionBlocoJ;
    function &End: IJSEcdDAOCollection;
  end;

  IJSEcdDAOCollectionBlocoK = interface
    ['{3BA7AC43-29EA-4B3A-A3E6-42D69AA36B62}']
    function AddK030(Value: IJSEcdDAOK030): IJSEcdDAOCollectionBlocoK;
    function AddK100(Value: IJSEcdDAOK100): IJSEcdDAOCollectionBlocoK;
    function AddK200(Value: IJSEcdDAOK200): IJSEcdDAOCollectionBlocoK;
    function AddK210(Value: IJSEcdDAOK210): IJSEcdDAOCollectionBlocoK;

    function DAOK030: IJSEcdDAOK030;
    function DAOK100: IJSEcdDAOK100;
    function DAOK200: IJSEcdDAOK200;
    function DAOK210: IJSEcdDAOK210;

    function &Begin: IJSEcdDAOCollectionBlocoK;
    function &End: IJSEcdDAOCollection;
  end;

function EcdServiceFactory: IJSEcdServiceFactory;
function EcdService: IJSEcdService;

implementation

uses
  JSEcd.Service.Factory;

function EcdService: IJSEcdService;
begin
  result := EcdServiceFactory.createService;
end;

function EcdServiceFactory: IJSEcdServiceFactory;
begin
  Result := TJSEcdServiceFactory.New;
end;

end.

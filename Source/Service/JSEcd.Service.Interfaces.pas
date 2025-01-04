unit JSEcd.Service.Interfaces;

interface

uses
  JSEcd.DAO.Interfaces,
  System.Classes;

type
  IJSEcdServiceConfig<I: IInterface> = interface;

  IJSEcdServiceDAOCollection = interface;
  IJSEcdServiceDAOCollectionBloco0 = interface;
  IJSEcdServiceDAOCollectionBlocoIParte1 = interface;
  IJSEcdServiceDAOCollectionBlocoIParte2 = interface;
  IJSEcdServiceDAOCollectionBlocoIParte3 = interface;
  IJSEcdServiceDAOCollectionBlocoIParte4 = interface;
  IJSEcdServiceDAOCollectionBlocoIParte5 = interface;
  IJSEcdServiceDAOCollectionBlocoJ = interface;
  IJSEcdServiceDAOCollectionBlocoK = interface;

  IJSEcdService = interface
    ['{54799BF0-B207-429D-B881-5E7630AE663F}']
    function Config: IJSEcdServiceConfig<IJSEcdService>;
    function DAO: IJSEcdServiceDAOCollection;
    function Execute: IJSEcdService;
  end;

  IJSEcdServiceFactory = interface
    ['{7582C76F-AC95-4F4B-92D7-108497A3798A}']
    function createService: IJSEcdService;
  end;

  IJSEcdServiceConfigAssociacaoPlanoGoverno<I: IInterface> = interface
    ['{E697FF5B-5079-4ABD-B984-C43041F65A68}']

    function &End: I;
  end;

  IJSEcdServiceConfigGeral<I: IInterface> = interface
    ['{67971BBA-4494-4580-AC1C-86EE20D86DBB}']
    function TipoEscrituracao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorFinalidadeEscrturacao(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoIni(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorEmpresaGrandePorte(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function TipoECD(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorSituacaoEspecial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicadorExisteNIRE(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial(Value: string): IJSEcdServiceConfigGeral<I>; overload;
    function IndicaContabCentralizada(Value: string): IJSEcdServiceConfigGeral<I>; overload;

    function TipoEscrituracao: string; overload;
    function IndicadorFinalidadeEscrturacao: string; overload;
    function IndicadorSituacaoIni: string; overload;
    function CodigoInstituicaoResponsavelAdministracaoCadastro: string; overload;
    function IndicadorEmpresaGrandePorte: string; overload;
    function TipoECD: string; overload;
    function IndicadorSituacaoEspecial: string; overload;
    function IndicadorExisteNIRE: string; overload;
    function CodigoEntidadeResponsavelManutencaoPlanoContasReferencial: string; overload;
    function IndicaContabCentralizada: string; overload;

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
    ['{944BF2AB-70E9-4B55-B4AF-BEC035C4A926}']
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
    ['{28D6730C-58F0-4955-A981-B217561107A0}']
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
    ['{D88AEEE2-55C0-413C-A2C9-1FFC37D72393}']
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
    ['{4DC66D49-195E-42A9-89B3-1988A791F1CB}']

    function &End: I;
  end;

  IJSEcdServiceConfigInfoCadastroParticipante<I: IInterface> = interface
    ['{4D8234D5-D4E3-4DFE-8429-BC6E194F4D23}']
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

  IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I: IInterface> = interface
    ['{D48370BB-C6CA-4BAE-B189-13FAAFED7EBE}']

    function &End: I;
  end;

  IJSEcdServiceConfigConglomeradoEconomicos<I: IInterface> = interface
    ['{135AC93E-048B-4315-9D79-A7E87FFD0750}']

    function &End: I;
  end;

  IJSEcdServiceConfig<I: IInterface> = interface
    ['{1493FF17-2C0F-4D91-8009-C44FB22F4874}']
    function Empresa(Value: Extended): IJSEcdServiceConfig<I>; overload;
    function Exercicio(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoInicial(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function PeriodoFinal(Value: Integer): IJSEcdServiceConfig<I>; overload;
    function DataInicial(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function DataFinal(Value: TDateTime): IJSEcdServiceConfig<I>; overload;
    function NomeDiretorio(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeChave(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivo(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBloco0(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte1(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte2(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_1Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_2Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_3Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte3_4Tri(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte4(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoIParte5(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoJ(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBlocoK(Value: string): IJSEcdServiceConfig<I>; overload;
    function NomeArquivoBloco9(Value: string): IJSEcdServiceConfig<I>; overload;

    function Empresa: Extended; overload;
    function Exercicio: Integer; overload;
    function PeriodoInicial: Integer; overload;
    function PeriodoFinal: Integer; overload;
    function DataInicial: TDateTime; overload;
    function DataFinal: TDateTime; overload;
    function NomeDiretorio: string; overload;
    function NomeChave: string; overload;
    function NomeArquivo: string; overload;
    function NomeArquivoBloco0: string; overload;
    function NomeArquivoBlocoIParte1: string; overload;
    function NomeArquivoBlocoIParte2: string; overload;
    function NomeArquivoBlocoIParte3_1Tri: string; overload;
    function NomeArquivoBlocoIParte3_2Tri: string; overload;
    function NomeArquivoBlocoIParte3_3Tri: string; overload;
    function NomeArquivoBlocoIParte3_4Tri: string; overload;
    function NomeArquivoBlocoIParte4: string; overload;
    function NomeArquivoBlocoIParte5: string; overload;
    function NomeArquivoBlocoJ: string; overload;
    function NomeArquivoBlocoK: string; overload;
    function NomeArquivoBloco9: string; overload;

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



//FCont ?????
//    property sQualificacaoPessoaJuridica : String read FsQualificacaoPessoaJuridica write SetsQualificacaoPessoaJuridica;
//    property sPeriodoApuracao : String read FsPeriodoApuracao write SetsPeriodoApuracao;
//    property sFormaTributacao : String read FsFormaTributacao write SetsFormaTributacao;

  IJSEcdServiceDAOCollection = interface
    ['{B958D1EA-6BF1-4A87-AE1D-6BCCF0CCF0E6}']
    function Bloco0: IJSEcdServiceDAOCollectionBloco0;
    function BlocoIParte1: IJSEcdServiceDAOCollectionBlocoIParte1;
    function BlocoIParte2: IJSEcdServiceDAOCollectionBlocoIParte2;
    function BlocoIParte3: IJSEcdServiceDAOCollectionBlocoIParte3;
    function BlocoIParte4: IJSEcdServiceDAOCollectionBlocoIParte4;
    function BlocoIParte5: IJSEcdServiceDAOCollectionBlocoIParte5;
    function BlocoJ: IJSEcdServiceDAOCollectionBlocoJ;
    function BlocoK: IJSEcdServiceDAOCollectionBlocoK;

    function &Begin: IJSEcdServiceDAOCollection;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceDAOCollectionBloco0 = interface
    ['{89EF9564-2198-4A11-99BA-41F89347C1AF}']
    function Add0000(Value: IJSEcdDAO0000): IJSEcdServiceDAOCollectionBloco0;
    function Add0007(Value: IJSEcdDAO0007): IJSEcdServiceDAOCollectionBloco0;
    function Add0020(Value: IJSEcdDAO0020): IJSEcdServiceDAOCollectionBloco0;
    function Add0035(Value: IJSEcdDAO0035): IJSEcdServiceDAOCollectionBloco0;
    function Add0150(Value: IJSEcdDAO0150): IJSEcdServiceDAOCollectionBloco0;
    function Add0180(Value: IJSEcdDAO0180): IJSEcdServiceDAOCollectionBloco0;

    function DAO0000: IJSEcdDAO0000;
    function DAO0007: IJSEcdDAO0007;
    function DAO0020: IJSEcdDAO0020;
    function DAO0035: IJSEcdDAO0035;
    function DAO0150: IJSEcdDAO0150;
    function DAO0180: IJSEcdDAO0180;

    function &Begin: IJSEcdServiceDAOCollectionBloco0;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoIParte1 = interface
    ['{D66946C8-C1E0-4306-90E6-A4330A2DA1B4}']
    function AddI010(Value: IJSEcdDAOI010): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI012(Value: IJSEcdDAOI012): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI015(Value: IJSEcdDAOI015): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI030(Value: IJSEcdDAOI030): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI050(Value: IJSEcdDAOI050): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI051(Value: IJSEcdDAOI051): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI052(Value: IJSEcdDAOI052): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI053(Value: IJSEcdDAOI053): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI075(Value: IJSEcdDAOI075): IJSEcdServiceDAOCollectionBlocoIParte1;

    function DAOI010: IJSEcdDAOI010;
    function DAOI012: IJSEcdDAOI012;
    function DAOI015: IJSEcdDAOI015;
    function DAOI030: IJSEcdDAOI030;
    function DAOI050: IJSEcdDAOI050;
    function DAOI051: IJSEcdDAOI051;
    function DAOI052: IJSEcdDAOI052;
    function DAOI053: IJSEcdDAOI053;
    function DAOI075: IJSEcdDAOI075;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte1;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoIParte2 = interface
    ['{5720B50E-B5FD-4F72-B44B-5C6E77A72B6D}']
    function AddI100(Value: IJSEcdDAOI100): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI150(Value: IJSEcdDAOI150): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI155(Value: IJSEcdDAOI155): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI157(Value: IJSEcdDAOI157): IJSEcdServiceDAOCollectionBlocoIParte2;

    function DAOI100: IJSEcdDAOI100;
    function DAOI150: IJSEcdDAOI150;
    function DAOI155: IJSEcdDAOI155;
    function DAOI157: IJSEcdDAOI157;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte2;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoIParte3 = interface
    ['{796F589E-9C3D-44E3-8F0D-6E16915AB980}']
    function AddI200(Value: IJSEcdDAOI200): IJSEcdServiceDAOCollectionBlocoIParte3;
    function AddI250(Value: IJSEcdDAOI250): IJSEcdServiceDAOCollectionBlocoIParte3;

    function DAOI200: IJSEcdDAOI200;
    function DAOI250: IJSEcdDAOI250;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte3;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoIParte4 = interface
    ['{265EF637-AD9A-42E9-8176-F5EA0CC98616}']
    function AddI350(Value: IJSEcdDAOI350): IJSEcdServiceDAOCollectionBlocoIParte4;
    function AddI355(Value: IJSEcdDAOI355): IJSEcdServiceDAOCollectionBlocoIParte4;

    function DAOI350: IJSEcdDAOI350;
    function DAOI355: IJSEcdDAOI355;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte4;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoIParte5 = interface
    ['{FFD1ED95-6DBE-46A9-BF8F-AC806F5FCAB1}']
    function AddI500(Value: IJSEcdDAOI500): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI510(Value: IJSEcdDAOI510): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI550(Value: IJSEcdDAOI550): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI555(Value: IJSEcdDAOI555): IJSEcdServiceDAOCollectionBlocoIParte5;

    function DAOI500: IJSEcdDAOI500;
    function DAOI510: IJSEcdDAOI510;
    function DAOI550: IJSEcdDAOI550;
    function DAOI555: IJSEcdDAOI555;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte5;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoJ = interface
    ['{0438196B-BB81-4F90-9631-9B414688BD74}']
    function AddJ005(Value: IJSEcdDAOJ005): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ100(Value: IJSEcdDAOJ100): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ150(Value: IJSEcdDAOJ150): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ210(Value: IJSEcdDAOJ210): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ215(Value: IJSEcdDAOJ215): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ800(Value: IJSEcdDAOJ800): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ900(Value: IJSEcdDAOJ900): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ930(Value: IJSEcdDAOJ930): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ935(Value: IJSEcdDAOJ935): IJSEcdServiceDAOCollectionBlocoJ;

    function DAOJ005: IJSEcdDAOJ005;
    function DAOJ100: IJSEcdDAOJ100;
    function DAOJ150: IJSEcdDAOJ150;
    function DAOJ210: IJSEcdDAOJ210;
    function DAOJ215: IJSEcdDAOJ215;
    function DAOJ800: IJSEcdDAOJ800;
    function DAOJ900: IJSEcdDAOJ900;
    function DAOJ930: IJSEcdDAOJ930;
    function DAOJ935: IJSEcdDAOJ935;

    function &Begin: IJSEcdServiceDAOCollectionBlocoJ;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceDAOCollectionBlocoK = interface
    ['{DF545E5F-7E01-4FDD-9D09-5D8DB46BBD91}']
    function AddK030(Value: IJSEcdDAOK030): IJSEcdServiceDAOCollectionBlocoK;
    function AddK100(Value: IJSEcdDAOK100): IJSEcdServiceDAOCollectionBlocoK;
    function AddK200(Value: IJSEcdDAOK200): IJSEcdServiceDAOCollectionBlocoK;
    function AddK210(Value: IJSEcdDAOK210): IJSEcdServiceDAOCollectionBlocoK;

    function DAOK030: IJSEcdDAOK030;
    function DAOK100: IJSEcdDAOK100;
    function DAOK200: IJSEcdDAOK200;
    function DAOK210: IJSEcdDAOK210;

    function &Begin: IJSEcdServiceDAOCollectionBlocoK;
    function &End: IJSEcdServiceDAOCollection;
  end;

  IJSEcdServiceBloco0 = interface
    ['{E64065EA-BABB-4E42-9291-435930B578E6}']
    function Execute: IJSEcdServiceBloco0;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoIParte1 = interface
    ['{B01EBF93-77AF-43D3-AE05-3D1311DBC69F}']
    function Execute: IJSEcdServiceBlocoIParte1;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoIParte2 = interface
    ['{0CD539B5-53EC-4638-9503-488859F791FC}']
    function Execute: IJSEcdServiceBlocoIParte2;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoIParte3 = interface
    ['{B4F9793C-B3FF-4524-AF88-CC3C950E19DC}']
    function Execute: IJSEcdServiceBlocoIParte3;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoIParte4 = interface
    ['{2147D9C1-CA01-42E7-8B86-E5FDBBEE35F5}']
    function Execute: IJSEcdServiceBlocoIParte4;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoIParte5 = interface
    ['{490D8AE1-EA7C-4662-B880-500565694B61}']
    function Execute: IJSEcdServiceBlocoIParte5;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoJ = interface
    ['{DDEC04C5-8EE9-4F43-BB52-36E8A99A9114}']
    function Execute: IJSEcdServiceBlocoJ;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBlocoK = interface
    ['{86EC2CD6-7ED6-4E36-9E86-FC2903843B2F}']
    function Execute: IJSEcdServiceBlocoK;
    function &End: IJSEcdService;
  end;

  IJSEcdServiceBloco9 = interface
    ['{10416F83-66F2-4D00-AE32-D3C79C124607}']
    function Execute: IJSEcdServiceBloco9;
    function &End: IJSEcdService;
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

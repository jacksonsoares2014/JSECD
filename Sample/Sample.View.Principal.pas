unit Sample.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  JSEcd.Service.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Ecd: IJSEcdService;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  JSEcd.DAO.Classes;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Ecd := EcdService;
  Ecd
    .Config
      .DataInicial(StrToDate('01/01/2023'))
      .DataFinal(StrToDate('31/12/2023'))
      .Empresa(1)
      .NomeDiretorio('C:\Temp\JSECD\Sample')
      .NomeArquivo('C:\Temp\JSECD\Sample\ECD_REFATORADO.TXT')
      .Geral
        .TipoECD('0')
        .IndicadorEmpresaGrandePorte('0')
        .IndicadorSituacaoEspecial('')
        .IndicadorSituacaoIni('3')
        .IndicadorExisteNIRE('1')
        .IndicadorFinalidadeEscrturacao('1')
        .HashEscrituracaoSubstituida('')
        .CodigoEntidadeResponsavelManutencaoPlanoContasReferencial('1')
        .IndicaContabCentralizada('0')
        .TipoEscrituracao('G')
      .&End
    .&End;

  Ecd
    .DAO
      .Bloco0
        .Add0000(TJSEcdDAORegistro0000.New)
      .&End;

  Ecd
    .DAO
      .BlocoIParte1
        .AddI050(TJSEcdDAORegistroI050.New)
        .AddI051(TJSEcdDAORegistroI051.New)
        .AddI052(TJSEcdDAORegistroI052.New)
        .AddI075(TJSEcdDAORegistroI075.New)
      .&End;

  Ecd
    .DAO
      .BlocoIParte2
        .AddI100(TJSEcdDAORegistroI100.New)
        .AddI150(TJSEcdDAORegistroI150.New)
        .AddI155(TJSEcdDAORegistroI155.New)
        .AddI157(TJSEcdDAORegistroI157.New)
      .&End;

  Ecd.Execute;
end;

end.

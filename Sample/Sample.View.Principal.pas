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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Ecd := EcdService;
  Ecd
    .Config
      .Geral
        .TipoECD('0')
        .IndicadorEmpresaGrandePorte('0')
        .IndicadorSituacaoEspecial('')
        .IndicadorSituacaoIni('3')
        .IndicadorExisteNIRE('1')
        .IndicadorFinalidadeEscrturacao('0')
        .HashEscrituracaoSubstituida('')
        .CodigoEntidadeResponsavelManutencaoPlanoContasReferencial('1')
        .IndicaContabCentralizada('0')
      .&End
      .DataInicial(StrToDate('01/01/2023'))
      .DataFinal(StrToDate('31/12/2023'))
      .Empresa(1)
      .NomeDiretorio('C:\Temp\JSECD\Sample')
      .NomeArquivo('C:\Temp\JSECD\Sample\ECD_REFATORADO.TXT')
    .&End;

  Ecd.Execute;
end;

end.

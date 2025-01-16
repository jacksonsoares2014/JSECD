unit Sample.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  JSEcd.Service.Interfaces, System.Threading;

type
  TForm1 = class(TForm)
    Button1: TButton;
    lblTempoGeracao: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Ecd: IJSEcdService;
    procedure ConfiguraEcd;
    procedure ConfiguraDAOBloco0;
    procedure ConfiguraDAOBlocoI;
    procedure ConfiguraDAOBlocoJ;
    procedure ConfiguraDAOBlocoK;
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
var
  start: TDateTime;
  &end : TDateTime;
begin
  ConfiguraEcd;

  TTask.Run(
    procedure
    begin
      lblTempoGeracao.Visible := False;
      Self.Enabled := False;
      try
        start := Now;
        try
          Ecd.Execute;
        except
          on e: exception do
            Showmessage(e.message);
        end;
        &end := Now;
      finally
        lblTempoGeracao.Caption := Format('Tempo de Geração: %s',[FormatDateTime('hh:mm:ss', &end-start)]);
        lblTempoGeracao.Visible := True;
        Self.Enabled := True;
        Ecd := nil;
      end;
    end);
end;

procedure TForm1.ConfiguraDAOBloco0;
begin
  Ecd
    .DAO
      .Bloco0
        .Add0000(TJSEcdDAORegistro0000.New)
      .&End;
end;

procedure TForm1.ConfiguraDAOBlocoI;
begin
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

  Ecd
    .DAO
      .BlocoIParte3
        .AddI200(TJSEcdDAORegistroI200.New)
        .AddI250(TJSEcdDAORegistroI250.New)
      .&End;

  Ecd
    .DAO
      .BlocoIParte4
        .AddI350(TJSEcdDAORegistroI350.New)
        .AddI355(TJSEcdDAORegistroI355.New)
      .&End;
end;

procedure TForm1.ConfiguraDAOBlocoJ;
begin
  Ecd
    .DAO
      .BlocoJ
        .AddJ100(TJSEcdDAORegistroJ100.New)
        .AddJ150(TJSEcdDAORegistroJ150.New)
        .AddJ930(TJSEcdDAORegistroJ930.New)
      .&End;
end;

procedure TForm1.ConfiguraDAOBlocoK;
begin

end;

procedure TForm1.ConfiguraEcd;
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
        .Consolidado('CONSOLIDADO MATRIZ E FILIAL')
        .TipoEscrituracao('G')
      .&End
    .&End;

  ConfiguraDAOBloco0;
  ConfiguraDAOBlocoI;
  ConfiguraDAOBlocoJ;
  ConfiguraDAOBlocoK;
end;

end.

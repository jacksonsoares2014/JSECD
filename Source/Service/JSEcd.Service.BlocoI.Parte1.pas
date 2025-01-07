unit JSEcd.Service.BlocoI.Parte1;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte1 = class(TInterfacedObject, IJSEcdServiceBlocoIParte1)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure GerarI010;
    procedure GerarI012;
    procedure GerarI015;
    procedure GerarI020;
    procedure GerarI030;
    procedure GerarI050;
    procedure GerarI051;
    procedure GerarI052;
    procedure GerarI053;
    procedure GerarI075;
  public
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
  end;

implementation

{ TJSEcdServiceBlocoIParte1 }

function TJSEcdServiceBlocoIParte1.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte1.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte1.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte1.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte1.Execute: TStringList;
begin
  try
    GerarI010;
    Result := FArquivo;
  except
    on e: Exception do
    begin
      FreeAndNil(FArquivo);
//      OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
      Raise;
    end;
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI010;
var
  RegI010: TJSEcdModelRegistroI010;
begin
  RegI010 := TJSEcdModelRegistroI010.create;
  try
    RegI010.indEsc.FromString(FEcdService.Config.Geral.TipoEscrituracao);
    RegI010.codVerLc := '9.00';
    AdicionaLinhaEcd(RegI010);

    case RegI010.indEsc of
      ieLivroDiarioResumido,
      ieLivroDiarioAuxiliar,
      ieRazaoAuxiliar: GerarI012;
    end;

    GerarI020; //Não Implementado
    GerarI030;
    GerarI050;
    GerarI075;
  finally
    FreeAndNil(RegI010);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI012;
var
  DAO: IJSEcdDAOI012;
  ListI012: TObjectList<TJSEcdModelRegistroI012>;
  RegI012: TJSEcdModelRegistroI012;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI012 := TJSEcdModelRegistroI012.create;
//  DAO := FEcdService.DAO.BlocoIParte1.DAOI012;
//  ListI012 := DAO.List;
//
  try
//    for RegI012 in ListI012 do
//    begin
//      AdicionaLinhaEcd(RegI012);
//      GerarI015;
//    end;
    RegI012.numOrd := 1;
    RegI012.natLivr := 'Teste';
    RegI012.tipo := tlaDigital;
    AdicionaLinhaEcd(RegI012);
    GerarI015;
  finally
    FreeAndNil(RegI012);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI015;
var
  RegI015: TJSEcdModelRegistroI015;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI015 := TJSEcdModelRegistroI015.create;
  try
    RegI015.codCtaRes := '1.1.1';
    AdicionaLinhaEcd(RegI015);
  finally
    FreeAndNil(RegI015);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI020;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI030;
var
  RegI030: TJSEcdModelRegistroI030;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI030 := TJSEcdModelRegistroI030.create;
  try
    RegI030.dnrcAbert := 'TERMO DE ABERTURA';
    RegI030.numOrd := 333;
    RegI030.natLivr := 'livro diaro';
    RegI030.qtdLin := -1;
    RegI030.nome := 'TRANSAMERICA DE HOTEIS NORDESTE LTDA';
    RegI030.nire := '13432810000169';
    RegI030.cnpj := '29203275327';
    RegI030.dtArq := Date;
    RegI030.dtArqConv := Date;
    RegI030.descMun := 'Una';
    RegI030.dtExSocial := FEcdService.Config.DataFinal;
    AdicionaLinhaEcd(RegI030);
{
|I030|TERMO DE ABERTURA|333|livro diaro|489066|TRANSAMERICA DE HOTEIS NORDESTE LTDA|
29203275327|13432810000169|03112005|03112005|Una|31122023|
|I050|01082023|01|S|1|1||ATIVO|
|I050|01082023|01|S|2|11|1|ATIVO CIRCULANTE|
|I050|01082023|01|S|3|111|11|DISPONIBILIDADES|
|I050|01082023|01|S|4|11101|111|CAIXA GERAL|
|I050|01082023|01|A|5|11101001|11101|CAIXA FUNDO FIXO - TESOURARIA GERAL|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101002|11101|CAIXA FUNDO FIXO - COMPRAS SP|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101005|11101|CAIXA FUNDO FIXO - RH|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101007|11101|CAIXA FUNDO FIXO - TRANSPORTE|
|I051||1.01.01.01.01|
|I052||18002550|
|I050|01082023|01|A|5|11101008|11101|NUMERARIOS EM TRANSITO|
|I051||1.01.01.04.01|
|I052||18002550|
|I050|01082023|01|S|4|11102|111|BANCOS CONTA MOVIMENTO|
|I050|01082023|01|A|5|11102001|11102|BANCO BRADESCO|
|I051||1.01.01.02.01|
|I052||18002551|
|I050|01082023|01|A|5|11102002|11102|BANCO SANTANDER|
|I051||1.01.01.02.01|
|I052||18002551|
}

  finally
    FreeAndNil(RegI030);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI050;
begin
  GerarI051;
  GerarI052;
  GerarI053;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI051;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI052;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI053;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI075;
begin

end;

class function TJSEcdServiceBlocoIParte1.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
begin
  Result := Self.Create(Parent);
end;

end.
